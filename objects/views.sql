USE `los_artesanos_` ;

-- CREAR VISTAS --

CREATE OR REPLACE VIEW nombre_en_minuscula_del_producto AS 
SELECT 
    LCASE(Nombre_Prod) AS Nombre_minuscula 
FROM tabla_productos;

CREATE OR REPLACE VIEW nombre_en_mayuscula_del_producto AS 
SELECT 
    UCASE(Nombre_Prod) AS Nombre_Mayuscula 
FROM tabla_productos;

CREATE OR REPLACE VIEW largo_del_nombre_del_producto AS 
SELECT 
    LENGTH(Nombre_Prod) AS Largo_Nombre_Producto 
FROM tabla_productos;

CREATE OR REPLACE VIEW numero_de_artesanos AS 
SELECT 
    COUNT(*) AS Cantidad_de_Artesanos 
FROM tabla_artesanos;

CREATE OR REPLACE VIEW ciudad_de_artesanos AS 
SELECT 
    DISTINCT(Ciudad_Art) AS Ciudad_de_Artesanos 
FROM tabla_artesanos;

CREATE OR REPLACE VIEW artesanos_por_region AS 
SELECT 
    Region_Art AS Region_de_Artesanos,
    COUNT(*) AS Total_Artesanos
FROM tabla_artesanos
GROUP BY Region_Art;

CREATE OR REPLACE VIEW productos_por_categoria AS 
SELECT 
    c.Nombre_Cat AS Nombre_Categoria,
    COUNT(p.ID_Prod) AS Total_Productos 
FROM tabla_categorias c 
JOIN tabla_productos p ON c.ID_Cat = p.ID_Cat
GROUP BY c.Nombre_Cat;

CREATE OR REPLACE VIEW top_10_ventas AS 
SELECT 
    ID_Art,
    DAYOFMONTH(Fecha_Hora) AS Dia,
    HOUR(Fecha_Hora) AS Hora,
    SUM(articulos_vendidos_vta * precio_vta) AS Total_Ventas
FROM tabla_venta
GROUP BY ID_Art, Dia, Hora
ORDER BY Total_Ventas DESC
LIMIT 10;

-- PROBAR VISTAS --


SELECT * FROM nombre_en_minuscula_del_producto;
SELECT * FROM nombre_en_mayuscula_del_producto;
SELECT * FROM largo_del_nombre_del_producto;
SELECT * FROM numero_de_artesanos;
SELECT * FROM ciudad_de_artesanos;
SELECT * FROM artesanos_por_region;
SELECT * FROM productos_por_categoria;
SELECT * FROM top_10_ventas;
SELECT * FROM tabla_artesanos LIMIT 10;
SELECT * FROM tabla_productos LIMIT 10;
SELECT * FROM tabla_boleta LIMIT 10;