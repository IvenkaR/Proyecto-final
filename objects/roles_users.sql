USE `los_artesanos_` ;
--CREAR NOMBRES ROLES--
CREATE ROLE 'desarrollador_feria', 'gerencia_feria', 'desarrolladorjr_feria';

--ACCESO DE CADA ROL--
GRANT ALL ON los_artesanos_.* TO 'desarrollador_feria';
GRANT SELECT ON los_artesanos_.* TO 'gerencia_feria';
GRANT INSERT, UPDATE, DELETE ON los_artesanos_.* TO 'desarrolladorjr_feria';

--CREACION USUARIO Y CONTRASENA--
CREATE USER 'dev1'@'localhost' IDENTIFIED BY 'usuario1';
CREATE USER 'read_user1'@'localhost' IDENTIFIED BY 'usuario2';
CREATE USER 'read_user2'@'localhost' IDENTIFIED BY 'usuario3';
CREATE USER 'rw_user1'@'localhost' IDENTIFIED BY 'usuariio4';

--OTORGAR PERMISOS DE CADA ROL A CADA USUARIO--
GRANT 'desarrollador_feria' TO 'dev1'@'localhost';
GRANT 'gerencia_feria' TO 'read_user1'@'localhost', 'read_user2'@'localhost';
GRANT 'gerencia_feria', 'desarrolladorjr_feria' TO 'rw_user1'@'localhost';

