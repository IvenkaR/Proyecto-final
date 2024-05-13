USE los_artesanos_;

-- STORED PROCEDURES --

-- DROP PROCEDURE sp_IVA;
-- Calcular el IVA que incluye un producto

DELIMITER //

CREATE PROCEDURE sp_IVA(IN n_prod VARCHAR(50), IN iva DECIMAL(3,2))
BEGIN
    DECLARE like_ VARCHAR(20);
	SET like_ = CONCAT('%', n_prod, '%');
    SELECT nombre_prod, (Precio_Prod * iva) AS precio_IVA FROM tabla_productos WHERE nombre_prod LIKE like_;
END//

DELIMITER ;

-- PARA PROBAR EL PROCEDIMIENTO
-- CALL sp_IVA('collares', 1.19);
-- Traer los productos que cuesten más de X dólares

DELIMITER //

CREATE PROCEDURE sp_valores(IN precio_minimo DECIMAL(10, 2))
BEGIN
    SELECT Nombre_Prod FROM tabla_productos WHERE Precio_Prod > precio_minimo;
END//

DELIMITER ;


-- PARA PROBAR EL PROCEDIMIENTO
-- CALL sp_valores(35);
