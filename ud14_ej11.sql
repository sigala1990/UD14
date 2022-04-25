use ud14_ej11;

create table facultad(
codigo int primary key,
nombre varchar (100)
);

create table investigadores(
DNI varchar(8) primary key,
nombreApellidos varchar(255),
facultad int,
foreign key (facultad) references facultad (codigo)
);

create table equipos(
numSerie char(4) primary key,
nombre varchar(100),
facultad int,
foreign key (facultad) references facultad (codigo)
);

drop table if exists reserva;
create table reserva(
idReserva int primary key,
DNI varchar(8),
numSerie char(4),
comienzo datetime,
fin datetime,
foreign key (DNI) references investigadores (DNI),
foreign key (numSerie) references equipos (numSerie)
);



