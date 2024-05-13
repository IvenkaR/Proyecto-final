-- CREAR ESQUEMA Y TABLAS --
DROP SCHEMA IF EXISTS los_artesanos_;
CREATE DATABASE IF NOT EXISTS los_artesanos_;
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




