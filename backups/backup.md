## to store backups

-- CREAR ESQUEMA Y TABLAS --
-- DROP SCHEMA IF EXIST los_artesanos_; --
CREATE DATABASE los_artesanos_;
USE los_artesanos_;
CREATE TABLE tabla_artesanos (
ID_Art INT PRIMARY KEY AUTO_INCREMENT
, Nombre_Art VARCHAR(100) 
, Apellido_Art VARCHAR(100) 
, Calle_Art VARCHAR(50)
, Numero_Art VARCHAR(50)
, Codigo_Postal_Art VARCHAR(50)
, Comuna_Art VARCHAR(100) 
, Region_Art VARCHAR(100) 
, Ciudad_Art VARCHAR(100) 
, Telefono_Art VARCHAR(100) 
, Email_Art VARCHAR(100)
);

CREATE TABLE tabla_productos (
ID_Prod INT PRIMARY KEY AUTO_INCREMENT
, ID_Cat INT
, ID_Puesto TINYINT
, Nombre_Prod VARCHAR(100)
, Moneda VARCHAR(100)
, Precio_Prod DOUBLE 
, Stock_Prod INT 
);

CREATE TABLE tabla_categorias (
ID_Cat INT PRIMARY KEY AUTO_INCREMENT
, Nombre_Cat VARCHAR(100)
);

CREATE TABLE tabla_puestos (
ID_Puesto TINYINT PRIMARY KEY AUTO_INCREMENT
, ID_Art INT
, ID_Estruct TINYINT
, Nombre_Puesto VARCHAR(100)
);

CREATE TABLE tabla_venta (
ID_Vta MEDIUMINT PRIMARY KEY AUTO_INCREMENT
, Fecha_Hora datetime DEFAULT NULL
, Precio_vta mediumint DEFAULT NULL
, articulos_vendidos_vta int DEFAULT NULL
, ID_Art int DEFAULT NULL
, ID_Estruct tinyint DEFAULT NULL
, ID_Puesto TINYINT
, Nombre_Puesto varchar(100) DEFAULT NULL
);

CREATE TABLE tabla_estructura (
ID_Estruct TINYINT PRIMARY KEY
, Sector_Estruct ENUM("A","B","C","D","E")
);

CREATE TABLE tabla_boleta (
  ID_Boleta int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ID_Vta mediumint NOT NULL,
  ID_Prod int DEFAULT NULL,
  Precio_Prod double DEFAULT NULL,
  Unidad_Prod tinyint DEFAULT NULL
  );

CREATE TABLE auditoria (
  ID_Auditoria int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Accion varchar(50) DEFAULT NULL,
  Usuario varchar(20) DEFAULT NULL,
  Fecha_Hora datetime DEFAULT NULL,
  Observacion text,
  Campo_Anterior varchar(50) DEFAULT NULL,
  Campo_Nuevo varchar(50) DEFAULT NULL
  );
  
CREATE TABLE tabla_factura (
  ID_VtA mediumint DEFAULT NULL,
  Total_vta double DEFAULT NULL  
);
  
-- SUBIR BASES DE DATOS CSV --
-- UNIR CLAVES FORANEAS --

ALTER TABLE tabla_boleta 
ADD CONSTRAINT FK_BOLETA_PRODUCTO
FOREIGN KEY (ID_Prod) REFERENCES tabla_productos(ID_Prod)
;

ALTER TABLE tabla_boleta 
ADD CONSTRAINT FK_BOLETA_VTA
FOREIGN KEY (ID_Vta) REFERENCES tabla_venta(ID_Vta)
;

ALTER TABLE tabla_productos 
ADD CONSTRAINT FK_PRODUCTOS_CATEGORIAS
FOREIGN KEY (ID_Cat) REFERENCES tabla_categorias(ID_Cat)
;

ALTER TABLE tabla_productos 
ADD CONSTRAINT FK_PRODUCTOS_PUESTOS
FOREIGN KEY (ID_Puesto) REFERENCES tabla_puestos(ID_Puesto)
;

ALTER TABLE tabla_puestos 
ADD CONSTRAINT FK_PUESTOS_ESTRUCTURA
FOREIGN KEY (ID_Estruct) REFERENCES tabla_estructura(ID_Estruct)
;

