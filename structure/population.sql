USE `los_artesanos_` ;

SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE '/structure/data-csv/tabla_artesanos.csv'
INTO TABLE tabla_artesanos
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE '/structure/data-csv/tabla_boleta.csv'
INTO TABLE tabla_boleta
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/structure/data-csv/tabla_categorias.csv'
INTO TABLE tabla_categorias
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE '/structure/data-csv/tabla_estructura.csv'
INTO TABLE tabla_estructura
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/structure/data-csv/tabla_productos.csv'
INTO TABLE tabla_productos
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE '/structure/data-csv/tabla_puestos.csv'
INTO TABLE tabla_puestos
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/structure/data-csv/tabla_venta.csv'
INTO TABLE tabla_venta
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
