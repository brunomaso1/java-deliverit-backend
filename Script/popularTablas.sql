--http://www.generatedata.com/#generator
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
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (100,"Ap #811-8104 Diam. Avenue","6953","P.O. Box 449, 8526 Id, St.","484","-49.54662","-23.53955");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (101,"Ap #594-7519 Sed Ave","7296","Ap #750-1210 Aliquam Road",null,"-66.73018","47.51145");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (102,"246-2471 Integer St.","6232","928 Aliquam St.","3288","-31.78975","13.97869");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (103,"3309 Nec St.","2477","860-9969 Faucibus Ave",null,"-59.09384","-71.8691");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (104,"P.O. Box 679, 3547 Suscipit Av.","935","975 Justo Road",null,"89.17497","22.3749");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (105,"499-4177 Sit St.","178","996-1662 Consectetuer Av.","676","2.44726","-75.0708");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (106,"Ap #937-2374 Feugiat. Ave","936","914-8368 Risus. Street",null,"-23.43207","-31.30593");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (107,"1480 At Rd.","9799","699-8917 Lectus Rd.",null,"-24.58727","46.88253");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (108,"Ap #688-7150 Vel Rd.","114","7230 Eu Road","893","85.44644","71.24092");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (109,"5021 Justo. Rd.","575","P.O. Box 871, 3154 Donec Street",null,"-75.76641","47.01792");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (110,"Ap #576-2997 Elit Road","1782","P.O. Box 140, 3397 Nec Road","4543","-63.18225","81.34554");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (111,"951-2366 Scelerisque, Street","6713","4540 Metus. Road","2126","-41.71967","-75.20983");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (112,"8801 Varius St.","272","P.O. Box 774, 7564 Vitae St.","2519","-37.81169","-39.19425");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (113,"323-6320 Dolor Avenue","7387","P.O. Box 891, 2463 Lorem Road","281","83.72065","-89.63317");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (114,"P.O. Box 381, 5700 Justo Rd.","197","146-2270 Non Ave","454","21.44398","-6.04628");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (115,"Ap #414-4601 Ornare. Rd.","255","Ap #626-9970 Neque. Rd.","7711","3.77536","-14.21609");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (116,"Ap #117-1812 Accumsan St.","971","3620 Elit. Road","836","89.47963","-62.9159");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (117,"3239 Ullamcorper. Road","917","P.O. Box 692, 749 Malesuada Rd.","8391","47.73879","-66.5386");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (118,"Ap #108-4021 Dui, St.","662","6056 Risus. Av.","999","-18.70567","1.044");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (119,"P.O. Box 890, 9374 Aliquet. Rd.","1556","305-8149 A, Road",null,"63.11218","-3.73585");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (120,"9736 In Av.","2722","2602 Ligula. St.","777","77.33074","-87.50819");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (121,"Ap #976-1511 Ad Rd.","4193","532-676 In Rd.","8249","-59.28774","79.15636");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (122,"Ap #390-1056 Eleifend Rd.","566","P.O. Box 189, 8766 Accumsan Road","6482","-60.88652","-71.95248");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (123,"6564 Amet Rd.","478","Ap #556-8016 Est Av.",null,"82.76541","-6.42439");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (124,"Ap #955-7719 Aliquam Av.","787","P.O. Box 495, 9402 Placerat Rd.",null,"-25.0208","-81.39563");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (125,"946-2457 Est. Rd.","862","Ap #665-654 Integer St.","3521","31.61624","-8.61137");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (126,"P.O. Box 833, 6414 Blandit St.","156","P.O. Box 167, 3506 Lectus. Av.",null,"-28.11811","-83.73898");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (127,"9723 Justo Road","788","353-5659 Aliquet Rd.","429","-80.96287","22.0403");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (128,"P.O. Box 405, 7999 Imperdiet, St.","676","P.O. Box 123, 3522 Blandit Rd.","542","6.19173","50.04867");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (129,"Ap #142-4463 Eu Rd.","4666","P.O. Box 782, 9251 Magna Road","7772","37.18341","20.80023");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (130,"Ap #503-432 Lobortis Rd.","4275","Ap #990-3123 Dolor St.","162","34.4205","6.66047");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (131,"Ap #112-4931 Dui. Avenue","9518","Ap #798-8442 Vestibulum, Rd.","7132","87.27505","-25.39735");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (132,"6918 Dolor. St.","6665","Ap #625-3912 Commodo Rd.",null,"88.40283","-53.19471");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (133,"4599 Sapien, St.","1126","4553 A St.","2965","13.01763","1.18185");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (134,"7235 A Rd.","7718","2037 Tincidunt Road","2513","-57.57209","-45.34481");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (135,"P.O. Box 895, 4425 Elit, Street","7534","104-8132 Etiam Av.",null,"-79.01822","-87.54367");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (136,"P.O. Box 430, 7589 Quisque Ave","826","5406 Egestas St.","3167","-54.17997","2.43683");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (137,"347-3784 Faucibus Rd.","657","8311 Egestas Avenue",null,"33.23124","32.56699");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (138,"576-6623 Elit, Ave","8346","520 Auctor Av.","4459","-48.41692","-32.54251");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (139,"3697 Risus Rd.","693","P.O. Box 823, 7347 Suspendisse Ave","8554","47.58191","-24.66604");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (140,"P.O. Box 461, 2052 Mi Road","1423","2308 Etiam Ave","917","1.38465","1.02329");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (141,"P.O. Box 488, 3127 Arcu. Road","223","Ap #253-9742 Elit. Road","925","52.62829","-49.34429");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (142,"P.O. Box 569, 5956 In Rd.","2842","Ap #810-8842 Mus. Street","522","-75.3692","-70.9436");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (143,"P.O. Box 900, 5797 Purus, Avenue","758","P.O. Box 935, 4259 Morbi Ave",null,"87.74331","-53.67846");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (144,"959-7855 Metus. Ave","568","3234 Fusce Rd.","7353","-68.17949","-63.59344");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (145,"P.O. Box 334, 5499 Mauris Avenue","579","8097 Diam Rd.","828","-66.99426","87.4186");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (146,"5892 Nunc Rd.","466","189-5458 Fusce Rd.","516","-29.96123","15.73888");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (147,"9961 Donec Av.","817","9181 Cras Road","285","-72.05005","-54.59717");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (148,"927 Pulvinar Av.","2197","514-1789 Arcu. Road",null,"-78.11503","46.12178");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (149,"3649 Eu St.","894","P.O. Box 341, 9417 In St.","4752","14.05411","-77.88922");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (150,"P.O. Box 158, 3112 Massa. Street","1843","Ap #687-1395 Nisl Street","832","40.10395","-83.93639");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (151,"3325 Eu St.","6467","P.O. Box 724, 8097 Aptent Street",null,"-3.8605","-2.36809");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (152,"P.O. Box 189, 3273 Risus. Road","223","285-6240 Fermentum Street","864","80.67687","-19.58122");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (153,"P.O. Box 655, 7049 Eget Rd.","6711","P.O. Box 761, 6811 Purus, Av.","313","-29.41385","31.59254");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (154,"P.O. Box 362, 6676 Mauris. Rd.","231","P.O. Box 951, 8183 Arcu. Ave",null,"-69.44242","24.79774");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (155,"3145 Convallis Street","251","P.O. Box 332, 7864 Pharetra St.","3813","20.54767","30.16783");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (156,"3781 Et St.","586","156-9147 Et Road",null,"-8.6725","-22.03773");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (157,"8404 Eget Road","9362","P.O. Box 302, 4360 Risus. Rd.","712","-20.02548","3.00012");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (158,"9101 Aliquet Av.","369","7980 Ipsum Street",null,"-3.99018","25.65862");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (159,"P.O. Box 787, 7007 Praesent Avenue","5114","5476 Turpis St.","376","-35.90952","-49.64805");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (160,"Ap #982-2665 In Rd.","9331","P.O. Box 734, 7970 Risus. Ave",null,"52.56272","-26.30599");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (161,"Ap #902-9213 Cras St.","723","P.O. Box 798, 1624 Sodales St.","1444","29.29434","-25.74417");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (162,"4018 Porta Ave","2767","P.O. Box 226, 7665 Est Rd.",null,"1.80171","-10.67555");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (163,"2261 Et Rd.","6127","Ap #715-6142 Non, Street",null,"29.00884","56.78033");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (164,"4714 Velit. Avenue","865","7369 Nec Rd.",null,"-15.44426","-53.72252");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (165,"8420 Arcu. Rd.","276","8393 Elit, Road","7221","-18.01855","50.23777");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (166,"5113 Urna. Street","139","Ap #826-6479 Leo. St.",null,"-16.13869","-83.96268");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (167,"1601 Risus. St.","6158","2660 Velit. Rd.","3464","-52.48274","75.77415");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (168,"682-8126 Amet, Street","264","1296 Torquent Rd.","294","-51.909","-75.87454");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (169,"5325 Risus. Avenue","968","4230 Fringilla St.","5225","-70.28691","-89.25297");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (170,"549 Vitae Rd.","922","9372 Vestibulum. St.","956","-17.48472","-34.33857");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (171,"Ap #736-9614 Sapien St.","5135","967-6464 Sed Road",null,"-8.59385","-60.75402");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (172,"P.O. Box 733, 2451 Blandit. Ave","5189","Ap #898-3569 Ultrices Rd.","5381","-51.83388","-74.97695");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (173,"Ap #674-6034 Felis Rd.","882","7782 Eu St.","8752","-84.06287","-49.34024");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (174,"Ap #918-9197 Vitae Ave","572","Ap #588-1654 Nulla Street","879","-13.44788","-74.40519");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (175,"1595 Nisl. Av.","2316","100-1730 Primis St.","952","62.4783","64.31072");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (176,"793-9990 Donec Street","545","Ap #735-9420 Est, St.","1661","64.54799","77.78935");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (177,"P.O. Box 290, 3449 Cras Av.","362","P.O. Box 663, 623 Nunc Rd.",null,"25.39243","-28.75357");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (178,"9368 Pharetra, St.","3528","721-2500 Vestibulum Road",null,"13.52572","87.37969");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (179,"742-1188 Parturient Road","592","P.O. Box 686, 1644 Sem Ave",null,"53.71274","66.32296");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (180,"917-8952 Semper Rd.","6387","8324 Ipsum. St.","343","-74.19298","88.79926");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (181,"917-6914 Urna. Rd.","8165","432-8028 Lectus Avenue",null,"89.39367","32.60861");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (182,"1387 Duis Rd.","691","Ap #336-8121 At St.","315","13.22078","-33.56347");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (183,"P.O. Box 556, 9033 Interdum St.","8578","Ap #929-9784 Eu Avenue","865","6.72962","22.65472");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (184,"429-4937 Eu Av.","444","8241 Nec St.","839","89.66638","12.59201");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (185,"Ap #565-2196 Tellus Avenue","4343","P.O. Box 893, 4831 Libero. Rd.","594","53.78012","-17.65877");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (186,"Ap #129-9337 Eu Ave","9446","4039 Orci. Ave","5645","53.73454","27.95327");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (187,"6948 Bibendum. Rd.","214","P.O. Box 935, 4662 Purus. Av.",null,"19.05861","-62.66933");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (188,"181-2274 Semper St.","548","3629 Dolor Street","864","80.26929","79.68056");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (189,"445-9052 Vivamus Road","392","P.O. Box 478, 299 Eu St.","3953","30.5502","36.79703");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (190,"607-3566 Dignissim Av.","8139","9746 Vulputate, Rd.","738","-59.48865","66.26698");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (191,"368-7720 Lacinia St.","6781","Ap #794-7988 Ridiculus Street","4215","0.98216","-4.75676");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (192,"518-3976 Vitae Ave","638","P.O. Box 253, 8639 Tortor Rd.",null,"44.2014","-39.66689");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (193,"587-6516 Quam Road","8935","606-7850 Erat. St.","554","-27.10061","-37.93394");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (194,"173-3788 A Road","263","215-5885 Dictum Rd.","627","63.3514","-11.71498");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (195,"5269 Quis Street","117","657-3848 Eget Ave",null,"38.09337","-25.31852");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (196,"953-9276 Dapibus St.","9933","3934 Magna St.","127","-39.50567","-15.82591");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (197,"P.O. Box 580, 8821 Penatibus Street","3829","P.O. Box 702, 1921 Et, Ave",null,"53.09447","-73.41599");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (198,"7526 Mollis St.","2918","P.O. Box 234, 7130 Per Street","2294","-48.70345","-60.73867");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (199,"982-2052 Neque St.","2186","P.O. Box 661, 8945 Non, St.","4584","0.71076","-30.91571");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (200,"Ap #276-6143 Malesuada Avenue","742","9362 Mi. Avenue","4459","76.68927","-48.66174");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (201,"P.O. Box 261, 2287 Ad St.","5569","P.O. Box 584, 3414 Gravida Av.","348","-13.30113","-56.33988");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (202,"5245 Lorem St.","785","Ap #700-8530 Risus Ave",null,"-65.64139","59.76598");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (203,"3362 Ridiculus Avenue","1255","P.O. Box 471, 4149 Diam St.",null,"58.33309","83.89313");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (204,"P.O. Box 740, 3028 Libero Rd.","328","P.O. Box 375, 7107 Nonummy St.","733","-82.287","-11.998");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (205,"4487 Eu Rd.","725","351-4949 Ullamcorper Rd.","9982","-79.09356","33.02655");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (206,"230-1493 Elit, St.","2873","P.O. Box 684, 8448 Penatibus Ave","643","-21.11015","-46.91961");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (207,"4122 Magna St.","8844","P.O. Box 828, 7254 Nullam Av.",null,"-65.96095","-35.47651");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (208,"673-3880 Tincidunt St.","292","377-2891 Diam. Street","194","49.88164","-75.96359");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (209,"756-2706 Elit Street","1993","P.O. Box 960, 9420 Imperdiet, Avenue","3688","-64.53808","26.05601");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (210,"8603 Vitae Rd.","694","7407 Dignissim Avenue","2424","46.19212","71.87707");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (211,"589-6380 Felis, Av.","9838","Ap #589-4258 Donec St.","667","-25.91012","-63.88167");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (212,"P.O. Box 373, 6814 Nibh. St.","9768","428-5966 In Rd.",null,"28.21083","-82.70647");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (213,"980-509 Proin Rd.","9825","P.O. Box 810, 874 Rhoncus. St.","1792","-11.36277","-37.71223");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (214,"P.O. Box 148, 1965 Mauris. St.","446","P.O. Box 998, 6861 Interdum. Rd.","8282","43.30285","76.75723");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (215,"9154 Nibh Avenue","2791","Ap #770-913 In Street","575","-15.67595","40.31317");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (216,"P.O. Box 405, 3956 Mauris St.","9815","443-9091 Sed Rd.",null,"85.83119","-63.49641");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (217,"P.O. Box 897, 3190 Semper Rd.","514","8364 Nunc St.","863","-68.5693","-15.90196");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (218,"P.O. Box 470, 8653 Lacus. Avenue","956","P.O. Box 784, 3760 Velit St.",null,"-41.17642","14.33376");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (219,"P.O. Box 749, 7877 Eu Rd.","3746","469-6260 Semper Rd.",null,"82.43072","12.94013");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (220,"Ap #779-9168 Mi, Av.","6813","956 Curabitur Ave",null,"0.98946","57.88291");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (221,"Ap #546-6642 Neque. Street","1736","Ap #113-7261 Maecenas St.","541","0.47868","84.6737");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (222,"P.O. Box 337, 4107 Pellentesque. St.","397","567-445 Sollicitudin Rd.","455","-81.32608","69.81285");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (223,"Ap #689-3560 Ipsum Road","5546","Ap #147-1828 Tempor Avenue",null,"38.11829","-68.81898");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (224,"1764 Nulla Rd.","483","P.O. Box 389, 9226 Nibh. Ave",null,"-42.41411","2.92237");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (225,"P.O. Box 352, 9678 Vehicula St.","4317","Ap #759-5941 Nulla Rd.","8994","-78.68339","-20.69784");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (226,"Ap #116-9135 Neque. Ave","934","2591 Felis Rd.","528","15.62526","80.08092");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (227,"P.O. Box 889, 7014 Blandit Avenue","474","980-4030 Ante. Av.","761","73.22067","81.77644");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (228,"102-8617 Leo Rd.","574","Ap #421-9662 Congue, Ave",null,"11.33044","35.88327");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (229,"Ap #659-558 Neque Street","785","Ap #169-6968 Nulla. St.",null,"4.05247","52.76919");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (230,"P.O. Box 543, 1469 Fames St.","551","611-2569 Duis Rd.","162","-82.66794","-11.31403");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (231,"8775 Vestibulum Ave","2427","171-8729 Aliquam St.",null,"66.35719","75.22866");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (232,"864-7989 Lectus Ave","2194","143-109 Ante. Ave",null,"66.6255","45.19311");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (233,"8515 Egestas. St.","412","Ap #267-4555 Lobortis St.","8945","68.46864","-52.52673");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (234,"9370 Urna Avenue","5824","P.O. Box 983, 7897 Vestibulum Rd.","7724","70.72224","-49.725");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (235,"Ap #872-5274 Ante St.","3542","P.O. Box 837, 1763 Donec Avenue","2978","-6.6087","-43.05249");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (236,"986-2076 Elementum, Street","828","P.O. Box 208, 6611 Ullamcorper, Street","576","-57.65676","-89.04049");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (237,"531-8990 Orci. St.","4816","Ap #572-4559 Est Rd.",null,"-78.62392","28.07467");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (238,"P.O. Box 582, 7985 Erat Ave","498","668-8264 Felis, Rd.","864","53.07683","17.75495");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (239,"P.O. Box 159, 587 Erat Ave","2533","Ap #987-5338 Fusce Ave","667","4.19951","-62.08926");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (240,"1923 Ut Road","2387","1230 Placerat, Ave",null,"-58.29859","-26.64424");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (241,"P.O. Box 717, 3230 Pellentesque Road","3342","2008 Sed, St.","492","-44.07807","-75.46975");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (242,"9154 In Rd.","832","999-4399 Penatibus Avenue","9429","83.15018","-65.68602");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (243,"141-2577 Proin Road","2135","P.O. Box 272, 3272 Mus. Av.","4551","16.43591","-89.53531");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (244,"578-8507 Lobortis Rd.","4611","8394 Vel St.","9933","-73.21419","50.4485");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (245,"P.O. Box 261, 7891 Augue. Rd.","323","2884 Justo St.","257","82.95996","-61.05474");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (246,"Ap #492-2240 Laoreet Rd.","1754","P.O. Box 265, 7706 Pulvinar Avenue",null,"76.52035","-89.52332");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (247,"Ap #942-893 Nunc Avenue","7483","P.O. Box 838, 1386 Mi Av.","4368","86.27684","43.98029");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (248,"818-1248 Nascetur Av.","347","9081 Nunc St.","736","-66.1584","51.89772");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (249,"Ap #953-770 Mollis. St.","4877","Ap #430-4165 Phasellus Ave","375","-61.94794","-36.75392");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (250,"P.O. Box 656, 8508 A St.","554","488-7964 Libero Avenue",null,"-26.48651","-9.84578");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (251,"7083 Nisi. Rd.","162","162-1963 Mollis. Avenue",null,"38.80698","-10.93546");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (252,"P.O. Box 565, 321 In Av.","6664","P.O. Box 671, 7889 A, Rd.","328","-7.09665","86.0426");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (253,"924-2164 Duis St.","1129","Ap #817-7061 Convallis, Rd.","552","74.73436","-30.99853");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (254,"P.O. Box 623, 4649 Integer Rd.","195","148-307 Cursus St.","151","71.71621","81.16624");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (255,"1555 Phasellus Ave","6983","4821 Facilisi. St.","959","89.50815","60.84564");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (256,"P.O. Box 822, 2023 Et St.","766","Ap #717-9075 Eu Street","4963","9.71857","7.83817");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (257,"P.O. Box 536, 2354 Egestas St.","563","Ap #787-327 Hendrerit Rd.",null,"3.66826","-58.04659");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (258,"Ap #698-6676 Non, Street","926","1278 Luctus Rd.","7852","-56.70659","-49.75244");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (259,"Ap #600-1439 Nullam Rd.","461","1765 Scelerisque Road","568","73.1449","-17.2108");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (260,"Ap #374-621 A Ave","1567","Ap #400-2276 Mauris Ave","1756","-35.69835","85.30749");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (261,"P.O. Box 968, 7300 Vulputate Rd.","8425","Ap #866-6962 Dolor. St.","7184","89.50017","-55.9779");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (262,"7956 Non, St.","5986","P.O. Box 468, 4269 A, Rd.","2762","73.23382","-48.14362");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (263,"P.O. Box 469, 6797 Aenean Rd.","1926","540-1358 Eu Ave",null,"-74.55279","-40.33876");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (264,"Ap #274-1376 Libero. St.","419","525 Nec, Rd.",null,"-2.62467","-87.17682");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (265,"338-2136 Nibh. Rd.","3187","9732 Sed Ave","634","70.66626","52.81013");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (266,"Ap #108-4243 Tempor, Street","883","P.O. Box 244, 9464 Sociis St.","7592","25.22744","-72.9609");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (267,"Ap #594-3673 Ipsum. Street","712","P.O. Box 822, 9945 Morbi Rd.","321","-58.39959","-81.43507");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (268,"Ap #249-2808 Purus, St.","933","6229 Vitae, Rd.","411","48.28639","-76.54007");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (269,"P.O. Box 770, 5259 Dis Rd.","1545","P.O. Box 360, 4920 Proin Rd.","9937","28.86883","52.95049");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (270,"637-8538 Vivamus Ave","417","8073 Tincidunt, Av.","4984","65.94736","8.54023");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (271,"761-9445 Malesuada Road","953","539-6593 Justo Ave","1532","-67.58087","25.84247");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (272,"Ap #736-708 Enim. Rd.","349","940-1425 Orci. Rd.","233","7.61125","67.24925");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (273,"4520 Amet St.","885","Ap #218-2008 Nec Rd.","4851","45.54629","-32.20984");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (274,"149 Molestie Rd.","951","P.O. Box 450, 270 Diam Street","2736","-12.01247","-25.76888");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (275,"824 Arcu. Street","5858","P.O. Box 100, 4978 Mauris St.",null,"-13.34518","-34.892");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (276,"939-4455 Purus Ave","227","6842 Faucibus St.","1844","83.96208","-14.22694");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (277,"240-3203 Fusce St.","454","281-4598 Mauris Ave","371","11.02329","-21.86696");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (278,"965-4312 Adipiscing. Ave","782","Ap #449-6560 Eu, Rd.","3914","-82.49764","87.35262");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (279,"9142 Felis Rd.","467","P.O. Box 448, 523 Aliquam Rd.","5799","-7.8502","47.10917");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (280,"246 Mauris St.","932","828-1508 Molestie Rd.","416","11.89682","-59.15955");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (281,"2777 Vel, Ave","3381","834-3030 Egestas Rd.",null,"-64.31631","-23.63003");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (282,"P.O. Box 520, 7463 Arcu. Ave","575","9488 Sed Road","684","42.35042","78.11825");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (283,"128-1384 Tincidunt St.","7243","8022 Et, Avenue","5238","45.03197","89.16623");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (284,"2640 Justo Av.","6399","330-7302 Cursus St.","4726","-78.20263","20.65933");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (285,"P.O. Box 263, 3248 Convallis Avenue","4194","Ap #410-860 Gravida. Avenue","632","77.42341","-77.05022");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (286,"313-9894 Penatibus St.","4663","845-9151 Sagittis. Avenue",null,"41.08805","-81.27503");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (287,"7452 Sed Avenue","325","Ap #520-1633 Volutpat Rd.","532","-9.20156","-70.93775");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (288,"906-3889 Ornare, Road","778","9620 Nisi. Av.","617","-43.57574","39.62051");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (289,"408-3732 Justo St.","2914","Ap #916-8355 Est, St.","1536","-10.55724","8.45619");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (290,"309-4598 Mauris St.","949","9624 Vitae, Rd.","347","80.26428","23.94884");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (291,"6028 Purus St.","1883","9843 Nibh. Ave","9991","-30.03492","-23.34775");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (292,"Ap #887-9755 Vulputate, Rd.","575","Ap #614-6904 Per St.","8537","-27.24031","-11.59259");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (293,"7262 Tellus Rd.","383","P.O. Box 774, 9050 Nunc Rd.",null,"-62.65792","-6.39938");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (294,"Ap #120-9651 Adipiscing Avenue","9667","P.O. Box 208, 1204 Malesuada. St.",null,"-61.41124","55.44906");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (295,"131-4425 Est, St.","211","3797 Placerat, Road","686","-50.70533","-81.96795");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (296,"Ap #526-5653 Velit Road","973","6147 Ut Road",null,"48.73514","-89.7698");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (297,"1068 Tempor Rd.","968","834-566 Ultrices. Ave","674","-36.85847","-87.47461");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (298,"P.O. Box 573, 2794 Non Rd.","1577","P.O. Box 282, 3776 Fringilla Road","4945","-71.91879","-2.21754");
INSERT INTO direccion (id,calle,nro_puerta,esquina,apartamento,latitud,longitud) VALUES (299,"Ap #680-7953 Nunc Rd.","6615","500-5709 Ultricies Road","838","2.60967","10.14597");
COMMIT;

