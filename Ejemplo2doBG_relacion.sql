drop database if exists aplicacion;
create database aplicacion;
use aplicacion;

create table usuario(
    id int not null unique primary key,
    nombre varchar(10) not null unique
);

create table sesion(
    num int not null unique auto_increment primary key,
    fecha timestamp not null default current_timestamp,
    estado enum('abierta','cerrada') default 'abierta'
);

create table inicia(
    usuario_id int not null,
    sesion_num int not null unique primary key
);


alter table inicia
add constraint fk_usuario_inicia
foreign key (usuario_id)
references usuario(id)
on update cascade
on delete cascade;

alter table inicia
add constraint fk_inicia_sesion
foreign key (sesion_num)
references sesion(num)
on update cascade
on delete cascade;