ALTER TABLE tabla_puestos 
ADD CONSTRAINT FK_PUESTOS_ARTESANOS
FOREIGN KEY (ID_Art) REFERENCES tabla_artesanos(ID_Art)
;

ALTER TABLE tabla_venta
ADD CONSTRAINT FK_VENTA_ARTESANO
FOREIGN KEY (ID_Art) REFERENCES tabla_artesanos(ID_Art)
;

ALTER TABLE tabla_venta
ADD CONSTRAINT FK_VENTA_ESTRUCTURA
FOREIGN KEY (ID_Estruct) REFERENCES tabla_estructura(ID_Estruct)
;

ALTER TABLE tabla_venta
ADD CONSTRAINT FK_VENTA_PUESTO
FOREIGN KEY (ID_Puesto) REFERENCES tabla_puestos(ID_Puesto)
;

-- CREAR VISTAS --

CREATE OR REPLACE VIEW NOMBRE_EN_MINUSCULA_DEL_PRODUCTO AS 
SELECT 
LCASE(Nombre_Prod ) AS "Nombre Producto" 
FROM tabla_productos;

CREATE OR REPLACE VIEW NOMBRE_EN_MAYUSCULA_DEL_PRODUCTO AS 
SELECT 
UCASE(Nombre_Prod ) AS "Nombre Producto" 
FROM tabla_productos;

CREATE OR REPLACE VIEW LARGO_DEL_NOMBRE_DEL_PRODUCTO AS 
SELECT 
length(Nombre_Prod ) AS "Largo Nombre Producto" 
FROM tabla_productos;

CREATE OR REPLACE VIEW NUMERO_DE_ARTESANOS AS 
SELECT 
COUNT(Nombre_Art) AS "Cantidad de Artesanos" 
FROM tabla_artesanos;

CREATE OR REPLACE VIEW CIUDAD_DE_ARTESANOS AS 
SELECT 
DISTINCT(Ciudad_Art) AS "Ciudad de Artesanos" 
FROM tabla_artesanos;

CREATE OR REPLACE VIEW ARTESANOS_POR_REGION AS 
SELECT 
Region_Art AS "Region de Artesanos"
,COUNT(0) AS "Total_Artesanos"
FROM tabla_artesanos
GROUP BY Region_Art;

CREATE OR REPLACE VIEW PRODUCTOS_POR_CATEGORIA AS 
SELECT 
c.Nombre_Cat AS Nombre_Cat
,COUNT(p.ID_Prod) AS TotalProductos 
FROM tabla_categorias c 
JOIN tabla_productos p 
ON c.ID_Cat = p.ID_Cat
GROUP BY c.Nombre_Cat;

CREATE OR REPLACE VIEW TOP_10_VENTAS AS 
SELECT 
ID_Art AS ID_Art
, DAYOFMONTH(Fecha_Hora) AS "Dia"
, HOUR(tabla_venta.Fecha_Hora) AS "Hora"
,SUM(articulos_vendidos_vta*precio_vta) AS "Total_Ventas"
FROM tabla_venta
GROUP BY ID_Art,Dia,Hora
ORDER BY Total_Ventas DESC LIMIT 10;

-- PROBAR VISTAS --

/*SELECT * FROM NOMBRE_EN_MINUSCULA_DEL_PRODUCTO;
SELECT * FROM NOMBRE_EN_MAYUSCULA_DEL_PRODUCTO;
SELECT * FROM LARGO_DEL_NOMBRE_DEL_PRODUCTO;
SELECT * FROM NUMERO_DE_ARTESANOS;
SELECT * FROM CIUDAD_DE_ARTESANOS;
SELECT * FROM ARTESANOS_POR_REGION;
SELECT * FROM PRODUCTOS_POR_CATEGORIA;
SELECT * FROM TOP_10_VENTAS;*/

-- FUNCIONES  ------------------------------------------------------------------------------------------

DELIMITER //
CREATE FUNCTION fn_buscar_artesano(p_id int)
RETURNS varchar(50)
DETERMINISTIC
BEGIN
	DECLARE nombre_artesano varchar(50);
		SELECT Nombre_Art INTO nombre_artesano FROM tabla_artesanos WHERE ID_Art=p_id;