-- CLIENTE
BEGIN;
-- CUSTOM DATA
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (1,"Bruno Masoller",3,"091414979");
-- GENERATED DATA
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (100,"Kasimir Ferguson",100,"463984933");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (101,"Shannon Logan",101,"385519738");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (102,"Yetta Christian",102,"579871887");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (103,"Cameron Gill",103,"678998655");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (104,"Fredericka Dotson",104,"852634479");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (105,"Gabriel Chase",105,"628346428");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (106,"Shea Allison",106,"582227148");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (107,"Beatrice Simmons",107,"828998173");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (108,"Alexa Rowe",108,"982236955");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (109,"Jescie Tyson",109,"168642538");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (110,"Brett Atkins",110,"271841463");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (111,"Yasir Cote",111,"965127634");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (112,"Summer Dillon",112,"648325361");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (113,"Katelyn Gomez",113,"548314541");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (114,"Belle Grimes",114,"298171273");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (115,"Ruth Pruitt",115,"145236817");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (116,"Scott Gibson",116,"469442923");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (117,"Paula Kerr",117,"764261726");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (118,"Reed Stafford",118,"993317672");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (119,"Rama Bonner",119,"489553151");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (120,"Alice Ross",120,"541819733");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (121,"Hadley Kirkland",121,"584694196");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (122,"Guinevere Perry",122,"699874531");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (123,"Mariko Molina",123,"575677822");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (124,"Elaine Barnes",124,"859944837");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (125,"Aline Harrell",125,"626998691");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (126,"August Kent",126,"992375142");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (127,"Nicholas Henderson",127,"625261258");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (128,"Kibo Booth",128,"973842497");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (129,"Jerome Kemp",129,"223537142");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (130,"Riley Adams",130,"817419433");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (131,"Keegan Cannon",131,"254368725");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (132,"Selma Sheppard",132,"524958896");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (133,"Tanisha Holland",133,"832234239");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (134,"Azalia Salinas",134,"749516967");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (135,"Dieter Valencia",135,"536117529");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (136,"Xena Sanchez",136,"552175372");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (137,"Charity Hunter",137,"359638177");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (138,"Talon Banks",138,"423255867");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (139,"Quon Horne",139,"989829839");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (140,"Hyacinth Santos",140,"567736873");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (141,"Jasper House",141,"933837892");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (142,"Keefe Mays",142,"746856514");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (143,"Amy Stafford",143,"132224939");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (144,"Chaim Hurst",144,"545538266");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (145,"Roary Kramer",145,"288757841");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (146,"Shay Mccray",146,"421973328");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (147,"Jena James",147,"896191831");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (148,"Jamal Kirby",148,"137985911");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (149,"Xerxes Dennis",149,"347374662");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (150,"Hakeem Castillo",150,"681176279");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (151,"Britanney Le",151,"383979879");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (152,"Nehru Sexton",152,"672182666");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (153,"Darrel Alford",153,"555224984");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (154,"Casey Rose",154,"495276371");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (155,"Carson Ryan",155,"384515972");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (156,"Janna Stanley",156,"354554868");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (157,"Hall Battle",157,"338746526");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (158,"Portia Landry",158,"151452435");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (159,"Tiger Rodriguez",159,"186516516");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (160,"Darrel Patterson",160,"127571342");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (161,"Kaden Oliver",161,"143566681");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (162,"Ishmael Jacobs",162,"553567345");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (163,"Yardley Rose",163,"857271724");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (164,"Jared Randolph",164,"119899756");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (165,"Demetrius Mcgee",165,"171186515");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (166,"Winifred Slater",166,"972455321");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (167,"Hall Gallagher",167,"886168698");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (168,"Alvin Richards",168,"852159297");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (169,"Cailin Becker",169,"146845837");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (170,"Caldwell Jefferson",170,"449688488");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (171,"Belle Cortez",171,"489994964");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (172,"Linus Benson",172,"746167732");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (173,"Forrest Ballard",173,"382579236");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (174,"Luke Bowers",174,"779329183");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (175,"Violet Good",175,"572737358");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (176,"Raymond Lloyd",176,"799647252");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (177,"Medge Atkinson",177,"737635198");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (178,"Imelda Bradford",178,"442833117");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (179,"Quinn Watkins",179,"565436478");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (180,"Jescie Hebert",180,"279443371");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (181,"Aretha Merritt",181,"254296268");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (182,"Colorado Clemons",182,"917179934");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (183,"Jameson Ballard",183,"239286686");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (184,"Leila Wiggins",184,"742444363");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (185,"Dante Stevens",185,"567334257");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (186,"Jaquelyn Valencia",186,"411719926");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (187,"Freya Sanchez",187,"289912656");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (188,"Bruno Bauer",188,"989189524");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (189,"Nadine Miranda",189,"118959493");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (190,"Ava Alexander",190,"296289686");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (191,"Miranda Hunter",191,"565529875");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (192,"Kim Stephenson",192,"761322948");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (193,"Raymond Charles",193,"393277334");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (194,"Moana Miller",194,"982271653");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (195,"Briar Carey",195,"467971655");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (196,"Barclay Reilly",196,"752127841");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (197,"Aidan Hunt",197,"872422223");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (198,"Irma Jacobs",198,"435259352");
INSERT INTO cliente (id,nombre,direccion,telefono) VALUES (199,"Bruno Wilkins",199,"582865622");
COMMIT;

