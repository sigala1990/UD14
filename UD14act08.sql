CREATE DATABASE UD14act8;

USE UD14act8;

 CREATE TABLE piezas (
 piezaId INT auto_increment PRIMARY KEY,
 Nombre VARCHAR(100)
 );
 
  CREATE TABLE proveedores (
 proveedoresId CHAR(4) PRIMARY KEY,
 Nombre VARCHAR(100)
 );
 
 CREATE TABLE suministra (
 suministraId INT auto_increment PRIMARY KEY,
 precio INT,
 FK_piezaId INT,
 KEY (FK_piezaId),
 FOREIGN KEY (FK_piezaId) REFERENCES piezas (piezaId),
 FK_proveedoresId CHAR,
 KEY (FK_proveedoresId), 
 FOREIGN KEY (FK_proveedoresId) REFERENCES proveedores (proveedoresId)
 );