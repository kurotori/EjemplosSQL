drop schema if exists sistema;
create schema sistema;
use sistema;

create table usuario(
    nombre varchar(8) not null unique primary key,
    fecha_nac date not null
);

create table sesion(
    id int not null unique auto_increment primary key,
    estado enum('abierta','cerrada') not null default 'abierta'
);

create table inicia(
    usuario_nombre varchar(8) not null,
    sesion_id int unique not null primary key
);

alter table inicia
add constraint fk_usuario_inicia
foreign key (usuario_nombre)
references usuario(nombre)
on update cascade
on delete cascade;

alter table inicia
add constraint fk_inicia_sesion
foreign key (sesion_id)
references sesion(id)
on update cascade
on delete cascade;












