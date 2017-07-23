USE deliverit;

-- ESTADOS
BEGIN;
-- CUSTOM DATA
INSERT INTO estado_viaje (id,descripcion) VALUES (1,'Pendiente');
INSERT INTO estado_viaje (id,descripcion) VALUES (2,'Publicado');
INSERT INTO estado_viaje (id,descripcion) VALUES (3,'En proceso');
INSERT INTO estado_viaje (id,descripcion) VALUES (4,'Finalizado');
-- GENERATED DATA

COMMIT;

-- VEHICULOS
BEGIN;
-- CUSTOM DATA
INSERT INTO vehiculo (id, descripcion) VALUES (1,'Automotor');
INSERT INTO vehiculo (id, descripcion) VALUES (2,'Ciclomotor');
INSERT INTO vehiculo (id, descripcion) VALUES (3,'Bicileta');
INSERT INTO vehiculo (id, descripcion) VALUES (4,'Skate');
INSERT INTO vehiculo (id, descripcion) VALUES (5,'Rollers');
INSERT INTO vehiculo (id, descripcion) VALUES (6,'Ninguno');
-- GENERATED DATA

COMMIT;

-- DIRECCION
BEGIN;
-- CUSTOM DATA
INSERT INTO direccion (id, calle, nro_puerta, esquina, latitud, longitud) values (1,'Bv. España', 2140, 'Joaquín de Salterain', -34.908382, -56.170944);
INSERT INTO direccion (id, calle, nro_puerta, esquina, latitud, longitud) values (2,'Av. Gral. Rivera', 3488, 'L. A. de Herrera', -34.901344, -56.139004);
INSERT INTO direccion (id, calle, nro_puerta, esquina, latitud, longitud) values (3,'Juan Manuel Blanes', 1136, 'Maldonado', -34.9086887, -56.1701475);
-- GENERATED DATA
COMMIT;

-- CLIENTE
BEGIN;
-- CUSTOM DATA
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (1,"Bruno Masoller",3,"091414979");
-- GENERATED DATA
COMMIT;

-- USUARIO
BEGIN;
-- CUSTOM DATA
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (1, 'PanchoVa', '$2a$11$9kR2OwgavbfGpUJ1o81vwO27u8XalZIoETxZ9hpl4sH468vjD7cua', 'brunomaso1@hotmail.com', 091456999, 2134, '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AEEC83PN17//4/sffubjH3i9qeXsdZ2EQGGeTqK79qCaAgGRiCilBJFUuk6utC0iQHRYGoUi6Dd2+Oip93zk9rfeuP/6K7cUF2EQ0KrSZEmrHgB3hwrb4gBEf/vfve2aKxY+/Eff2rltfutS749/882333Pk7sPP7901xwbNYH7Str069XvN5nBcSiw0VjfpwqT0qjRXyYX1kRcvEaZomgaqTV0vzPc0pSpVy3MLatVwmt1JpfWbuTp5KQYMJy2gQpSSVXShsY1RS2DQr7Su2wwRjseTuabX1LI+dpp+5C/v2BxOcrjXzXx/wT2nqmYEKAoRATy34a6qlpLnvHNx/opdB3Jud2ybP7h77qaXveifvv5VKJOl+f7y4ta0uHT5od3rtC8fPtps3bJr/67jY37nyLkrDu6bovrcfT9h1VPBQr9ZWZr73c9/50N/+jUVgzCKryw2z506/4nbvzvdHJXR0PJ0Lunv/e9vvf03PvWdx4/Nz/cjWHJpKju3Pv78Nx8LypalwdE1Pr06Xdi6Yv25q666/MQ4vvroC0sry1u2rezYugzg3PoUdeotLDaLizBBCc9u7/vFN5JhyUSVEBJIqdefe/KZk39zz/f2Xbqydbl5+VV7nj89/btvP3T1gZ07t87/xz/66uLc3If+8I5PfPHrKwtze1b6t/2HP//sXYdX5ge/8+d3/dnt39i62Fx35e5v/vDZj99+/+fueeTRnxy79uCWx589++QL5xf7zX//3He/eM/392ybf9Helfsfef7/3P2Dv3vgscePvvDgY8fe+LI9NRnkcJJ//Q/u/Is777/h6ktHE77zQ59+7vipRvnRT3+9Mn3/733hk397756dW2657tATx1bv/f5jiwuDW2++anFuAaIACJglzcPNyfra+PzqdG3VN9fK5vr4zJnp6pkyHQGKCAtiMlYvgJ4+N7xi745XvWTX3Q98+6r985Dedx567PxoE2KjSbnj3sPzcwXoPXn8zBr81//XXV954Mj7333DLddf0awItYK71PXBfYtAOnp29eQ4v/u/3fGNx5755Id/7g03vPTZE6uPnjq7df/ehZ0757dvL2qAHjm3/uDTJzc3N3707KltK/WLDyzf98g/XHPlClB98wePrq6t3vTSy6qmt7E5GW6Owst0PMqbw/Ha6nD1jNaDQd0fpLpJTU9SrVXSKhUggoDW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');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (2, 'La Pasiva', '$2a$11$9kR2OwgavbfGpUJ1o81vwO27u8XalZIoETxZ9hpl4sH468vjD7cua', 'lapasiva@notengoemail.com', 262872622, 2341, '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');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (3, 'pedoPicaPiedra', 1, 'pedoPicaPiedra@dfdfd.com', 091123456, 2313, '');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (4, 'batman', 1, 'batman@dfdfd.com', 091654987, 3265, '');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (5, 'superman', 1, 'superman@dfdfd.com', 095656231, 5241, '');
-- GENERATED DATA
COMMIT;

