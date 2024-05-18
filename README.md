<center>
<img src="https://objetivo.news/download/multimedia.normal.bcba10cea1861629.Y29kZXJob3VzZS1xdWUtZXMtcXVlLWhhY2VuX25vcm1hbC53ZWJw.webp" style="width: 100% ; aspect-ratio:16/9">
</center>


# <center>Entrega de proyecto final</center>
@Ivenka Margarita Rubio Radovcic

@53180-sql

@Carla Palermo Palermo
@Santiago Angel Gonzalez Martin

@Anderson Michel Torres



---

## Tematica del proyecto

La Feria Artesanal ha experimentado un crecimiento significativo en su tamaño y alcance. En respuesta a la creciente demanda y la diversificación de la oferta, el proyecto se centra en la expansión de la feria a cuatro áreas distintas. Este cambio representa una oportunidad emocionante para fortalecer la presencia de los artesanos locales, ampliar la oferta de productos y proporcionar una experiencia aún más enriquecedora para los visitantes.

El objetivo principal de esta expansión es adaptar la infraestructura de la Feria Artesanal para acomodar el aumento en el número de puestos y mejorar la gestión de los productos que ingresan. Además, buscamos mantener la esencia única de la feria, promoviendo el trabajo artesanal local y brindando un espacio donde los visitantes puedan disfrutar de una amplia variedad de productos auténticos y de calidad.

Con la expansión de la feria a cuatro áreas y un total de 500 puestos, surge la necesidad de gestionar de manera eficiente la información sobre los productos que ingresan al mercado. Esta situación plantea desafíos logísticos y de organización, ya que se deben coordinar múltiples aspectos, como la distribución de los puestos, la clasificación de los productos y la implementación de sistemas para garantizar un flujo de trabajo fluido y eficaz. Esta expansión también implica la necesidad de mantener los valores fundamentales de la Feria Artesanal, como el apoyo a la economía local y la promoción de la cultura artesanal, mientras se adapta a un entorno más grande y diverso.


## Modelo de negocio

El modelo de negocio de la Feria Artesanal se fundamenta en la promoción y comercialización de productos artesanales locales. Con 45 puestos iniciales y una variedad de 113 productos diferentes, la feria ofrece una plataforma para que los artesanos exhiban y vendan sus creaciones únicas. Los puestos se distribuyen en cinco zonas distintas, clasificadas según criterios geográficos y temáticos, lo que permite a los visitantes explorar una amplia gama de artículos, desde joyería hasta textiles, y artículos decorativos.

Esta ampliación permite no solo acomodar un mayor número de participantes y productos, sino también diversificar la oferta y proporcionar una experiencia más enriquecedora para los visitantes.

Los puestos de la Feria Artesanal se distribuyen en cinco zonas diferentes, clasificadas según criterios geográficos y temáticos. Esta organización permite a los visitantes explorar una amplia gama de artículos, desde joyería hasta textiles y artículos decorativos, mientras disfrutan de una experiencia de compra única y personalizada.

Los valores fundamentales de la Feria Artesanal, como el apoyo a la economía local, la promoción de la cultura artesanal y la creación de un ambiente acogedor y inclusivo, continúan siendo el corazón de este modelo de negocio

En resumen, la expansión de la Feria Artesanal representa una emocionante oportunidad para fortalecer su impacto en la comunidad local y ofrecer una experiencia aún más enriquecedora para todos los involucrados, desde los artesanos hasta los visitantes.

## Diagrama entidad relacion (DER)

<center>
<img src="https://i.ibb.co/GQ2fyMZ/Captura-de-pantalla-2024-05-14-224103.png" alt="Captura-de-pantalla-2024-05-14-224103" border="0"></a>
</center>

## Listado de tablas y descripcion

