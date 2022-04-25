use ud14_ej3;

create table Fabricante(
codigoFabricante int not null auto_increment,
nombre varchar(100),
primary key (codigoFabricante)
);

create table Articulos(
codigoArticulo int not null auto_increment,
nombre varchar(100),
precio int,
codigoFabricante int,
primary key (codigoArticulo),
foreign key (codigoFabricante) references Fabricante (codigoFabricante)
on update cascade 
on delete cascade
);