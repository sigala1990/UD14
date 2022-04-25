CREATE DATABASE UD14ACT10;
USE UD14ACT10;

CREATE TABLE CAJEROS(
codigo int primary key,
NomApels nvarchar(255)not null);

CREATE TABLE PRODUCTOS(
codigo int primary key,
nombre nvarchar(100)not null,
precio int);

CREATE TABLE MAQUINAS_REGISTRADORAS(
codigo int primary key,
piso int not null);

CREATE TABLE VENTA(
ventaID int auto_increment primary key,
codigoCajeros int,
codigoProductos int,
codigoMaquinas int,
key (codigoCajeros,codigoProductos,codigoMaquinas),
FOREIGN KEY (codigoCajeros) REFERENCES CAJEROS (codigo),
FOREIGN KEY (codigoProductos) REFERENCES PRODUCTOS (codigo),
FOREIGN KEY (codigoMaquinas) REFERENCES MAQUINAS_REGISTRADORAS (codigo));