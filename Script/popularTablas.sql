USE deliverit;
BEGIN;
/*******************************************************************************
 ******************************** CONFIGURACION ********************************
 ******************************************************************************/ 
INSERT INTO configuracion (id, descripcion, valor) VALUES (1,'API_KEY_GOOGLE', 'AIzaSyA2NCnQBRCbuXHbNeUY7mW-lvP-v4V3x8A');
INSERT INTO configuracion (id, descripcion, valor) VALUES (2,'SERVIDOR_FIREBASE', 'AAAAXNmpFoo:APA91bFF5e1i3mZHE3APivYcHlnkS2ng7_quGr1ecuspOP68gjEnA13OIVUiPgKxVuqvCmnmDU_ZmcOl6OxJ1sEWQSjVYWB_wspNIx8lc0NjFYylx-uMPzfi-xnJhcPb2nVc852lMbZ5');
INSERT INTO configuracion (id, descripcion, valor) VALUES (3,'MAIL_DELIVERIT', 'deliverituy@gmail.com');
INSERT INTO configuracion (id, descripcion, valor) VALUES (4,'MAIL_DELIVERIT_PASS', 'deliveritadmin');
INSERT INTO configuracion (id, descripcion, valor) VALUES (5,'MAIL_DELIVERIT_USER', 'deliverituy');
INSERT INTO configuracion (id, descripcion, valor) VALUES (6, 'PORCENTAJE', '20');
/*******************************************************************************
 *********************************** ESTADOS ***********************************
 ******************************************************************************/
INSERT INTO estado_viaje (id,descripcion) VALUES (1,'Pendiente');
INSERT INTO estado_viaje (id,descripcion) VALUES (2,'Publicado');
INSERT INTO estado_viaje (id,descripcion) VALUES (3,'En proceso');
INSERT INTO estado_viaje (id,descripcion) VALUES (4,'Finalizado');
/*******************************************************************************
 ********************************** VEHICULOS **********************************
 ******************************************************************************/
INSERT INTO vehiculo (id, descripcion) VALUES (1,'Automotor');
INSERT INTO vehiculo (id, descripcion) VALUES (2,'Ciclomotor');
INSERT INTO vehiculo (id, descripcion) VALUES (3,'Bicileta');
INSERT INTO vehiculo (id, descripcion) VALUES (4,'Skate');
INSERT INTO vehiculo (id, descripcion) VALUES (5,'Rollers');
INSERT INTO vehiculo (id, descripcion) VALUES (6,'Ninguno');
/*******************************************************************************
 ********************************** DIRECCION **********************************
 ******************************************************************************/
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (1,'Av. 18 de Julio', 2150, 'Juan Paullier', null, -34.8991854, -56.1688107);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (2,'Gral. Urquiza', 2520, 'Presidente Berro', 101, -34.8928147, -56.1643722);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (3,'Av. 8 de Octubre', 2678, 'Dr. Manuel Albo', 362, -34.8900901, -56.1606124);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (4,'Av Italia', 2537, 'Presidente Berro', 273, -34.8931107, -56.1611142);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (5,'Presidente Berro', 2694, 'Gerardo Grasso', 178, -34.8928659,-56.1610024);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (6,'Bulevard General Artigas', 1962, 'Miguelete', 273, -34.8913757, -56.1652592);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (7,'Eduardo Victor Haedo', 2110, 'Dr Martín Casimiro Martínez', 101, -34.8978942, -56.1723143);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (8,'Acevedo Diaz', 1513, 'Ana Monterroso de Lavalleja', 23, -34.8995861,-56.1670191);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (9,'Coronel Brandzen', 2156, 'Juan Paullier', 173, -34.8991786, -56.1678146);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (10,'Dr. Joaquín Requena', 1617, 'Colonia', 574, -34.899269, -56.169924); 
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (11,'Dr. Joaquín Requena', 1701, 'Presidente Berro', 786, -34.896865, -56.171093);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (12,'José Enrique Rodó', 2232, 'Dr. Joaquín Requena', 465, -34.903281, -56.168542);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (13,'Av. Gral. Rivera', 2298, 'Dr. Mario Cassinoni', 424, -34.9021421, -56.1656577);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (14,'José Enrique Rodó', 2157, 'Joaquín de Salterain', 876, -34.903083, -56.170198);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (15,'Dr Prudencio de Pena', 2520, 'Pedro Campbell', 154, -34.897662, -56.160392);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (16,'Bulevard General Artigas', 1514, 'Palmar', 345, -34.900531, -56.164072);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (17,'Morales', 2610, 'Prof Dr Julio A. Bauzá', 765, -34.895021, -56.162884);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (18,'Dr. Mario Cassinoni', 1686, 'Colonia', 345, -34.896082, -56.166068);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (19,'Nicaragua', 2422, 'Dr. Duvimioso Terra', 234, -34.890723, -56.166265);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (20,'Dr. Salvador Ferrer Serra', 2180, 'Juan Paullier', 543, -34.895082, -56.170663);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (21,'Arenal Grande', 1536, 'Colonia', 754, -34.900626, -56.173947);
/*******************************************************************************
 *********************************** USUARIO ***********************************
 ******************************************************************************/
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (1, 'castrobo', '$2a$11$9kR2OwgavbfGpUJ1o81vwO27u8XalZIoETxZ9hpl4sH468vjD7cua', 'brunomaso1@hotmail.com', 091456999, 2134, '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');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (2, 'pedoPicaPiedra', 1, 'pedoPicaPiedra@dfdfd.com', 091123456, 2313, '');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (3, 'batman', 1, 'batman@dfdfd.com', 091654987, 3265, '');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (4, 'superman', 1, 'superman@dfdfd.com', 095656231, 5241, '');
/*******************************************************************************
 ********************************** RESTAURANT *********************************
 ******************************************************************************/
