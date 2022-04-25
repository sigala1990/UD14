CREATE DATABASE UD14ACT06;
USE UD14ACT06;

CREATE TABLE PELICULAS(
codigo int auto_increment primary key,
nombre nvarchar(100) not null,
calificacionedad int);

CREATE TABLE SALAS(
codigo int auto_increment primary key,
nombre nvarchar(100) not null,
pelicula int,
key (pelicula),
FOREIGN KEY (pelicula) REFERENCES PELICULAS (codigo));
