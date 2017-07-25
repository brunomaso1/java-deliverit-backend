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
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (19,'Nicaragua', 2422, 'Dr. Duvimioso Terra', 234, -34.890723, -56.166265);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (20,'Dr. Salvador Ferrer Serra', 2180, 'Juan Paullier', 543, -34.895082, -56.170663);
INSERT INTO direccion (id, calle, nro_puerta, esquina, apartamento, latitud, longitud) VALUES (21,'Arenal Grande', 1536, 'Colonia', 754, -34.900626, -56.173947);
/*******************************************************************************
 *********************************** USUARIO ***********************************
 ******************************************************************************/
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (1, 'castrobo', '$2a$11$9kR2OwgavbfGpUJ1o81vwO27u8XalZIoETxZ9hpl4sH468vjD7cua', 'brunomaso1@hotmail.com', 091456999, 2134, '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AEEC83PN17//4/sffubjH3i9qeXsdZ2EQGGeTqK79qCaAgGRiCilBJFUuk6utC0iQHRYGoUi6Dd2+Oip93zk9rfeuP/6K7cUF2EQ0KrSZEmrHgB3hwrb4gBEf/vfve2aKxY+/Eff2rltfutS749/882333Pk7sPP7901xwbNYH7Str069XvN5nBcSiw0VjfpwqT0qjRXyYX1kRcvEaZomgaqTV0vzPc0pSpVy3MLatVwmt1JpfWbuTp5KQYMJy2gQpSSVXShsY1RS2DQr7Su2wwRjseTuabX1LI+dpp+5C/v2BxOcrjXzXx/wT2nqmYEKAoRATy34a6qlpLnvHNx/opdB3Jud2ybP7h77qaXveifvv5VKJOl+f7y4ta0uHT5od3rtC8fPtps3bJr/67jY37nyLkrDu6bovrcfT9h1VPBQr9ZWZr73c9/50N/+jUVgzCKryw2z506/4nbvzvdHJXR0PJ0Lunv/e9vvf03PvWdx4/Nz/cjWHJpKju3Pv78Nx8LypalwdE1Pr06Xdi6Yv25q666/MQ4vvroC0sry1u2rezYugzg3PoUdeotLDaLizBBCc9u7/vFN5JhyUSVEBJIqdefe/KZk39zz/f2Xbqydbl5+VV7nj89/btvP3T1gZ07t87/xz/66uLc3If+8I5PfPHrKwtze1b6t/2HP//sXYdX5ge/8+d3/dnt39i62Fx35e5v/vDZj99+/+fueeTRnxy79uCWx589++QL5xf7zX//3He/eM/392ybf9Helfsfef7/3P2Dv3vgscePvvDgY8fe+LI9NRnkcJJ//Q/u/Is777/h6ktHE77zQ59+7vipRvnRT3+9Mn3/733hk397756dW2657tATx1bv/f5jiwuDW2++anFuAaIACJglzcPNyfra+PzqdG3VN9fK5vr4zJnp6pkyHQGKCAtiMlYvgJ4+N7xi745XvWTX3Q98+6r985Dedx567PxoE2KjSbnj3sPzcwXoPXn8zBr81//XXV954Mj7333DLddf0awItYK71PXBfYtAOnp29eQ4v/u/3fGNx5755Id/7g03vPTZE6uPnjq7df/ehZ0757dvL2qAHjm3/uDTJzc3N3707KltK/WLDyzf98g/XHPlClB98wePrq6t3vTSy6qmt7E5GW6Owst0PMqbw/Ha6nD1jNaDQd0fpLpJTU9SrVXSKhUggoDW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');
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
INSERT INTO sucursal (id, restaurant, nombre, direccion) VALUES (1, 1, 'Pancho Va', 1);
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
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (1,"Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (1,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (2,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (3,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (3,"In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (3,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (4,"Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (5,"dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (5,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (6,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (7,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (7,"aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (7,"sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (8,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (8,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (9,"Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (9,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (10,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (10,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (10,"nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-07-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (11,"Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (11,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (12,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (13,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (13,"In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (13,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (14,"Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (15,"dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (15,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (16,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (17,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (17,"aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (17,"sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (18,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (18,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (19,"Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (19,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (20,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (20,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (20,"nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-06-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (21,"Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (21,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (22,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (23,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (23,"In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (23,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (24,"Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (25,"dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (25,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (26,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (27,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (27,"aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (27,"sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (28,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (28,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (29,"Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (29,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (30,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (30,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (30,"nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-05-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (31,"Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (31,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (32,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (33,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (33,"In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (33,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (34,"Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (35,"dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (35,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (36,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (37,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (37,"aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (37,"sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (38,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (38,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (39,"Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (39,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (40,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (40,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (40,"nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-04-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (41,"Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (41,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (42,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (43,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (43,"In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (43,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (44,"Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (45,"dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (45,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (46,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (47,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (47,"aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (47,"sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (48,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (48,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (49,"Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (49,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (50,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (50,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (50,"nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-03-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (51,"Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (51,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (52,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (53,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (53,"In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (53,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (54,"Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (55,"dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (55,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (56,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (57,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (57,"aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (57,"sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (58,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (58,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (59,"Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (59,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (60,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (60,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (60,"nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-02-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (61,"Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (61,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (62,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (63,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (63,"In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (63,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (64,"Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (65,"dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (65,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (66,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (67,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (67,"aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (67,"sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (68,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (68,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (69,"Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (69,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (70,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (70,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (70,"nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non","E",20);
-- PARA "2017-01-20 23:26:16":
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (71,"Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec","E",1);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (71,"Suspendisse ac metus vitae velit egestas lacinia. Sed congue,","E",2);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (72,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec","E",3);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (73,"ultricies ornare, elit elit fermentum risus, at fringilla","E",4);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (73,"In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;","E",5);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (73,"dolor dolor,","E",6);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (74,"Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius","E",7);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (75,"dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.","E",8);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (75,"Curabitur vel lectus. Cum sociis","E",9);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (76,"gravida sit amet, dapibus id, blandit at, nisi. Cum sociis","E",10);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (77,"libero et tristique pellentesque, tellus sem mollis dui, in sodales elit","E",11);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (77,"aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","E",12);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (77,"sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam","E",13);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (78,"dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis","E",14);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (78,"ante lectus convallis est, vitae sodales","E",15);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (79,"Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,","E",16);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (79,"Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc","E",17);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (80,"pretium aliquet, metus urna convallis erat,","E",18);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (80,"Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie","E",19);
INSERT INTO pedido (viaje, detalle, forma_pago, cliente) VALUES (80,"nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non","E",20);
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