INSERT INTO restaurant (id, usuario, rut, razon_social) VALUES (1, 1, 213162250011, 'Bar Castrobo');
/*******************************************************************************
 *********************************** SUCURSAL **********************************
 ******************************************************************************/
INSERT INTO sucursal (id, restaurant, nombre, direccion) VALUES (1, 1, 'Castrobo 18', 1);
/*******************************************************************************
 *********************************** CLIENTE ***********************************
 ******************************************************************************/
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (1, "Quincy Brock", 2, 099013492);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (2, "Reece Acevedo", 3, 096350822);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (3, "Kenyon Saunders", 4, 096737815);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (4, "Nomlanga Butler", 5, 093765663);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (5, "Rose Luna", 6, 094881111);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (6, "Quinlan Kinney", 7, 095245165);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (7, "Judith Pate", 8, 094436361);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (8, "Colt Norris", 9, 091849998);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (9, "Gloria Huff", 10, 091603548);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (10, "Grant Dickson", 11, 097809747);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (11, "Kiara Roach", 12, 095242117);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (12, "Ayanna Fields", 13, 097911203);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (13, "Patricia Ayala", 14, 094316820);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (14, "Teegan Galloway", 15, 090584670);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (15, "Basil Yang", 16, 096340590);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (16, "Lillith Larson", 17, 096519165);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (17, "Vance Duffy", 18, 099786225);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (18, "Kyle Townsend", 19, 091157374);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (19, "Ivor Conley", 20, 096111872);
INSERT INTO cliente (id, nombre, direccion, telefono) VALUES (20, "Yael Fuentes", 21, 091085795);
/*******************************************************************************
 *********************************** UBICACION *********************************
 ******************************************************************************/
INSERT INTO ubicacion (id, latitud, longitud) VALUES (1, -34.896814, -56.1698577);
INSERT INTO ubicacion (id, latitud, longitud) VALUES (2, -34.9017258, -56.1643277);
INSERT INTO ubicacion (id, latitud, longitud) VALUES (3, -34.8909266, -56.165327);
/*******************************************************************************
 *********************************** DELIVERY **********************************
 ******************************************************************************/
