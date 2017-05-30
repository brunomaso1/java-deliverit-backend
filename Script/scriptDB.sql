drop database deliverit;

create database deliverit;

create table deliverit.vehiculo (
	id smallint auto_increment primary key,
    descripcion varchar(10)
);

insert into deliverit.vehiculo (descripcion) values ('Automotor');
insert into deliverit.vehiculo (descripcion) values ('Ciclomotor');
insert into deliverit.vehiculo (descripcion) values ('Bicileta');
insert into deliverit.vehiculo (descripcion) values ('Skate');
insert into deliverit.vehiculo (descripcion) values ('Rollers');
insert into deliverit.vehiculo (descripcion) values ('Ninguno');

create table deliverit.estado_viaje (
	id smallint auto_increment primary key,
    descripcion varchar(10)
);

insert into deliverit.estado_viaje (descripcion) values ('Pendiente');
insert into deliverit.estado_viaje (descripcion) values ('Publicado');
insert into deliverit.estado_viaje (descripcion) values ('En proceso');
insert into deliverit.estado_viaje (descripcion) values ('Finalizado');

create table deliverit.direccion (
	id integer auto_increment primary key,
    calle varchar(20) not null,
    nro_puerta smallint not null,
    esquina varchar(20),
    apartamento smallint,
    latitud double,
    longitud double
);

create table deliverit.cliente (
	id integer auto_increment primary key,
    nombre varchar (50),
    direccion integer,
    telefono varchar(9) not null,
    foreign key (direccion) references deliverit.direccion (id)
);

create table deliverit.usuario (
	id integer auto_increment primary key,
    nombre varchar(40) unique not null,
    password varchar(100) not null,
    mail varchar(50),
    telefono varchar(9) not null,
    cuenta_red_pagos integer not null,
    foto longtext
);

create table deliverit.restaurant (
    id integer auto_increment primary key,
    usuario integer,
    rut bigint unique not null,
    razon_social varchar(50),
    foreign key (usuario) references deliverit.usuario (id)
);

create table deliverit.ubicacion (
	id integer auto_increment primary key,
    latitud double not null,
    longitud double not null
);

create table deliverit.delivery (
	id integer auto_increment primary key,
	usuario integer,
    calificacion smallint,
    vehiculo smallint,
	token varchar(200),
    ubicacion integer,
    foreign key (vehiculo) references deliverit.vehiculo (id),
    foreign key (usuario) references deliverit.usuario (id),
    foreign key (ubicacion) references deliverit.ubicacion(id)
);

create table deliverit.sucursal (
	id smallint auto_increment primary key,
    restaurant integer not null,
    nombre varchar(20),
    direccion integer,
    foreign key (restaurant) references deliverit.restaurant (id),
    foreign key (direccion) references deliverit.direccion (id)
);

create table deliverit.viaje (
    id integer auto_increment primary key,
    calificacion smallint,
    precio smallint not null,
    delivery integer,
    sucursal smallint,
    estado smallint,
    fecha_creacion timestamp not null,
    foreign key (delivery) references deliverit.delivery (id),
    foreign key (sucursal) references deliverit.sucursal (id),
    foreign key (estado) references deliverit.estado_viaje (id)
);

create table deliverit.transaccion (
	id integer auto_increment primary key,
    fecha_hora timestamp not null,
    monto double not null,
    viaje integer not null,
    foreign key (viaje) references deliverit.viaje (id)
);

create table deliverit.pedido (
    id integer auto_increment primary key,
    viaje integer not null,
    detalle varchar(100),
    forma_pago varchar(1),
    cliente integer not null,
    fecha_creacion timestamp not null,
    foreign key (viaje) references deliverit.viaje(id),
    foreign key (cliente) references deliverit.cliente(id)
);

create table deliverit.configuracion (
	id integer auto_increment primary key,
    descripcion varchar(20) not null unique,
    valor varchar(200) not null
);