-- USUARIO
BEGIN;
-- CUSTOM DATA
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (1, 'PanchoVa', 'a12345678.', 'brunomaso1@gmail.com', 091456999, 2134, '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AEEC83PN17//4/sffubjH3i9qeXsdZ2EQGGeTqK79qCaAgGRiCilBJFUuk6utC0iQHRYGoUi6Dd2+Oip93zk9rfeuP/6K7cUF2EQ0KrSZEmrHgB3hwrb4gBEf/vfve2aKxY+/Eff2rltfutS749/882333Pk7sPP7901xwbNYH7Str069XvN5nBcSiw0VjfpwqT0qjRXyYX1kRcvEaZomgaqTV0vzPc0pSpVy3MLatVwmt1JpfWbuTp5KQYMJy2gQpSSVXShsY1RS2DQr7Su2wwRjseTuabX1LI+dpp+5C/v2BxOcrjXzXx/wT2nqmYEKAoRATy34a6qlpLnvHNx/opdB3Jud2ybP7h77qaXveifvv5VKJOl+f7y4ta0uHT5od3rtC8fPtps3bJr/67jY37nyLkrDu6bovrcfT9h1VPBQr9ZWZr73c9/50N/+jUVgzCKryw2z506/4nbvzvdHJXR0PJ0Lunv/e9vvf03PvWdx4/Nz/cjWHJpKju3Pv78Nx8LypalwdE1Pr06Xdi6Yv25q666/MQ4vvroC0sry1u2rezYugzg3PoUdeotLDaLizBBCc9u7/vFN5JhyUSVEBJIqdefe/KZk39zz/f2Xbqydbl5+VV7nj89/btvP3T1gZ07t87/xz/66uLc3If+8I5PfPHrKwtze1b6t/2HP//sXYdX5ge/8+d3/dnt39i62Fx35e5v/vDZj99+/+fueeTRnxy79uCWx589++QL5xf7zX//3He/eM/392ybf9Helfsfef7/3P2Dv3vgscePvvDgY8fe+LI9NRnkcJJ//Q/u/Is777/h6ktHE77zQ59+7vipRvnRT3+9Mn3/733hk397756dW2657tATx1bv/f5jiwuDW2++anFuAaIACJglzcPNyfra+PzqdG3VN9fK5vr4zJnp6pkyHQGKCAtiMlYvgJ4+N7xi745XvWTX3Q98+6r985Dedx567PxoE2KjSbnj3sPzcwXoPXn8zBr81//XXV954Mj7333DLddf0awItYK71PXBfYtAOnp29eQ4v/u/3fGNx5755Id/7g03vPTZE6uPnjq7df/ehZ0757dvL2qAHjm3/uDTJzc3N3707KltK/WLDyzf98g/XHPlClB98wePrq6t3vTSy6qmt7E5GW6Owst0PMqbw/Ha6nD1jNaDQd0fpLpJTU9SrVXSKhUggoDW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');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (2, 'La Pasiva', 'a12345678.', 'lapasiva@notengoemail.com', 262872622, 2341, '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');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (3, 'pedoPicaPiedra', 1, 'pedoPicaPiedra@dfdfd.com', 091123456, 2313, '');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (4, 'batman', 1, 'batman@dfdfd.com', 091654987, 3265, '');
INSERT INTO usuario (id, nombre, password, mail, telefono, cuenta_red_pagos, foto) VALUES (5, 'superman', 1, 'superman@dfdfd.com', 095656231, 5241, '');
-- GENERATED DATA
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (100,"John Dotson","1","tincidunt.Donec.vitae@pede.net","763353434","9611","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (101,"Alfreda Golden","1","suscipit@placerat.edu","885259754","1446","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (102,"Cassidy Browning","1","risus.Donec@laciniamattisInteger.net","375687648","5334","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (103,"Aaron Meadows","1","pellentesque.eget.dictum@urnaVivamus.edu","198979745","1265","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (104,"Giselle Farley","1","Nullam@mattissemper.com","663161244","8585","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (105,"Amos Gutierrez","1","tristique@aliquetnec.edu","926373964","3178","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (106,"Sonya Kaufman","1","nec@vitaemaurissit.co.uk","148818193","3566","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (107,"Tashya Freeman","1","eu.eros.Nam@eterosProin.edu","177592341","1421","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (108,"Quon Simon","1","vitae.semper@Aliquam.co.uk","347659843","4783","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (109,"Keelie Edwards","1","lacinia.vitae.sodales@velit.net","429231891","1174","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (110,"Leandra Horne","1","mi.Aliquam.gravida@iaculisnec.ca","671531472","3396","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (111,"Celeste Green","1","erat.eget@egetnisidictum.edu","816647825","6314","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (112,"Emerald Alvarado","1","Sed@vel.ca","869779469","4385","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (113,"Porter Sullivan","1","imperdiet@dictumcursus.ca","613326172","1168","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (114,"Elizabeth Dominguez","1","eu.eros.Nam@Donecatarcu.edu","755138792","7916","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (115,"Dante Glenn","1","cursus.Nunc@Duisa.org","498759883","4922","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (116,"Baxter Barton","1","magnis.dis@magnaPhasellusdolor.ca","897251875","4424","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (117,"Octavia Wade","1","egestas@dictummiac.co.uk","913499238","5681","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (118,"Ezra Watts","1","Aenean.eget.metus@parturient.org","338212272","9373","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (119,"Avram Solis","1","lacus@at.co.uk","476121795","4554","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (120,"Calvin Guzman","1","justo.Proin@fames.com","668973345","8635","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (121,"Kimberly Woodward","1","natoque.penatibus@aceleifend.ca","344557144","3255","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (122,"Desirae Yates","1","magna@tristiquealiquet.net","278215832","8581","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (123,"Colin Lancaster","1","non@fringillaeuismod.co.uk","831147495","8913","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (124,"Hillary George","1","diam.Duis.mi@Aliquamnecenim.ca","112234389","5735","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (125,"Axel Jackson","1","auctor.non@velturpisAliquam.co.uk","992553453","3594","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (126,"Priscilla Vargas","1","erat.semper@sapienmolestieorci.co.uk","987116636","4853","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (127,"Kylan Pacheco","1","elit.a.feugiat@Craseu.edu","673255614","7749","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (128,"Montana Hogan","1","volutpat.Nulla.facilisis@auctorodio.com","187922978","5524","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (129,"Alec Vargas","1","dapibus.rutrum.justo@acrisusMorbi.org","132224637","3191","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (130,"Cameron Wagner","1","Nullam@orci.net","674664382","2175","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (131,"Dale Mclean","1","sit@dui.edu","555851722","2444","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (132,"Jocelyn Crane","1","nunc.est.mollis@nislNulla.com","951354918","9686","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (133,"Tallulah Gallegos","1","Cras.convallis@ideratEtiam.ca","138148576","5396","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (134,"Phillip Roberts","1","diam@mauris.org","158397771","6757","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (135,"Hedley William","1","habitant@nibh.com","561219268","8679","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (136,"Graiden Rodriquez","1","imperdiet.ullamcorper.Duis@perinceptoshymenaeos.org","765899827","5148","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (137,"Evelyn Fry","1","Fusce.aliquet.magna@dignissim.edu","463766161","2511","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (138,"Len Holder","1","sed@pharetraNamac.edu","467565848","9325","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (139,"Lani Crane","1","nec.ante@Cras.ca","463763784","7348","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (140,"Sigourney Gomez","1","Sed.congue.elit@consequatpurusMaecenas.com","447733217","9719","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (141,"Hop Lester","1","mauris@lectus.com","752337241","9158","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (142,"Noah Sampson","1","nec@risusodioauctor.edu","248217511","3875","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (143,"Dylan Cantrell","1","nec@elitAliquamauctor.net","279855287","8396","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (144,"Elvis West","1","ipsum.cursus@egestas.co.uk","485312932","4713","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (145,"Celeste Wiggins","1","orci.luctus@luctus.net","835684514","2292","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (146,"Sylvia Craig","1","magna.Cras.convallis@tempor.org","914978421","6968","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (147,"Brock Duran","1","varius.ultrices.mauris@vulputatevelit.net","777981967","9797","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (148,"Logan Copeland","1","mauris.Suspendisse.aliquet@Donecporttitortellus.co.uk","163823231","9234","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (149,"Lester Hinton","1","at@odiosemper.co.uk","545627992","2218","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (150,"Yetta Lindsey","1","aliquet@Aliquameratvolutpat.co.uk","525888683","2538","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (151,"Octavius Trujillo","1","aliquet.Phasellus.fermentum@Vivamuseuismodurna.com","693773294","7513","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (152,"Mara Poole","1","interdum.ligula@nonbibendum.edu","983844219","4673","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (153,"Justin Harris","1","ullamcorper.Duis@risusNulla.edu","288121776","6362","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (154,"Reed Rowland","1","sem.ut.dolor@velit.edu","512876625","7246","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (155,"Xerxes Gonzales","1","Donec@euismodestarcu.com","953164328","3166","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (156,"Nehru Zimmerman","1","euismod.mauris@atauctorullamcorper.co.uk","483427272","7378","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (157,"Nehru Huff","1","lorem.ut.aliquam@enimdiamvel.edu","741556916","1821","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (158,"Rajah Stokes","1","enim.Sed@erosturpisnon.org","677392325","2386","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (159,"Tatyana Garcia","1","libero@nisiCumsociis.ca","542919298","4114","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (160,"Hope Gardner","1","eu.metus.In@Suspendissesagittis.net","284283196","1614","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (161,"Erica Hines","1","eros@Aeneansed.org","926263148","6859","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (162,"Armand Campbell","1","risus@afeugiattellus.com","535812617","4254","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (163,"Yuli Calderon","1","tincidunt.neque@rhoncusNullam.org","591786396","4353","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (164,"Edan Carlson","1","parturient.montes@posuerecubiliaCurae.ca","182191165","3389","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (165,"Lareina Edwards","1","elit.pede.malesuada@bibendumfermentummetus.ca","555863388","6881","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (166,"Boris Newton","1","dolor@commodoipsum.net","229275119","4437","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (167,"Sandra Dixon","1","pellentesque.eget.dictum@Loremipsumdolor.co.uk","742148611","9354","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (168,"Charissa Davis","1","venenatis.vel.faucibus@consectetuer.net","378877445","9449","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (169,"Cooper Foley","1","arcu.Aliquam.ultrices@massalobortis.co.uk","847388357","5773","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (170,"Curran Dillard","1","pede.nec.ante@maurisid.ca","485717447","1596","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (171,"Ahmed Hensley","1","Mauris.eu.turpis@at.co.uk","975199684","4996","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (172,"Andrew Beasley","1","Nullam@Duisrisusodio.ca","133532258","5745","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (173,"Skyler Castro","1","dignissim.Maecenas.ornare@eget.org","496617435","5622","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (174,"Coby Dorsey","1","mauris.blandit@diam.com","652887458","5972","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (175,"Meredith Fischer","1","nisl@ridiculus.co.uk","869173394","7562","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (176,"Yvonne Olson","1","et.netus.et@vulputateveliteu.net","923838315","7684","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (177,"Madonna Cox","1","scelerisque.scelerisque@consequatdolor.net","277585549","1784","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (178,"Nigel Montoya","1","cursus.a@disparturientmontes.co.uk","676948149","8283","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (179,"Drake Gilmore","1","quis.tristique.ac@vestibulumnequesed.edu","171788817","2112","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (180,"Oren Lynch","1","velit.in@NullamnislMaecenas.net","584197499","5527","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (181,"Breanna Wolfe","1","Donec@ultriciesligulaNullam.edu","566194757","4949","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (182,"Ezra Rogers","1","Donec@luctusCurabituregestas.edu","666532394","2759","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (183,"Yen Montoya","1","velit.dui.semper@auctorMaurisvel.org","911147654","2867","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (184,"Elvis Mckenzie","1","et.libero@Morbi.org","491828729","7988","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (185,"Calvin Fleming","1","Integer.vulputate.risus@nullavulputatedui.ca","124389676","8131","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (186,"Maisie Mcbride","1","accumsan@ornare.edu","463499392","6188","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (187,"Amir Henderson","1","nibh.Donec.est@adlitora.org","852575446","7217","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (188,"Thaddeus Henderson","1","sit@nec.ca","175251913","4294","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (189,"Dolan Pierce","1","bibendum.fermentum@dictummiac.org","741976899","5876","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (190,"Nita Copeland","1","Donec@luctussit.org","878956825","6825","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (191,"Pearl Romero","1","massa.Integer.vitae@vitaesodalesat.net","451344465","5441","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (192,"Kaseem Mcfadden","1","volutpat.Nulla.dignissim@egetmagnaSuspendisse.co.uk","476911358","6639","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (193,"Keiko Bond","1","Proin.eget@orciluctus.ca","386811777","1219","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (194,"Echo Moses","1","tincidunt.pede@adipiscing.org","635313184","1341","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (195,"Samantha Walton","1","dictum.augue.malesuada@laoreet.com","338964765","7266","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (196,"Avram Galloway","1","erat@primisinfaucibus.org","567134696","7386","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (197,"Sean Padilla","1","interdum.libero.dui@InfaucibusMorbi.net","976581652","6411","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (198,"Fitzgerald Combs","1","mi@necorciDonec.co.uk","772312871","1154","");
INSERT INTO usuario (id,nombre,password,mail,telefono,cuenta_red_pagos,foto) VALUES (199,"Unity Ray","1","nostra@interdum.co.uk","531679515","2682","");
COMMIT;

-- RESTAURANT
BEGIN;
-- CUSTOM DATA
INSERT INTO restaurant (id, usuario, rut, razon_social) VALUES (1, 1, 123456789, 'Pancho Va S.R.L');
INSERT INTO restaurant (id, usuario, rut, razon_social) VALUES (2, 3, 987654321, 'La Pasiva S.R.L');
-- GENERATED DATA
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (100,100,"863778865717","Parturient Montes Nascetur Industries");
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (101,101,"185861436389","Nunc Laoreet Inc.");
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (102,102,"564436199781","Imperdiet Dictum LLC");
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (103,103,"148285835288","Nulla Dignissim Limited");
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (104,104,"528465919279","Lacus PC");
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (105,105,"968655389738","Quisque Industries");
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (106,106,"112717369873","Mi Associates");
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (107,107,"294547845394","Elit A Feugiat Corporation");
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (108,108,"857122394381","Luctus Ltd");
INSERT INTO restaurant (id,usuario,rut,razon_social) VALUES (109,109,"486583726812","In Institute");
COMMIT;

-- SUCURSAL
BEGIN;
-- CUSTOM DATA
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
INSERT INTO delivery (id, usuario, calificacion, vehiculo, nombre, ingresos, token, ubicacion) VALUES (1, 3, 5, 1, "Jose Salamin", null, "", 1);
INSERT INTO delivery (id, usuario, calificacion, vehiculo, nombre, ingresos, token, ubicacion) VALUES (2, 4, 5, 3, "Sofia Michone", null, "", 2);
INSERT INTO delivery (id, usuario, calificacion, vehiculo, nombre, ingresos, token, ubicacion) VALUES (3, 5, 5, 2, "Rosiadme Vmajd", null, "", 3);
-- GENERATED DATA

COMMIT;

-- VIAJE
BEGIN;
-- CUSTOM DATA
INSERT INTO viaje (id, calificacion, precio, delivery, sucursal, estado, fecha_creacion) VALUES (1, null, 10, 1, 1, 3, sysdate());
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



