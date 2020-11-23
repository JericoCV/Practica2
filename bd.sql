create database idiomas;
use idiomas;

create table profesor(
id int auto_increment,
nombre varchar(50),
idioma varchar(50),
primary key(id)
);

create table programacion(
id int auto_increment,
inicio varchar(30),
tipo varchar(30),
idprof int,
primary key (id),
constraint fk_prog_prof foreign key(idprof) references profesor(id)
);

create table leccion(
id int auto_increment,
numero int,
state varchar(50),
idprog int,
comentario_profesor varchar(50),
comentario_estudiante varchar(50),
primary key(id),
constraint fk_lec_prog foreign key(idprog) references programacion(id)
);

create table estudiante(
id int auto_increment,
nombre varchar(50),
email varchar(50),
idLeccion int,
primary key(id),
constraint fk_est_lec foreign key (idleccion) references leccion(id)
);