RETURN nombre_artesano;
END //
DELIMITER ;

/*-- PARA PROBAR LA FUNCION -------
SELECT fn_buscar_artesano("23") AS "NombreDelArtesano";*/

DELIMITER // 
CREATE FUNCTION fn_buscar_email(p_dato VARCHAR(50))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE email VARCHAR(50);
    DECLARE consulta VARCHAR(20);
    SET consulta= concat('%', p_dato,'%');
    
		SELECT 
    Email_Art
INTO email FROM
    tabla_artesanos
WHERE
    Email_Art LIKE consulta;
	RETURN email;
END //
DELIMITER ;
/*-- PARA PROBAR LA FUNCION -------
SELECT fn_buscar_email("guillai") AS "CorreoDelArtesano";*/

-- STORED PROCEDURES  -----------------------------------------------------------------------

/*-- DROP PROCEDURE sp_IVA;*/
-- Calcular el IVA que incluye un producto -- 

DELIMITER //
CREATE PROCEDURE sp_IVA(in n_prod varchar(50), in iva decimal(3,2))
BEGIN
   DECLARE like_ VARCHAR(20);
	SET like_ = CONCAT('%',n_prod,'%');
   SELECT nombre_prod,(Precio_Prod * iva) AS precio_IVA FROM TABLA_PRODUCTOS WHERE nombre_prod like like_;

END //
DELIMITER ;

/*-- PARA PROBAR EL PROCEDIMIENTO -------
CALL sp_IVA('collares',1.19);*/

-- Traer los productos que cuesten mas de X Dolares -- 
DELIMITER // 
CREATE PROCEDURE sp_valores (in n_prod int)
BEGIN
	SELECT
	Nombre_Prod FROM tabla_productos WHERE Precio_Prod > n_prod;
    
    END //
    DELIMITER ;
    
/*-- PARA PROBAR EL PROCEDIMIENTO -------
CALL sp_valores(35);*/


-- TRIGGERS -------------------------------------------------------------

CREATE TRIGGER trg_after_insert 
AFTER INSERT ON tabla_venta
FOR EACH ROW 
INSERT INTO Auditoria(Accion,Usuario,Fecha_Hora,Observacion) 
VALUES ("INSERT",CURRENT_USER(),NOW(),"Se inserto correctamente en tabla venta");

CREATE TRIGGER trg_Before_delete
BEFORE DELETE ON tabla_venta
FOR EACH ROW
INSERT INTO Auditoria(Accion,Usuario,Fecha_Hora,Observacion,Campo_Anterior)
VALUES ("DELETE",CURRENT_USER(),CURDATE(),"Se elimino correctamente en la tabla venta",OLD.ID_Vta);

/*-- PROBAR EL TRIGGER --
INSERT INTO tabla_venta(Fecha_Hora, Precio_vta, articulos_vendidos_vta, ID_Art, ID_Estruct, ID_Puesto, Nombre_Puesto)
VALUES(NOW(),30,10,15,2,15,'Accesorios para el cabello artesanales');
INSERT INTO tabla_venta() VALUES(NOW());*/


DELIMITER //
CREATE TRIGGER trg_after_update
AFTER INSERT ON tabla_boleta
FOR EACH ROW
BEGIN 
    DECLARE V_ID_Vta MEDIUMINT;
    DECLARE Total_vta DOUBLE;
    
    SET V_ID_Vta = NEW.ID_Vta;

    SET Total_vta = (SELECT SUM(Precio_Prod * NEW.Unidad_Prod) FROM tabla_productos WHERE ID_Prod = NEW.ID_Prod);

    IF EXISTS (SELECT 1 FROM tabla_venta WHERE ID_Vta = V_ID_Vta) THEN
        INSERT INTO tabla_factura (Total_vta, ID_Vta) VALUES (Total_vta, V_ID_Vta);
    END IF;

    UPDATE tabla_productos 
    SET Stock_Prod = Stock_Prod - NEW.Unidad_Prod
    WHERE ID_Prod = NEW.ID_Prod;
END//
DELIMITER ;


/*-- PROBAR EL TRIGGER --
INSERT INTO tabla_boleta (ID_Vta, ID_Prod, Precio_Prod, Unidad_Prod)
VALUES (504, 1, 30, 10);*/

