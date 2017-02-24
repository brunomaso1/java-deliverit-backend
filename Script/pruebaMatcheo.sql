insert into deliverit.usuario (id, nombre, password, mail, cuenta_red_pagos, telefono) values (1, 'juan', 'a12345678.', 
	'juanmartegoytia@gmail.com', 2020, '099994974');
insert into deliverit.usuario (id, nombre, password, mail, cuenta_red_pagos, telefono) values (2, 'brunomaso', 'a12345678.', 
	'brunomaso1@gmail.com', 2021, '095622512');
insert into deliverit.usuario (id, nombre, password, mail, cuenta_red_pagos, telefono) values (3, 'panchoVa', 'a12345678.', 
	'pancho_va@gmail.com', 2023, '24085407');    

insert into deliverit.ubicacion (id, latitud, longitud) values (1, -34.8972679, -56.1692596);
insert into deliverit.ubicacion (id, latitud, longitud) values (2, -34.9080406, -56.1741158);
insert into deliverit.ubicacion (id, latitud, longitud) values (3, -34.9080362, -56.1741158);

insert into deliverit.delivery (id, usuario, vehiculo, token, ubicacion) values (1, 1, 3, 'dOdgcCmYW04:APA91bHhFbeNJMfiw4IJx12JI42msPhaIRXv-HRjMWaJBI3ktzNKDOvrgMVKi9kTsZC4mD5epQTH7oJKPoWti2lC36B_JipqB93eBDEMHzL606yH0f2ng7b29fHkO5m_1DkvTkhMrhr6', 1);
insert into deliverit.delivery (id, usuario, vehiculo, token, ubicacion) values (2, 2, 1, 'dOdgcCmYW04:APA91bHhFbeNJMfiw4IJx12JI42msPhaIRXv-HRjMWaJBI3ktzNKDOvrgMVKi9kTsZC4mD5epQTH7oJKPoWti2lC36B_JipqB93eBDEMHzL606yH0f2ng7b29fHkO5m_1DkvTkhMrhr6', 3);

insert into deliverit.restaurant (id, usuario, rut, razon_social) values (1, 3, 215162250011, 'Pancho Va S.R.L.');
insert into deliverit.direccion (id, calle, nro_puerta, esquina, latitud, longitud) values (1, 'Bv. España', 2140, 'Joaquín de Salterain', -34.908865, -56.1717083);
insert into deliverit.sucursal (id, restaurant, nombre, direccion) values (1, 1, 'Casa Central', 1);
insert into deliverit.sucursal (id, restaurant, nombre, direccion) values (2, 1, 'Casa Artigas', 1);

insert into deliverit.viaje (id, precio, sucursal, restaurant, estado) values (1, 100, 1, 1, 1);
insert into deliverit.viaje (id, precio, sucursal, restaurant, estado) values (2, 200, 1, 1, 1);
insert into deliverit.viaje (id, precio, sucursal, restaurant, estado) values (3, 1200, 2, 1, 1);

insert into deliverit.direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) values (2, 'José Ellauri', 2085, 'Francisco Aguilar', 803, -34.9166122, -56.1568794);
insert into deliverit.cliente (nombre, direccion, telefono)  values ('Joaquin Galletto', 2, '098772492');

insert into deliverit.direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) values (3, 'Salto', 1221, 'Gonzalo Ramírez', 101, -34.9124593, -56.1837952);
insert into deliverit.cliente (nombre, direccion, telefono)  values ('José Pedro Varela', 3, '098639378');

insert into deliverit.pedido (id, viaje, detalle, forma_pago, cliente) values (1, 1, 'cuidado con el perro', 'O', 1);
insert into deliverit.pedido (id, viaje, detalle, forma_pago, cliente) values (2, 2, 'cuidado con el gato', 'O', 2);