insert into deliverit.configuracion (descripcion, valor) values ('API_KEY_GOOGLE', 'AIzaSyA2NCnQBRCbuXHbNeUY7mW-lvP-v4V3x8A');
insert into deliverit.configuracion (descripcion, valor) values ('SERVIDOR_FIREBASE', 'AAAAXNmpFoo:APA91bFF5e1i3mZHE3APivYcHlnkS2ng7_quGr1ecuspOP68gjEnA13OIVUiPgKxVuqvCmnmDU_ZmcOl6OxJ1sEWQSjVYWB_wspNIx8lc0NjFYylx-uMPzfi-xnJhcPb2nVc852lMbZ5');

insert into deliverit.direccion (calle, nro_puerta, esquina, latitud, longitud) values ('Bv. España', 2140, 'Joaquín de Salterain', -34.9087526, -56.1717197);
insert into deliverit.usuario (nombre, password, telefono, foto, cuenta_red_pagos) values ('PanchoVa', 'a12345678.', 091456987, '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AEEC83PN17//4/sffubjH3i9qeXsdZ2EQGGeTqK79qCaAgGRiCilBJFUuk6utC0iQHRYGoUi6Dd2+Oip93zk9rfeuP/6K7cUF2EQ0KrSZEmrHgB3hwrb4gBEf/vfve2aKxY+/Eff2rltfutS749/882333Pk7sPP7901xwbNYH7Str069XvN5nBcSiw0VjfpwqT0qjRXyYX1kRcvEaZomgaqTV0vzPc0pSpVy3MLatVwmt1JpfWbuTp5KQYMJy2gQpSSVXShsY1RS2DQr7Su2wwRjseTuabX1LI+dpp+5C/v2BxOcrjXzXx/wT2nqmYEKAoRATy34a6qlpLnvHNx/opdB3Jud2ybP7h77qaXveifvv5VKJOl+f7y4ta0uHT5od3rtC8fPtps3bJr/67jY37nyLkrDu6bovrcfT9h1VPBQr9ZWZr73c9/50N/+jUVgzCKryw2z506/4nbvzvdHJXR0PJ0Lunv/e9vvf03PvWdx4/Nz/cjWHJpKju3Pv78Nx8LypalwdE1Pr06Xdi6Yv25q666/MQ4vvroC0sry1u2rezYugzg3PoUdeotLDaLizBBCc9u7/vFN5JhyUSVEBJIqdefe/KZk39zz/f2Xbqydbl5+VV7nj89/btvP3T1gZ07t87/xz/66uLc3If+8I5PfPHrKwtze1b6t/2HP//sXYdX5ge/8+d3/dnt39i62Fx35e5v/vDZj99+/+fueeTRnxy79uCWx589++QL5xf7zX//3He/eM/392ybf9Helfsfef7/3P2Dv3vgscePvvDgY8fe+LI9NRnkcJJ//Q/u/Is777/h6ktHE77zQ59+7vipRvnRT3+9Mn3/733hk397756dW2657tATx1bv/f5jiwuDW2++anFuAaIACJglzcPNyfra+PzqdG3VN9fK5vr4zJnp6pkyHQGKCAtiMlYvgJ4+N7xi745XvWTX3Q98+6r985Dedx567PxoE2KjSbnj3sPzcwXoPXn8zBr81//XXV954Mj7333DLddf0awItYK71PXBfYtAOnp29eQ4v/u/3fGNx5755Id/7g03vPTZE6uPnjq7df/ehZ0757dvL2qAHjm3/uDTJzc3N3707KltK/WLDyzf98g/XHPlClB98wePrq6t3vTSy6qmt7E5GW6Owst0PMqbw/Ha6nD1jNaDQd0fpLpJTU9SrVXSKhUggoDW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', 2020);
insert into deliverit.restaurant (id, usuario, rut, razon_social) values (1, 1, 123456789, 'Pancho Va S.R.L');
insert into deliverit.sucursal (restaurant, nombre, direccion) values (1, 'Pancho Va', 1);
update deliverit.usuario set telefono = '091456999' where id = 1;