**TABLA: tabla_artesano**
| Campo             | Tipo de Dato  | Longitud | Tipo de Clave | Clave Unique | Clave Índice | Dato Incremental | Valor por Default | Null/Not Null | Descripción de la Columna |
|-------------------|---------------|----------|----------------|--------------|---------------|------------------|-------------------|---------------|---------------------------|
| ID_Art            | INT           |          | Primary Key    |              |               | Auto Increment   |                   | Not Null      | Identificador del artesano |
| Nombre_Art        | VARCHAR(100)  | 100      |                |              |               |                  |                   | Not Null      | Nombre del artesano        |
| Apellido_Art      | VARCHAR(100)  | 100      |                |              |               |                  |                   | Not Null      | Apellido del artesano      |
| Calle_Art         | VARCHAR(50)   | 50       |                |              |               |                  |                   | Null          | Calle del artesano         |
| Numero_Art        | VARCHAR(50)   | 50       |                |              |               |                  |                   | Null          | Número del artesano        |
| Codigo_Postal_Art | VARCHAR(50)   | 50       |                |              |               |                  |                   | Null          | Código postal del artesano |
| Comuna_Art       | VARCHAR(100)  | 100      |                |              |               |                  |                   | Null          | Comuna del artesano        |
| Region_Art       | VARCHAR(100)  | 100      |                |              |               |                  |                   | Null          | Región del artesano        |
| Ciudad_Art       | VARCHAR(100)  | 100      |                |              |               |                  |                   | Null          | Ciudad del artesano        |
| Telefono_Art     | VARCHAR(100)  | 100      |                |              |               |                  |                   | Null          | Teléfono del artesano      |
| Email_Art        | VARCHAR(100)  | 100      |                |              |               |                  |                   | Null          | Email del artesano         |

**TABLA: tabla_productos**
| Campo          | Tipo de Dato  | Longitud | Tipo de Clave | Clave Unique | Clave Índice | Dato Incremental | Valor por Default | Null/Not Null | Descripción de la Columna |
|----------------|---------------|----------|----------------|--------------|---------------|------------------|-------------------|---------------|---------------------------|
| ID_Prod        | INT           |          | Primary Key    |              |               | Auto Increment   |                   | Not Null      | Identificador del producto |
| ID_Cat         | INT           |          |                |              |               |                  |                   | Not Null      | ID de la categoría del producto |
| ID_Puesto      | TINYINT       |          |                |              |               |                  |                   | Null          | ID del puesto de venta     |
| Nombre_Prod    | VARCHAR(100)  | 100      |                |              |               |                  |                   | Not Null      | Nombre del producto        |
| Moneda         | VARCHAR(100)  | 100      |                |              |               |                  |                   | Null          | Moneda del producto        |
| Precio_Prod    | DOUBLE        |          |                |              |               |                  |                   | Null          | Precio del producto        |
| Stock_Prod     | INT           |          |                |              |               |                  |                   | Null          | Stock del producto         |

**TABLA: tabla_categorias**
| Campo       | Tipo de Dato | Longitud | Tipo de Clave | Clave Unique | Clave Índice | Dato Incremental | Valor por Default | Null/Not Null | Descripción de la Columna |
|-------------|--------------|----------|----------------|--------------|---------------|------------------|-------------------|---------------|---------------------------|
| ID_Cat      | INT          |          | Primary Key    |              |               | Auto Increment   |                   | Not Null      | Identificador de la categoría |
| Nombre_Cat  | VARCHAR(100) | 100      |                |              |               |                  |                   | Not Null      | Nombre de la categoría     |

**TABLA: tabla_puestos**
| Campo          | Tipo de Dato | Longitud | Tipo de Clave | Clave Unique | Clave Índice | Dato Incremental | Valor por Default | Null/Not Null | Descripción de la Columna |
|----------------|--------------|----------|----------------|--------------|---------------|------------------|-------------------|---------------|---------------------------|
| ID_Puesto      | TINYINT      |          | Primary Key    |              |               | Auto Increment   |                   | Not Null      | Identificador del puesto  |
| ID_Art         | INT          |          |                |              |               |                  |                   | Null          | ID del artesano del puesto |
| ID_Estruct     | TINYINT      |          |                |              |               |                  |                   | Null          | ID de la estructura del puesto |
| Nombre_Puesto  | VARCHAR(100) | 100      |                |              |               |                  |                   | Null          | Nombre del puesto          |

