create database Examen2DylanBlandino

create table clientes

(

	cedula varchar(15) primary key,
	nombre varchar (50) not null, 
	telefono varchar (12) not null, 
	direccion varchar (50) not null, 
	Monto money, 
	Descuento money, 
	Subtotal money, 
	IVA money, 
	Total money, 

	)

	