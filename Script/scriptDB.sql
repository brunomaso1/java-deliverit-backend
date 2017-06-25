DROP DATABASE deliverit;
CREATE DATABASE deliverit;

USE deliverit;

CREATE TABLE vehiculo (
	id SMALLINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(10)
);

CREATE TABLE estado_viaje (
	id SMALLINT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(10)
);

CREATE TABLE direccion (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    calle VARCHAR(80) NOT NULL,
    nro_puerta SMALLINT NOT NULL,
    esquina VARCHAR(80),
    apartamento SMALLINT,
    latitud DOUBLE,
    longitud DOUBLE
);

CREATE TABLE cliente (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (50),
    direccion INTEGER,
    telefono VARCHAR(9) NOT NULL,
    FOREIGN KEY (direccion) REFERENCES direccion (id)
);

CREATE TABLE usuario (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    mail VARCHAR(90),
    telefono VARCHAR(9) NOT NULL,
    cuenta_red_pagos INTEGER NOT NULL,
    foto LONGTEXT
);

CREATE TABLE restaurant (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    usuario INTEGER,
    rut BIGINT UNIQUE NOT NULL,
    razon_social VARCHAR(50),
    FOREIGN KEY (usuario) REFERENCES usuario (id)
);

CREATE TABLE sucursal (
	id SMALLINT AUTO_INCREMENT PRIMARY KEY,
    restaurant INTEGER NOT NULL,
    nombre VARCHAR(20),
    direccion INTEGER,
    FOREIGN KEY (restaurant) REFERENCES restaurant (id),
    FOREIGN KEY (direccion) REFERENCES direccion (id)
);

CREATE TABLE ubicacion (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    latitud DOUBLE NOT NULL,
    longitud DOUBLE NOT NULL
);

CREATE TABLE delivery (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    usuario INTEGER,
    calificacion SMALLINT,
    vehiculo SMALLINT,
    nombre VARCHAR(50) NOT NULL,
    ingresos INTEGER,
    token VARCHAR(200),
    ubicacion INTEGER,
    FOREIGN KEY (vehiculo) REFERENCES vehiculo (id),
    FOREIGN KEY (usuario) REFERENCES usuario (id),
    FOREIGN KEY (ubicacion) REFERENCES ubicacion(id)
);

CREATE TABLE viaje (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    calificacion SMALLINT,
    precio SMALLINT NOT NULL,
    delivery INTEGER,
    sucursal SMALLINT,
    estado SMALLINT,
    fecha_creacion TIMESTAMP NOT NULL,
    FOREIGN KEY (delivery) REFERENCES delivery (id),
    FOREIGN KEY (sucursal) REFERENCES sucursal (id),
    FOREIGN KEY (estado) REFERENCES estado_viaje (id)
);

CREATE TABLE pedido (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    viaje INTEGER NOT NULL,
    detalle VARCHAR(100),
    forma_pago VARCHAR(1),
    cliente INTEGER NOT NULL,
    fecha_creacion TIMESTAMP NOT NULL,
    FOREIGN KEY (viaje) REFERENCES viaje(id),
    FOREIGN KEY (cliente) REFERENCES cliente(id)
);

CREATE TABLE transaccion (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    fecha_hora TIMESTAMP NOT NULL,
    monto DOUBLE NOT NULL,
    viaje INTEGER NOT NULL,
    FOREIGN KEY (viaje) REFERENCES viaje (id)
);

CREATE TABLE configuracion (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(20) NOT NULL UNIQUE,
    valor VARCHAR(200) NOT NULL
);