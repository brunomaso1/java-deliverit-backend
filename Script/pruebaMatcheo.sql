insert into deliverit.usuario (id, nombre, password, mail, cuenta_red_pagos) values (1, 'juan', 'a12345678.', 
	'juanmartegoytia@gmail.com', 2020);
insert into deliverit.usuario (id, nombre, password, mail, cuenta_red_pagos) values (2, 'brunomaso', 'a12345678.', 
	'brunomaso1@gmail.com', 2021);
insert into deliverit.usuario (id, nombre, password, mail, cuenta_red_pagos) values (3, 'panchoVa', 'a12345678.', 
	'pancho_va@gmail.com', 2023);    
    
insert into deliverit.usuario_telefono (usuario, telefono) values (1, '099994974');
insert into deliverit.usuario_telefono (usuario, telefono) values (2, '091414979');
insert into deliverit.usuario_telefono (usuario, telefono) values (3, '24085407');

insert into deliverit.ubicacion (id, latitud, longitud) values (1, -34.8972679, -56.1692596);
insert into deliverit.ubicacion (id, latitud, longitud) values (2, -34.9080406, -56.1741158);

insert into deliverit.delivery (id, usuario, vehiculo, token, ubicacion) values (1, 1, 3, 'dOdgcCmYW04:APA91bHhFbeNJMfiw4IJx12JI42msPhaIRXv-HRjMWaJBI3ktzNKDOvrgMVKi9kTsZC4mD5epQTH7oJKPoWti2lC36B_JipqB93eBDEMHzL606yH0f2ng7b29fHkO5m_1DkvTkhMrhr6', 1);
insert into deliverit.delivery (id, usuario, vehiculo, token, ubicacion) values (2, 2, 1, 'dOdgcCmYW04:APA91bHhFbeNJMfiw4IJx12JI42msPhaIRXv-HRjMWaJBI3ktzNKDOvrgMVKi9kTsZC4mD5epQTH7oJKPoWti2lC36B_JipqB93eBDEMHzL606yH0f2ng7b29fHkO5m_1DkvTkhMrhr6', 2);

insert into deliverit.restaurant (id, usuario, rut, razon_social) values (1, 3, 2151622, 'Pancho Va S.R.L.');
insert into deliverit.direccion (calle, nro_puerta, esquina, latitud, longitud) values ('Bv. España', 2140, 'Joaquín de Salterain', -34.908865, -56.1717083);
insert into deliverit.sucursal (id, restaurant, nombre, direccion) values (1, 1, 'Casa Central', 1);
insert into deliverit.sucursal (id, restaurant, nombre, direccion) values (2, 1, 'Casa Artigas', 1);

insert into deliverit.viaje (precio, sucursal, restaurant, estado) values (100, 1, 1, 1);
insert into deliverit.viaje (precio, sucursal, restaurant, estado) values (200, 1, 1, 1);
insert into deliverit.viaje (precio, sucursal, restaurant, estado) values (1200, 2, 1, 1);


insert into deliverit.pedido (id, viaje, detalle, forma_pago) values (2, 1, 'cuidado con el perro', 'O');
insert into deliverit.pedido (id, viaje, detalle, forma_pago) values (45, 3, 'cuidado con el gato', 'O');

insert into deliverit.direccion (calle, nro_puerta, esquina, apartamento, latitud, longitud) values ('José Ellauri', 2085, 'Francisco Aguilar', 803, -34.9166122, -56.1568794);
insert into deliverit.cliente (nombre, direccion)  values ('Joaquin Galletto', 2);

update deliverit.pedido set cliente = 1 where id <> 0;

insert into deliverit.cliente_telefono (cliente, telefono) values (1, '098756990');