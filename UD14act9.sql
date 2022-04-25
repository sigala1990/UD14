CREATE DATABASE UD1409;
USE UD1409;

CREATE TABLE CIENTIFICOS(
dni varchar(8) primary key,
NomApels nvarChar(255) not null);

CREATE TABLE PROYECTO(
id char(4) primary key,
nombre nvarchar(255)not null,
horas int);

CREATE TABLE ASIGNADO_A(
asignadoID int auto_increment primary key,
cientifico varchar(8),
proyecto char(4),
key (cientifico, proyecto),
FOREIGN KEY (cientifico) REFERENCES CIENTIFICOS(dni),
FOREIGN KEY (proyecto) REFERENCES PROYECTO(id));

