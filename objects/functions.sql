USE `los_artesanos_` ;

-- FUNCIONES --

DELIMITER //

CREATE FUNCTION fn_buscar_artesano(p_id INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE nombre_artesano VARCHAR(50);
    SELECT Nombre_Art INTO nombre_artesano FROM tabla_artesanos WHERE ID_Art = p_id;
    RETURN nombre_artesano;
END//

DELIMITER ;


DELIMITER //

CREATE FUNCTION fn_buscar_email(p_dato VARCHAR(50))
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
    DECLARE email VARCHAR(50);
    DECLARE consulta VARCHAR(20);
    SET consulta = CONCAT('%', p_dato, '%');
    
    SELECT Email_Art INTO email FROM tabla_artesanos WHERE Email_Art LIKE consulta;
    RETURN email;
END//

DELIMITER ;
