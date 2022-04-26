use ud14_ej12;

drop table if exists profesores;
create table profesores(
DNI varchar (8) primary key,
nombre varchar (60) unique,
apellido1 varchar (60),
apellido2 varchar (60),
direccion varchar (115),
titulo varchar (60),
cuotaHora int not null
);

drop table if exists cursos ;
create table cursos(
codigo_curso int primary key,
nombre_curso varchar (60) unique,
maximo_alumnos int,
profesor_asignado int,
fecha_inicio date,
fecha_fin date,
numero_horas int not null,
foreign key (profesor_asignado) references profesores (DNI)
);

drop table if exists alumnos;
create table alumnos(
DNI varchar (8) primary key,
nombre varchar (60),
apellido1 varchar (60),
apellido2 varchar (60),
direccion varchar (115),
sexo char (1),
fecha_nacimiento date,
codigo_curso int,
foreign key (codigo_curso) references cursos (codigo_curso) 
);

drop table if exists pertenecer ;
create table pertencer(
id_pertenecer int primary key,
codigo_curso int,
dni_alumno varchar (8),
dni_profesor varchar (8),
foreign key (codigo_curso) references cursos (codigo_curso),
foreign key (dni_alumno) references alumnos (DNI),
foreign key (dni_profesor) references profesores (DNI)
);





