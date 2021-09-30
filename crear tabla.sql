show schemas; /* Muestra las bases de datos del servidor */

create database ejemplo; /* Crea una BdD nueva */

use ejemplo; /* Accede a una BdD */

show tables; /* Muestra las tablas de una BdD */

create table usuario(            /* Crea una tabla en la BdD */
    id int(8) not null unique primary key,
    nombre varchar(20) not null
);



insert into 
usuario(id,nombre)
values
(11111111,'aquel'),
(22222222,'mengano');


select
id, nombre
from usuario;

select
*
from usuario;












