CREATE DATABASE UD14ACT05;

USE UD14ACT05;

CREATE TABLE Almacenes(
codigo int auto_increment primary key,
lugarCapacidad nvarchar(100));

CREATE TABLE  Cajas(
numReferencia char(5) primary key,
contenido nvarchar(100) not null,
valor int,
almacen int,
key (almacen),
FOREIGN KEY (almacen) REFERENCES Almacenes (codigo) ON UPDATE CASCADE ON DELETE CASCADE);