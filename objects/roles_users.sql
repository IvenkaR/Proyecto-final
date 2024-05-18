USE `los_artesanos_` ;

DROP USER IF EXISTS 'dev1'@'%';
DROP USER IF EXISTS 'read_user1'@'%';
DROP USER IF EXISTS 'read_user2'@'%';
DROP USER IF EXISTS 'rw_user1'@'%';

DROP ROLE IF EXISTS desarrollador_feria;
DROP ROLE IF EXISTS gerencia_feria;
DROP ROLE IF EXISTS desarrolladorjr_feria;

-- CREAR NOMBRES ROLES
CREATE ROLE 'desarrollador_feria', 'gerencia_feria', 'desarrolladorjr_feria';

-- ACCESO DE CADA ROL
GRANT ALL ON los_artesanos_.* TO 'desarrollador_feria';
GRANT SELECT ON los_artesanos_.* TO 'gerencia_feria';
GRANT INSERT, UPDATE, DELETE ON los_artesanos_.* TO 'desarrolladorjr_feria';

-- CREACION USUARIO Y CONTRASENA--
CREATE USER 'dev1'@'%' IDENTIFIED BY 'usuario1';
CREATE USER 'read_user1'@'%' IDENTIFIED BY 'usuario2';
CREATE USER 'read_user2'@'%' IDENTIFIED BY 'usuario3';
CREATE USER 'rw_user1'@'%' IDENTIFIED BY 'usuariio4';

-- OTORGAR PERMISOS DE CADA ROL A CADA USUARIO--
GRANT 'desarrollador_feria' TO 'dev1'@'%';
GRANT 'gerencia_feria' TO 'read_user1'@'%', 'read_user2'@'%';
GRANT 'gerencia_feria', 'desarrolladorjr_feria' TO 'rw_user1'@'%';

