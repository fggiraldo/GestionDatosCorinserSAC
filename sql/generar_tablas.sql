CREATE DATABASE corinser;

CREATE TABLE VTA_MOVIMIENTOS_DC(
	idventa integer,
	fecha datetime not null,
	codcanal integer not null,
	codalmacen integer not null,
	codproducto integer not null,
	codpromocion integer not null,
	codmoneda integer not null,
	costounitario decimal(16,2),
	preciounitario decimal(16,2) ,
	cantidadvendida integer not null,
	cantidaddevuelta integer not null,
	montodevuelto decimal(16,2) null,
	cantidaddescuento integer null,
	montodescuento decimal(16,2) null,
	costototal decimal(16,2) not null,
	montoventa decimal(16,2) not null,
	fechacarga datetime null,
	fechaupd datetime null
);


CREATE TABLE MAE_ALMACEN(
	codalmacen integer,
	codubigeo integer,
	codgerentealmacen int,
	tipalmacen varchar(15) null,
	almacen varchar(100) not null,
	descripcionalmacen varchar(300) not null,
	estado varchar(20) not null,
	fechacarga datetime null,
	fechaupd datetime null
)