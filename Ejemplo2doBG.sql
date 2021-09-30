create database sebastian;
use sebastian;

create table usuario(
    ci int(8) unique not null primary key,
    nombre varchar(25) not null
);

insert into usuario
(ci, nombre)
values
(12345678,'fulano');

insert into usuario
(ci, nombre)
values
(12345679,'mengano'),
(12345680,'ciclano');

select ci,nombre from usuario;






