/* 
insert into deliverit.vehiculo (descripcion) values ('Automotor');
insert into deliverit.vehiculo (descripcion) values ('Ciclomotor');
insert into deliverit.vehiculo (descripcion) values ('Bicileta');
insert into deliverit.vehiculo (descripcion) values ('Skate');
insert into deliverit.vehiculo (descripcion) values ('Rollers');
insert into deliverit.vehiculo (descripcion) values ('Ninguno');
insert into deliverit.estado_viaje (descripcion) values ('Pendiente');
insert into deliverit.estado_viaje (descripcion) values ('Publicado');
insert into deliverit.estado_viaje (descripcion) values ('En proceso');
insert into deliverit.estado_viaje (descripcion) values ('Finalizado');
*/
insert into deliverit.direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) values (1, 'Juan D. Jackson', 1123, 'Maldonado', 0, -34.9090373, -56.1742508);
insert into deliverit.usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) values (1, 'panchoVa', 'a123456789.', 'a@b.com', 091456987, 1234, 'saksjfmoeker');
insert into deliverit.usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) values (2, 'donaldTrump', 'a123456789.', 'a@b.com', 091456987, 1234, 'saksjfmoeker');
insert into deliverit.restaurant (id, usuario, rut, razon_social) values (1, 1, 123456789, 'Pancho Va S.R.L');
insert into deliverit.ubicacion (id, latitud, longitud) values (1, -34.9087601, -56.1741382);
insert into deliverit.delivery (usuario, calificacion, vehiculo, token, ubicacion) values (2, 5, 1, 'abcdefghijklmnopqrstuvwxyz', 1);
insert into deliverit.sucursal (restaurant, nombre, direccion) values (1, 'Pancho Va Centro', 1);