**TABLA: tabla_venta**
| Campo                | Tipo de Dato | Longitud | Tipo de Clave | Clave Unique | Clave Índice | Dato Incremental | Valor por Default | Null/Not Null | Descripción de la Columna |
|----------------------|--------------|----------|----------------|--------------|---------------|------------------|-------------------|---------------|---------------------------|
| ID_Vta               | MEDIUMINT    |          | Primary Key    |              |               | Auto Increment   |                   | Not Null      | Identificador de la venta |
| Fecha_Hora           | DATETIME     |          |                |              |               |                  | Current Timestamp | Null          | Fecha y hora de la venta   |
| Precio_vta           | MEDIUMINT    |          |                |              |               |                  |                   | Null          | Precio total de la venta   |
| articulos_vendidos_vta | INT        |          |                |              |               |                  |                   | Null          | Número de artículos vendidos |
| ID_Art               | INT          |          |                |              |               |                  |                   | Null          | ID del artesano involucrado |
| ID_Estruct           | TINYINT      |          |                |              |               |                  |                   | Null          | ID de la estructura involucrada |
| ID_Puesto            | TINYINT      |          |                |              |               |                  |                   | Null          | ID del puesto de venta     |
| Nombre_Puesto        | VARCHAR(100) | 100      |                |              |               |                  |                   | Null          | Nombre del puesto de venta |

**TABLA: tabla_estructura**
| Campo          | Tipo de Dato | Longitud | Tipo de Clave | Clave Unique | Clave Índice | Dato Incremental | Valor por Default | Null/Not Null | Descripción de la Columna |
|----------------|--------------|----------|----------------|--------------|---------------|------------------|-------------------|---------------|---------------------------|
| ID_Estruct     | TINYINT      |          | Primary Key    |              |               |                  |                   | Not Null      | Identificador de la estructura |
| Sector_Estruct | ENUM         |          |                |              |               |                  |                   | Not Null      | Sector de la estructura     |

**TABLA: tabla_boleta**
| Campo        | Tipo de Dato | Longitud | Tipo de Clave | Clave Unique | Clave Índice | Dato Incremental | Valor por Default | Null/Not Null | Descripción de la Columna |
|--------------|--------------|----------|----------------|--------------|---------------|------------------|-------------------|---------------|---------------------------|
| ID_Boleta    | INT          |          | Primary Key    |              |               | Auto Increment   |                   | Not Null      | Identificador de la boleta |
| ID_Vta       | MEDIUMINT    |          |                |              |               |                  |                   | Not Null      | ID de la venta asociada   |
| ID_Prod      | INT          |          |                |              |               |                  |                   | Null          | ID del producto asociado  |
| Precio_Prod  | DOUBLE       |          |                |              |               |                  |                   | Null          | Precio del producto        |
| Unidad_Prod  | TINYINT      |          |                |              |               |                  |                   | Null          | Unidad del producto        |

**TABLA: auditoria**
| Campo            | Tipo de Dato | Longitud | Tipo de Clave | Clave Unique | Clave Índice | Dato Incremental | Valor por Default | Null/Not Null | Descripción de la Columna |
|------------------|--------------|----------|----------------|--------------|---------------|------------------|-------------------|---------------|---------------------------|
| ID_Auditoria    | INT          |          | Primary Key    |              |               | Auto Increment   |                   | Not Null      | Identificador de la auditoría |
| Accion          | VARCHAR(50)  | 50       |                |              |               |                  |                   | Null          | Acción realizada           |
| Usuario         | VARCHAR(20)  | 20       |                |              |               |                  |                   | Null          | Usuario que realizó la acción |
| Fecha_Hora      | DATETIME     |          |                |              |               |                  | Current Timestamp | Null          | Fecha y hora de la acción  |
| Observacion     | TEXT         |          |                |              |               |                  |                   | Null          | Observación de la acción   |
| Campo_Anterior  | VARCHAR(50)  | 50       |                |              |               |                  |                   | Null          | Valor anterior del campo   |
| Campo_Nuevo     | VARCHAR(50)  | 50       |                |              |               |                  |                   | Null          | Nuevo valor del campo      |