-- SUCURSAL
BEGIN;
-- CUSTOM DATA
INSERT INTO restaurant (id, usuario, rut, razon_social) VALUES (1, 1, 213162250011, 'Pancho Va S.S.R.L');
INSERT INTO restaurant (id, usuario, rut, razon_social) VALUES (2, 2, 22265432100, 'La Pasiva');
INSERT INTO sucursal (id, restaurant, nombre, direccion) VALUES (1, 1, 'Pancho Va', 1);
INSERT INTO sucursal (id, restaurant, nombre, direccion) VALUES (2, 2, 'La Pasiva Rivera', 2);
-- GENERATED DATA

COMMIT;

-- UBICACION
BEGIN;
-- CUSTOM DATA
INSERT INTO ubicacion (id, latitud, longitud) VALUES (1, -34.905464, -56.170958);
INSERT INTO ubicacion (id, latitud, longitud) VALUES (2, -34.906273, -56.174241);
INSERT INTO ubicacion (id, latitud, longitud) VALUES (3, -34.909734, -56.174136);
-- GENERATED DATA

COMMIT;

-- DELIVERY
BEGIN;
-- CUSTOM DATA
INSERT INTO delivery (id, usuario, calificacion, vehiculo, nombre, token, ubicacion) VALUES (1, 3, 5, 1, "Jose Salamin", "", 1);
INSERT INTO delivery (id, usuario, calificacion, vehiculo, nombre, token, ubicacion) VALUES (2, 4, 5, 3, "Sofia Michone", "", 2);
INSERT INTO delivery (id, usuario, calificacion, vehiculo, nombre, token, ubicacion) VALUES (3, 5, 5, 2, "Rosiadme Vmajd", "", 3);
-- GENERATED DATA

COMMIT;

-- VIAJE
BEGIN;
-- CUSTOM DATA
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (1, null, 10, 1, 1, 2, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (2, null, 20, 2, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (3, 1, 30, 3, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (4, null, 40, null, 1, 1, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (5, null, 50, null, 2, 1, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (6, null, 60, 1, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (7, 2, 70, 2, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (8, 5, 80, 3, 1, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (9, 5, 90, 2, 2, 4, sysdate());
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (10, null, 100, 2, 2, 4, sysdate());
-- GENERATED DATA

COMMIT;

-- PEDIDO
BEGIN;
-- CUSTOM DATA
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (1, 1, 'Perro', 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (2, 2, 'Perro1', 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (3, 3, 'Perro2', 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (4, 4, 'Perro3', 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (5, 5, 'Perro4', 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (6, 6, "", 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (7, 7, "", 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (8, 8, 'Gato', 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (9, 9, 'Perro5', 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (10, 10, 'Perro', 'E', 1);
INSERT INTO pedido (id, viaje, detalle, forma_pago, cliente) VALUES (11, 2, 'Perro8', 'E', 1);
-- GENERATED DATA

COMMIT;

-- TRANSACCION
BEGIN;
-- CUSTOM DATA

-- GENERATED DATA

COMMIT;

-- CONFIGURACION
BEGIN;
-- CUSTOM DATA
INSERT INTO configuracion (id, descripcion, valor) VALUES (1,'API_KEY_GOOGLE', 'AIzaSyA2NCnQBRCbuXHbNeUY7mW-lvP-v4V3x8A');
INSERT INTO configuracion (id, descripcion, valor) VALUES (2,'SERVIDOR_FIREBASE', 'AAAAXNmpFoo:APA91bFF5e1i3mZHE3APivYcHlnkS2ng7_quGr1ecuspOP68gjEnA13OIVUiPgKxVuqvCmnmDU_ZmcOl6OxJ1sEWQSjVYWB_wspNIx8lc0NjFYylx-uMPzfi-xnJhcPb2nVc852lMbZ5');
INSERT INTO configuracion (id, descripcion, valor) VALUES (3,'MAIL_DELIVERIT', 'deliverituy@gmail.com');
INSERT INTO configuracion (id, descripcion, valor) VALUES (4,'MAIL_DELIVERIT_PASS', 'deliveritadmin');
INSERT INTO configuracion (id, descripcion, valor) VALUES (5,'MAIL_DELIVERIT_USER', 'deliverituy');
INSERT INTO configuracion (id, descripcion, valor) VALUES (6, 'PORCENTAJE', '20');
-- GENERATED DATA

COMMIT;