INSERT INTO delivery (id, usuario, calificacion, vehiculo, nombre, token, ubicacion) VALUES (1, 2, 5, 1, "Jose Salamin", "", 1);
INSERT INTO delivery (id, usuario, calificacion, vehiculo, nombre, token, ubicacion) VALUES (2, 3, 5, 3, "Sofia Michone", "", 2);
INSERT INTO delivery (id, usuario, calificacion, vehiculo, nombre, token, ubicacion) VALUES (3, 4, 5, 2, "Rosiadme Vmajd", "", 3);
/*******************************************************************************
 ************************************ VIAJE ************************************
 ******************************************************************************/
-- PARA HOY:
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (1, null, 25, null, 1, 2, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (2, null, 50, 2, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (3, 1, 70, 3, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (4, null, 120, null, 1, 1, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (5, null, 40, null, 1, 1, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (6, null, 60, 1, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (7, 2, 70, 2, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (8, 5, 80, 3, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (9, 5, 90, 2, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (10, 4, 80, 3, 1, 4, sysdate());
-- PARA "2017-07-20 23:26:16":
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (11, null, 25, null, 1, 2, "2017-07-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (12, null, 50, 2, 1, 4, "2017-07-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (13, 1, 70, 3, 1, 4, "2017-07-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (14, null, 120, null, 1, 1, "2017-07-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (15, null, 40, null, 1, 1, "2017-07-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (16, null, 60, 1, 1, 4,"2017-07-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (17, 2, 70, 2, 1, 4, "2017-07-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (18, 5, 80, 3, 1, 4, "2017-07-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (19, 5, 90, 2, 1, 4, "2017-07-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (20, 4, 80, 3, 1, 4, "2017-07-20 23:26:16");
-- PARA "2017-06-20 23:26:16":
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (21, null, 25, null, 1, 2, "2017-06-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (22, null, 50, 2, 1, 4, "2017-06-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (23, 1, 70, 3, 1, 4, "2017-06-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (24, null, 120, null, 1, 1, "2017-06-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (25, null, 40, null, 1, 1, "2017-06-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (26, null, 60, 1, 1, 4,"2017-06-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (27, 2, 70, 2, 1, 4, "2017-06-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (28, 5, 80, 3, 1, 4, "2017-06-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (29, 5, 90, 2, 1, 4, "2017-06-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (30, 4, 80, 3, 1, 4, "2017-06-20 23:26:16");
-- PARA "2017-05-20 23:26:16":
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (31, null, 25, null, 1, 2, "2017-05-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (32, null, 50, 2, 1, 4, "2017-05-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (33, 1, 70, 3, 1, 4, "2017-05-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (34, null, 120, null, 1, 1, "2017-05-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (35, null, 40, null, 1, 1, "2017-05-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (36, null, 60, 1, 1, 4,"2017-05-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (37, 2, 70, 2, 1, 4, "2017-05-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (38, 5, 80, 3, 1, 4, "2017-05-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (39, 5, 90, 2, 1, 4, "2017-05-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (40, 4, 80, 3, 1, 4, "2017-05-20 23:26:16");
-- PARA "2017-04-20 23:26:16":
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (41, null, 25, null, 1, 2, "2017-04-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (42, null, 50, 2, 1, 4, "2017-04-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (43, 1, 70, 3, 1, 4, "2017-04-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (44, null, 120, null, 1, 1, "2017-04-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (45, null, 40, null, 1, 1, "2017-04-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (46, null, 60, 1, 1, 4,"2017-04-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (47, 2, 70, 2, 1, 4, "2017-04-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (48, 5, 80, 3, 1, 4, "2017-04-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (49, 5, 90, 2, 1, 4, "2017-04-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (50, 4, 80, 3, 1, 4, "2017-04-20 23:26:16");
-- PARA "2017-03-20 23:26:16":
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (51, null, 25, null, 1, 2, "2017-03-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (52, null, 50, 2, 1, 4, "2017-03-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (53, 1, 70, 3, 1, 4, "2017-03-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (54, null, 120, null, 1, 1, "2017-03-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (55, null, 40, null, 1, 1, "2017-03-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (56, null, 60, 1, 1, 4,"2017-03-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (57, 2, 70, 2, 1, 4, "2017-03-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (58, 5, 80, 3, 1, 4, "2017-03-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (59, 5, 90, 2, 1, 4, "2017-03-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (60, 4, 80, 3, 1, 4, "2017-03-20 23:26:16");
-- PARA "2017-02-20 23:26:16":
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (61, null, 25, null, 1, 2, "2017-02-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (62, null, 50, 2, 1, 4, "2017-02-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (63, 1, 70, 3, 1, 4, "2017-02-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (64, null, 120, null, 1, 1, "2017-02-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (65, null, 40, null, 1, 1, "2017-02-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (66, null, 60, 1, 1, 4,"2017-02-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (67, 2, 70, 2, 1, 4, "2017-02-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (68, 5, 80, 3, 1, 4, "2017-02-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (69, 5, 90, 2, 1, 4, "2017-02-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (70, 4, 80, 3, 1, 4, "2017-02-20 23:26:16");
-- PARA "2017-01-20 23:26:16":
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (71, null, 25, null, 1, 2, "2017-01-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (72, null, 50, 2, 1, 4, "2017-01-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (73, 1, 70, 3, 1, 4, "2017-01-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (74, null, 120, null, 1, 1, "2017-01-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (75, null, 40, null, 1, 1, "2017-01-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (76, null, 60, 1, 1, 4,"2017-01-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (77, 2, 70, 2, 1, 4, "2017-01-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (78, 5, 80, 3, 1, 4, "2017-01-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (79, 5, 90, 2, 1, 4, "2017-01-20 23:26:16");
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (80, 4, 80, 3, 1, 4, "2017-01-20 23:26:16");
/*******************************************************************************
 ************************************ PEDIDO ***********************************
 ******************************************************************************/
-- PARA HOY:
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (1,"Nulla semper  tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (1,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (2,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (3,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (3,"In condimentum.  cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (3,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (4,"Integer vulputate, risus a libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (5,"dictum.  sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (5,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (6,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (7,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (7,"aliquet odio.  ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (7,"sociis natoque penatibus et magnis Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (8,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (8,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (9,"Vestibulum ut eros non enim  porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (9,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (10,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (10,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (10," elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-07-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (11,"Nulla semper  tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (11,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (12,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (13,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (13,"In condimentum.  cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (13,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (14,"Integer vulputate, risus a libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (15,"dictum.  sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (15,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (16,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (17,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (17,"aliquet odio.  ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (17,"sociis natoque penatibus et magnis Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (18,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (18,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (19,"Vestibulum ut eros non enim  porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (19,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (20,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (20,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (20," elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-06-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (21,"Nulla semper  tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (21,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (22,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (23,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (23,"In condimentum.  cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (23,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (24,"Integer vulputate, risus a libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (25,"dictum.  sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (25,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (26,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (27,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (27,"aliquet odio.  ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (27,"sociis natoque penatibus et magnis Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (28,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (28,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (29,"Vestibulum ut eros non enim  porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (29,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (30,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (30,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (30," elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-05-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (31,"Nulla semper  tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (31,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (32,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (33,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (33,"In condimentum.  cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (33,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (34,"Integer vulputate, risus a libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (35,"dictum.  sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (35,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (36,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (37,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (37,"aliquet odio.  ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (37,"sociis natoque penatibus et magnis Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (38,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (38,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (39,"Vestibulum ut eros non enim  porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (39,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (40,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (40,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (40," elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-04-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (41,"Nulla semper  tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (41,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (42,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (43,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (43,"In condimentum.  cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (43,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (44,"Integer vulputate, risus a libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (45,"dictum.  sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (45,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (46,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (47,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (47,"aliquet odio.  ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (47,"sociis natoque penatibus et magnis Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (48,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (48,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (49,"Vestibulum ut eros non enim  porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (49,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (50,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (50,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (50," elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-03-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (51,"Nulla semper  tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (51,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (52,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (53,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (53,"In condimentum.  cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (53,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (54,"Integer vulputate, risus a libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (55,"dictum.  sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (55,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (56,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (57,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (57,"aliquet odio.  ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (57,"sociis natoque penatibus et magnis Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (58,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (58,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (59,"Vestibulum ut eros non enim  porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (59,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (60,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (60,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (60," elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-02-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (61,"Nulla semper  tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (61,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (62,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (63,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (63,"In condimentum.  cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (63,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (64,"Integer vulputate, risus a libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (65,"dictum.  sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (65,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (66,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (67,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (67,"aliquet odio.  ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (67,"sociis natoque penatibus et magnis Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (68,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (68,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (69,"Vestibulum ut eros non enim  porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (69,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (70,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (70,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (70," elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-01-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (71,"Nulla semper  tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (71,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (72,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (73,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (73,"In condimentum.  cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (73,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (74,"Integer vulputate, risus a libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (75,"dictum.  sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (75,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (76,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (77,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (77,"aliquet odio.  ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (77,"sociis natoque penatibus et magnis Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (78,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (78,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (79,"Vestibulum ut eros non enim  porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (79,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (80,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (80,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (80," elementum sem, vitae aliquam eros turpis non","E",20);
/*******************************************************************************
 ********************************** TRANSACCION ********************************
 ******************************************************************************/
-- PARA HOY:
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES (sysdate(), 20, 2);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES (sysdate(), 40, 3);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES (sysdate(), 48, 6);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES (sysdate(), 56, 7);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES (sysdate(), 64, 8);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES (sysdate(), 72, 9);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES (sysdate(), 64, 10);
-- PARA "2017-07-20 23:26:16":
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-07-20 23:26:16", 20, 12);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-07-20 23:26:16", 40, 13);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-07-20 23:26:16", 48, 16);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-07-20 23:26:16", 56, 17);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-07-20 23:26:16", 64, 18);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-07-20 23:26:16", 72, 19);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-07-20 23:26:16", 64, 20);
-- PARA "2017-06-20 23:26:16":
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-06-20 23:26:16", 20, 22);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-06-20 23:26:16", 40, 23);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-06-20 23:26:16", 48, 26);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-06-20 23:26:16", 56, 27);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-06-20 23:26:16", 64, 28);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-06-20 23:26:16", 72, 29);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-06-20 23:26:16", 64, 30);
-- PARA "2017-05-20 23:26:16":
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-05-20 23:26:16", 20, 32);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-05-20 23:26:16", 40, 33);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-05-20 23:26:16", 48, 36);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-05-20 23:26:16", 56, 37);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-05-20 23:26:16", 64, 38);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-05-20 23:26:16", 72, 39);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-05-20 23:26:16", 64, 40);
-- PARA "2017-04-20 23:26:16":
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-04-20 23:26:16", 20, 42);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-04-20 23:26:16", 40, 43);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-04-20 23:26:16", 48, 46);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-04-20 23:26:16", 56, 47);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-04-20 23:26:16", 64, 48);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-04-20 23:26:16", 72, 49);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-04-20 23:26:16", 64, 50);
-- PARA "2017-03-20 23:26:16":
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-03-20 23:26:16", 20, 52);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-03-20 23:26:16", 40, 53);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-03-20 23:26:16", 48, 56);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-03-20 23:26:16", 56, 57);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-03-20 23:26:16", 64, 58);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-03-20 23:26:16", 72, 59);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-03-20 23:26:16", 64, 60);
-- PARA "2017-02-20 23:26:16":
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-02-20 23:26:16", 20, 62);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-02-20 23:26:16", 40, 63);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-02-20 23:26:16", 48, 66);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-02-20 23:26:16", 56, 67);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-02-20 23:26:16", 64, 68);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-02-20 23:26:16", 72, 69);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-02-20 23:26:16", 64, 70);
-- PARA "2017-01-20 23:26:16":
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-01-20 23:26:16", 20, 72);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-01-20 23:26:16", 40, 73);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-01-20 23:26:16", 48, 76);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-01-20 23:26:16", 56, 77);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-01-20 23:26:16", 64, 78);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-01-20 23:26:16", 72, 79);
INSERT INTO transaccion (fecha_hora, monto, viaje) VALUES ("2017-01-20 23:26:16", 64, 80);
COMMIT;