**TABLA: tabla_factura**
| Campo         | Tipo de Dato | Longitud | Tipo de Clave | Clave Unique | Clave Índice | Dato Incremental | Valor por Default | Null/Not Null | Descripción de la Columna |
|---------------|--------------|----------|----------------|--------------|---------------|------------------|-------------------|---------------|---------------------------|
| ID_VtA        | MEDIUMINT    |          |                |              |               |                  |                   | Null          | ID de la venta asociada   |
| Total_vta     | DOUBLE       |          |                |              |               |                  |                   | Null          | Total de la venta          |


## Estructura de datos

- [Estructura completa de la base de datos](https://github.com/IvenkaR/Proyecto-final/blob/203f927d64b7f55fe4c5a3711e50f867c0009956/structure/database_structure.sql)
- [Inserción de datos](https://github.com/IvenkaR/Proyecto-final/blob/203f927d64b7f55fe4c5a3711e50f867c0009956/structure/population.sql)
- [Vistas](https://github.com/IvenkaR/Proyecto-final/blob/203f927d64b7f55fe4c5a3711e50f867c0009956/objects)
- [Funciones](https://github.com/IvenkaR/Proyecto-final/blob/203f927d64b7f55fe4c5a3711e50f867c0009956/objects/functions.sql)
- [Stored Procedures](https://github.com/IvenkaR/Proyecto-final/blob/203f927d64b7f55fe4c5a3711e50f867c0009956/objects/store_procedures.sql)
- [Triggers](https://github.com/IvenkaR/Proyecto-final/blob/203f927d64b7f55fe4c5a3711e50f867c0009956/objects/triggers.sql)
- [Back up de la base de datos](https://github.com/IvenkaR/Proyecto-final/blob/203f927d64b7f55fe4c5a3711e50f867c0009956/backups)


## Herramientas y tecnologias usadas

### Introducción
Este informe detalla las herramientas y tecnologías empleadas en el desarrollo del proyecto asociado a la consulta SQL proporcionada. El proyecto se centra en la gestión de una base de datos para un sistema de ventas de productos artesanales.

### Herramientas y Tecnologías Utilizadas

1. **Curso CoderHouse**
   - El curso proporcionó una base sólida en el diseño y desarrollo de bases de datos, así como en consultas SQL avanzadas. Además, incluyó módulos dedicados a la gestión de datos y la optimización de consultas.

2. **Tutores CoderHouse**
   - Los tutores brindaron orientación y apoyo en la resolución de problemas y el diseño de la base de datos. Su experiencia fue fundamental para abordar desafíos específicos del proyecto.

3. **Excel**
   - Excel se utilizó como herramienta complementaria para análisis de datos y generación de las bases de datos. Permitió organizar y visualizar datos de manera efectiva durante el proceso de desarrollo.

4. **MySQL**
   - Se seleccionó como la tecnología principal para la base de datos del proyecto. Se utilizó para diseñar y gestionar la base de datos relacional que almacena información sobre artesanos, productos, ventas y más.

## Como levantar el proyecto en CodeSpaces GitHub
* env: Archivo con contraseñas y data secretas
* Makefile: Abstracción de creacción del proyecto
* docker-compose.yml: Permite generar las bases de datos en forma de contenedores

#### Pasos para arrancar el proyecto

* En la terminal de linux escribir :
    - `make` _si te da un error de que no conexion al socket, volver al correr el comando `make`_
    - `make clean-db` limpiar la base de datos
    - `make test-db` para mirar los datos de cada tabla
    - `make backup-db` para realizar un backup de mi base de datos
    - `make access-db` para acceder a la base de datos
