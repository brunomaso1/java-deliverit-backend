use deliverit;

SELECT * FROM delivery;
SELECT * FROM usuario;
SELECT * FROM vehiculo;
SELECT * FROM ubicacion;

INSERT INTO ubicacion VALUES (1, -34.905464, -56.170958);
INSERT INTO ubicacion VALUES (2, -34.906273, -56.174241);
INSERT INTO ubicacion VALUES (3, -34.909734, -56.174136);

INSERT INTO usuario VALUES (2, 'pedoPicaPiedra', 1, 'pedoPicaPiedra@dfdfd.com', 091123456, 2313, '');
INSERT INTO usuario VALUES (3, 'batman', 1, 'batman@dfdfd.com', 091654987, 3265, '');
INSERT INTO usuario VALUES (4, 'superman', 1, 'superman@dfdfd.com', 095656231, 5241, '');

INSERT INTO delivery VALUES (1, 2, 0, 1, '', 1);
INSERT INTO delivery VALUES (2, 3, 0, 3, '', 2);
INSERT INTO delivery VALUES (3, 4, 0, 2, '', 3);

INSERT INTO viaje VALUES (1, 0, 50, 1, 1, 1, 3, sysdate());
INSERT INTO pedido VALUES (1, 1, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (2, 1, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (3, 1, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (4, 1, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (5, 1, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (6, 1, 'Perro', 'E', 1, sysdate());

INSERT INTO viaje VALUES (2, 0, 50, 2, 1, 1, 3, sysdate());
INSERT INTO pedido VALUES (7, 2, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (8, 2, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (9, 2, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (10, 2, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (11, 2, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (12, 2, 'Perro', 'E', 1, sysdate());

select * from cliente;

select * from viaje;

INSERT INTO viaje VALUES (3, 0, 50, 3, 1, 1, 3, sysdate());
INSERT INTO pedido VALUES (13, 3, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (14, 3, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (15, 3, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (16, 3, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (17, 3, 'Perro', 'E', 1, sysdate());
INSERT INTO pedido VALUES (18, 3, 'Perro', 'E', 1, sysdate());