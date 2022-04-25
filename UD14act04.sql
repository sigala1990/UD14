CREATE DATABASE UD14act4;

USE UD14act4;

 CREATE TABLE departamentos (
 Codigo INT auto_increment PRIMARY KEY,
 Nombre VARCHAR(100),
 Presupuesto INT
 );

 CREATE TABLE empleados (
 DNI INT auto_increment PRIMARY KEY,
 Nombre VARCHAR(100),
 Apellidos VARCHAR(255),
 FK_Departamento INT,
 KEY (FK_Departamento),
 FOREIGN KEY (FK_Departamento) REFERENCES departamentos (Codigo)
 );
 
