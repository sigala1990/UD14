use ud14_ej7;

create table despachos(
numero int primary key,
capacidad int
);

create table directores(
DNI varchar(8) primary key,
nombreApellidos nvarchar(255),
despacho_FK int,
DNIJefe_FK varchar(8),
foreign key (despacho_FK) references despachos (numero),
foreign key (DNIJefe_FK) references directores (DNI)
);