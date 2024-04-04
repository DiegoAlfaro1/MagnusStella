insert into cliente(idCliente, nombre, Correo, Direccion) values
(562323,'Juan Pablo Chávez Leal','a01705408@tec.mx','Bugambilias #3, 76021,Centro'),
(092341,'Diego Isaac Fuentes Juvera','diegolin@outlook.com','Río Grande #41, 82390, San Javier'),
(093247,'Angélica Ríos Cuentas','angie83@outlook.com','Río chico #97, 82390, San Javier'),
(974858,'Diego Ricardo Alfaro Pinto','diegorap2003@outlook.com','Lirios #3, 63819, La Cañada'),
(987412,'Pablo Hazael Hurtado Mireles','pablinqueclavounclavin@outlook.com','Bosques del lago #86, 97345, Juriquilla'),
(547623,'Ricardo Ortiz Días','RicarditoOrtiz@hotmail.com','pradera verde #54, 76564, El refugio'),
(654321, 'Juan Pérez', 'juanper@gmail.com', 'Avenida 5 de Mayo 24, 12345, Juárez'),
(187654, 'Ana García', 'anagara@gmail.com', 'Calle Reforma 56, 54321, Roma'),
(123789, 'Carlos López', 'carlospez@gmail.com', 'Boulevard Benito Juárez 79, 67890, Condesa'),
(456123, 'María Rodríguez', 'mariarodri@gmail.com', 'Avenida Insurgentes Sur 890, 23456, Polanco'),
(321456, 'Pedro Martínez', 'pedrote@gmail.com', 'Calle 20 de Noviembre 35, 87654, Del Valle'),
(789321, 'Laura Hernández', 'lauraherdez@gmail.com', 'Calle Hidalgo 678, 3467, Doctores'),
(987654, 'Miguel Sánchez', 'miguelsnchez@outlook.com', 'Avenida 5 de Mayo 24, 12345, Juárez'),
(37274, 'Elena García', 'elenagarc@outlook.com', 'Calle Reforma 56, 54321, Roma'),
(60764, 'Andrés Martínez', 'andymarti@outlook.com', 'Boulevard Benito Juárez 78, 67890, Condesa'),
(25498, 'Sofía Rodríguez', 'sofirodri34@outlook.com', 'Avenida Insurgentes Sur 90, 23456, Polanco'),
(76363, 'Diego Pérez', 'diegope324@outlook.com', 'Calle 20 de Septiembre 45, 87654, Del Valle'),
(07289, 'Lucía Hernández', 'luciahrdz4567@outlook.com', 'Calle Hidalgo 678, 34567, Doctores'),
(92971,'Lucero Vázquez Martinez', 'Luvama@hotmail.com', 'Las serpientes 74, 79721, Popocatepetl'),
(91171,'Luz Andrea Vázquez Alderete', 'Lavameikup@hotmail.com', 'Los Candelabros, 78324, Candiles'),
(90234, 'Ana Zúñiga Chávez', 'anazzzz@gmail.com,', 'Matancillas 78, 63249, Zibatá');


insert into rol(IDRol, Nombre, Permisos) values
(0, 'Ajeno', '{0,0,0,0,0}'),
(1,'Admin','{1,1,1,1,1}'),
(2, 'Analítica', '{0,1,0,1,0}'),
(3, 'CRM', '{0,1,1,1,1}'),
(4, 'Moderador', '{0,0,1,1,0}'),
(5, 'Empleado', '{0,1,1,1,0}'),
(6, 'Gerente', '{0,0,1,0,1}'),
(7, 'Supervisor', '{0,0,1,1,1}'),
(8, 'Editor', '{0,1,0,0,0}'),
(9, 'Colaborador', '{0,0,0,1,0}'),
(10,'CEO','{1,1,1,0,1}');

insert into marca(idMarca, Nombre, Logo, Paleta) values
('LU1','LUUNAA','https://zeb-main-bucket.b-cdn.net/catalog-website/luuna.mx/group-186ad7c.svg?width=1600','{(123,43,234),(123,42,56),(233,254,233)}'),
('MA1','MAPPA','https://zeb-main-bucket.b-cdn.net/catalog-website/mappa.mx/mappa-logotipo_mesa-de-trabajo-1-4-.png?width=1600','{(123,43,234),(171,548,54),(002,212,243)}'),
('NO1','NOOZ','https://zeb-main-bucket.b-cdn.net/catalog-website/nooz.mx/nooz-header-logo.png?width=1600','{(120,73,24),(13,142,216),(23,54,23)}'),
('AR1','ARTI','https://logopond.com/logos/1dc04df6dc37355f5ce2d39bc984aa73.png','{(255,255,255),(000,000,000),(124,214,163)}');

insert into pregunta(idPregunta, Descripcion, Tipo, Opcion) values
(1,'¿Con cuántas personas duermes?',1,'{1, 2, 3, ninguno}'),
(2,'En general, ¿Cuál es el peor aspecto del producto?',2,''),
(3,'Seleccione todos los que apliquen: ',3,'{Duermo con mi mascota, Consumo alimentos en mi cama, Suelo trabajar en mi cama, Mi cama es mi "templo"}'),
(4,'¿Cuál es su grado de satisfacción con el producto?',4,'{1,2,3,4,5}'),
(5,'Reseña',2,''),
(6,'¿Qué edad tienes?',1,'{15 - 24, 25 - 34, 35 - 44, 45 - 55+}'),
(7,'¿En promedio, cuántas horas duermes cada noche?',1,'{Menos de 4, Entre 4 y 6 horas, Entre 6 y 7 horas, Entre 7 y 8 horas, Más de 8 horas}'),
(8,'¿Cómo se compara su nuevo colchón al anterior?',1,'{Es peor, Son iguales, Es mejor, Es mucho mejor}'),
(9,'¿Por qué elegiste Mappa vs otras marcas?',3,'{Precio, Garantía y calidad del producto, Cualidades(tecnología, diseño, colores), Recomendaciones, Otro}'),
(10,'¿Qué mejoras le haría al producto?',2,'');

insert into producto(idProducto, FK_idMarca_Producto, Nombre, Imagen, Descripcion) values
('SH7003','LU1','Juego de Sábanas Satinadas Queen Size Blanco Rayas','','No existe mejor sensación que el rose del satin en la piel. Y tampoco existe mejor calidad en telas que las que son elaboradas con textiles certificados. ¡Compruébalo con estas sábanas!'),
('MA4003','MA1','Maleta Mappa Grande Color Arena','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/master-maleta-mappa-hard-shell-lote-san-gra/sand-s-01.jpeg','El tamaño que necesitas para lanzarte a la aventura más duradera. Su gran capacidad hará que puedas viajar con todo lo necesario.'),
('NP6324','NO1','Protector de Colchón Essential King','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/protector-de-colchÃ³n-essential-bamboo-king/protector_essentialc05dcc.png','El Protector Essential King te será muy útil si estás buscando algo suave, impermeable y transpirable que se asegure de que ese colchón que tanto trabajo te costó tener dure mucho más tiempo y de que tú pases una buena noche.'),
('NP6323','NO1','Protector de Colchón Essential Queen','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/protector-de-colchÃ³n-essential-bamboo-queen/protector_essentialc05dcc.png','El Protector Essential Queen te será muy útil si estás buscando algo suave, impermeable y transpirable que se asegure de que ese colchón que tanto trabajo te costó tener dure mucho más tiempo y de que tú pases una buena noche'),
('LB3231','LU1','Cama Condesa Individual','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-condesa-indi/cama-condesa.jpg','Resistencia, elegancia y sustentabilidad fueron las tres ideas que teníamos en la cabeza al crear esta cama individual de madera certificada con cabecera capitonada gris claro.'),
('MX-MAP-MAL-KIT2-SAN','MA1','SET MALETA CABINA + GRANDE ARENA','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-grande-san/1.-sets-monocromaticos20.png','Este set de dos piezas es ideal para que encuentres el equilibrio entre lo que necesitas tener a la mano y la capacidad óptima para lo que documentarás.'),
('NP6321','NO1','Protector de Colchón Essential Individual','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/protector-de-colchÃ³n-essential-bamboo-indi/protector_essential.png','El Protector Essential Individual te será muy útil si estás buscando algo suave, impermeable y transpirable que se asegure de que ese colchón que tanto trabajo te costó tener dure mucho más tiempo y de que tú pases una buena noche.'),
('SI1004','LU1','Colchón Luuna Signature King','','8 opciones de confort. Un colchón. Conoce la máxima expresión de tecnologí­a y total personalización con Luuna.'),
('LB2231','LU1','Cama Anzures Individual','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-anzures-indi/base-anzures8b4bc3.jpg','Cama individual de madera sustentable de abedul y nogal negro, con cabecera capitonada gris grafito. Un complemento de lujo y comodidad para tu descanso. ¡Tenemos 4 tamaños disponibles!'),
('MA4012','MA1','Set Maleta Cabina + Grande Arena','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/kit-cabina-grande-san-lote/1.-sets-monocromaticos20.png','Este set de dos piezas es ideal para que encuentres el equilibrio entre lo que necesitas tener a la mano y la capacidad óptima para lo que documentarás.'),
('AN1133V','NO1','2 Pack Almohada Essential Regular','','Para descansar como rey basta con un par de almohadas rellenas de microfibra cepillada que asemeja a la sensación de las plumas naturales. ¡Créenos, sostendrán tu cabeza como a su majestad!'),
('MA1401','MA1','Organizadores Mappa','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/organizadores-mappa-char/organizador.webp','Los organizadores Mappa son el accesorio ideal para empacar tus pertenencias de la manera más eficiente. Comprime y organiza tu ropa para que puedas guardar mucho más en tu maleta.'),
('LU1001B2','LU1','Colchón Luuna Basics 2 Individual','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colchÃ³n-basic-2-indi/basics-2.png','Luuna Basics 2 Individual es ideal para tener un descanso profundo. Sus dos capas de espumas certificadas garantizan una combinación de soporte y frescura que perduran con el paso de los años. ¡Compruébalo tú mismo!'),
('MA1201','MA1','Transportadora Para Mascotas Mappa','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/pet-carrier-mappa-char/pet-carrier.webp','La transportadora Mappa es ideal para viajar con tu mejor amigo. Su diseño está creado para brindar comodidad tanto a tu mascota como a ti'),
('AN1133VCH','NO1','2 Pack Almohada Essential Regular','','Para descansar como rey basta con un par de almohadas rellenas de microfibra cepillada que asemeja a la sensación de las plumas naturales. ¡Créenos, sostendrán tu cabeza como a su majestad!'),
('LU1002B2','LU1','Colchón Luuna Basics 2 Matrimonial','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/luuna-colchÃ³n-basic-2-matri/basics-2.png','Luuna Basics 2 Matrimonial es ideal para tener un descanso profundo. Sus dos capas de espumas certificadas garantizan una combinación de soporte y frescura que perduran con el paso de los años. ¡Compruébalo tú mismo!'),
('MA1301','MA1','Portalaptop Mappa','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/porta-laptop-mappa-char/portalaptop.webp','El portalaptop Mappa es perfecto para transportar tu computadora o tableta.'),
('NB7224','NO1','Cama Natural Tejida King','https://zeb-main-bucket.s3.us-west-2.amazonaws.com/public/web-item/cama-natural-tejida-king/tejida-fondo-blanco.jpg','Creamos esta cama para los amantes de lo natural y artesanal. Está hecha de madera certificada y tejido artesanal, lo que la hace resistente y amigable con el medio ambiente.'),
('AR9044','AR1','20L Pintura Azul','','La mejor pintura para el mejor pintor'),
('AR9043','AR1','20L Pintura Roja','','La mejor pintura para el mejor pintor');

insert into encuesta(idMarca, idPregunta) values
('LU1',1),
('AR1',2),
('NO1',3),
('LU1',4),
('MA1',5),
('LU1',6),
('Lu1',7),
('NO1',8),
('MA1',9),
('AR1',10);

insert into usuario(idUsuario, IDRol, Nombre,Contraseña, Correo) values
('U093451',2,'Julia Martinez Norris','contraseñajajajaj','july@gmail.com'),
('U123456', 7, "Ana García López", "contraseña123",'anygar@hotmail.com'),
('U234567', 8, "Juan Pérez Martínez", "contraseña456", "juanpema@outlook.com" ),
('U345678', 9, "María González Fernández", "contraseña789", 'magodelqueso@gmail.com'),
('U456789', 10, "Pedro Rodríguez Díaz", "contraseña012", "pedrodriguez@outlook.com"),
('U567890', 6, "Isabel López Martín", "contraseña321", "isalop@gmail.com"),
('U678901', 7, "David García Pérez", "contraseña1234", 'davigar@yahoo.com'),
('U789012', 8, "Laura Pérez Martínez", "contraseña4567", 'laupe1@gmail.com'),
('U890123', 9, "Miguel González Fernández", "contraseña7890",'migonz@outlook.com'),
('U901234', 10, "Marta Rodríguez Díaz", "contraseña0123", 'marodri@gmail.com'),
('U013345', 5, "Alejandro López Martín", "contraseña231",'alelo@gmail.com'),
('U113456', 6, "Elena García Pérez", "contraseña342","elegarpe@gmail.com"),
('U264567', 7, "Francisco Pérez Martínez", "contraseña4568",'franpe@gmail.com'),
('U348678', 8, "Sandra González Fernández", "contraseña7891",'sandygo@gmail.com'),
('U455789', 9, "Daniel Rodríguez Díaz", "contraseña0124", 'danro@gmail.com'),
('U767890', 4, "Cristina López Martín", "contraseña132",'crslop@gmail.com'),
('U688901', 5, "Jorge García Pérez", "contraseña243",'jorgar@gmail.com'),
('U729012', 6, "Clara Pérez Martínez", "contraseña354",'clap@gmail.com'),
('U880123', 7, "Alberto González Fernández", "contraseña465",'algo@gmail.com'),
('U901934', 8, "Beatriz Rodríguez Díaz", "contraseña576", 'betyro@gmail.com');

insert into venta(idVenta, Fk_Venta_Cliente, Fk_Venta_Producto, Fecha) values
(1,7289,'AN1133V','1','2024-03-07'),
(2,7289,'AN1133VCH','1','2023-01-01'),
(3,7289,'MA4012',"2",'2023-02-02'),
(4,25498,'SH7003',"3",'2023-03-03'),
(5,25498,'AR9043',"4",'2023-04-04'),
(6,25498,'MA1301',"5",'2023-05-05'),
(7,37274,'MA1301',"6",'2023-06-06'),
(8,37274,'SH7003',"7",'2023-07-07'),
(9,37274,'AR9043',"8",'2023-08-08'),
(10,37274,'NP6323',"9",'2023-09-09'),
(11,321456,'MX-MAP-MAL-KIT2-SAN',"10",'2023-10-10'),
(12,321456,'SH7003',"11",'2023-11-11'),
(13,321456,'LU1002B2',"12",'2023-12-12'),
(14,91171,'AR9043',"13",'2023-11-12'),
(15,91171,'LU1002B2',"14",'2023-12-14'),
(16,91171,'MA1301',"15",'2023-12-23'),
(17,123789,'NP6323',"16",'2023-1-12'),
(18,123789,'AN1133VCH',"17",'2023-1-15'),
(19,123789,'LB3231',"18",'2023-1-16'),
(20,123789,'MX-MAP-MAL-KIT2-SAN',"19",'2023-1-23'),
(21,562323,'MA4003',"20",'2023-1-25'),
(23,562323,'NP6323',"21",'2023-3-12'),
(22,562323,'LB3231',"22",'2023-3-17'),
(24,987412,'SH7003',"23",'2023-3-23'),
(25,987412,'MX-MAP-MAL-KIT2-SAN',"24",'2023-3-21'),
(26,987412,'LU1001B2',"25",'2023-6-30'),
(27,974858,'MA1301',"26",'2023-3-19'),
(28,974858,'MA4003',"27",'2023-3-17'),
(29,974858,'AR9043',"28",'2023-5-24'),
(30,974858,'MA1301',"29",'2023-5-27'),
(31,60764,'LB3231',"30",'2023-5-2'),
(32,60764,'MX-MAP-MAL-KIT2-SAN',"31",'2023-5-17'),
(33,90234,'LB3231',"32",'2023-7-17'),
(34,90234,'MA1301',"33",'2023-7-11'),
(35,90234,'LU1002B2',"34",'2023-7-21'),
(36,321456,'AR9043',"35",'2023-7-3'),
(37,321456,'LU1002B2',"36",'2023-7-12'),
(38,321456,'MA1301',"37",'2023-8-7'),
(39,321456,'MX-MAP-MAL-KIT2-SAN',"38",'2023-8-21'),
(40,92971,'LB3231',"39",'2023-8-12'),
(41,92971,'NP6323',"40",'2023-9-7'),
(42,92971,'AN1133VCH',"41",'2023-9-12'),
(43,92971,'LU1002B2',"42",'2023-9-27'),
(44,37274,'MA1301',"43",'2023-9-17'),
(45,37274,'NP6323',"44",'2023-9-13'),
(46,37274,'MA1301',"45",'2023-10-5'),
(47,37274,'AN1133VCH',"46",'2023-10-30'),
(48,987654,'NP6323',"47",'2023-10-12'),
(49,987654,'AN1133VCH',"48",'2023-10-9'),
(50,987654,'LU1002B2',"49",'2023-12-24');

insert into review(idReview, Fk_Review_Venta, Descripcion, Titulo, Fecha, Puntaje) values
(1,1,'Excelente producto. Lo uso todos los días y no puedo estar más satisfecho con su rendimiento y durabilidad','Se me cayó del 5to piso','2024-1-11',5),
(2,2,'¡Increíble! No puedo imaginar mi vida sin este producto. Realmente hace todo más fácil y eficiente','Muy buen producto','2024-1-21',4),
(3,3,'fotos de perritos','ay que piké, komo me salgo de aki','2024-1-16',2),
(4,4,'Me encanta este producto. Es versátil, fácil de usar y muy útil en mi día a día','Útil','2024-1-23',4),
(5,5,'Lo compré hace unas semanas y ya no puedo vivir sin él. Definitivamente vale la pena cada centavo, es lo que me gustaría decir, pero no','Fraude D:<','2024-1-21',1),
(6,6,'He probado muchos productos similares, pero este se destaca por su calidad y funcionalidad. Lo recomiendo ampliamente','Lo mejor que existe!!!','2024-1-14',4),
(7,7,'Qué gran compra! Este producto ha mejorado significativamente mi rutina diaria. Lo recomendaría a cualquiera','Producto recibido bien','2024-2-14',5),
(8,8,'Gran producto, alta calidad y durabilidad, materiales pesados y lujosos, definitivamente arte','Es arte','2024-2-18',5),
(9,9,'Funciona como se describe. Es robusto y confiable. No puedo pedir más de este producto','Satisfecho','2024-2-12',4),
(10,10,'Este producto ha hecho una gran diferencia en mi vida. Es práctico, eficiente y fácil de usar','diego','2024-2-27',4),
(11,11,'Lo compré como regalo y resultó ser un gran acierto. La persona que lo recibió está encantada con el','Gran regalo','2024-2-29',5),
(12,12,'"He probado muchos productos similares, pero ninguno se compara a este. Su calidad es insuperable','Buenisismos materiales','2023-12-11',4),
(13,13,'Es justo lo que necesitaba. Este producto ha simplificado muchas tareas para mí. ¡Totalmente recomendado! aunq ya la perdí D:','Buena compra','2023-12-23',4),
(14,14,'Un producto imprescindible en mi hogar. Su diseño y durabilidad lo convierten en una excelente elección.','Amo aqui','2023-12-19',4),
(15,15,'fotos perritos buscar','hay otra ves no se ke le pike','2023-12-27',1),
(16,16,'Estoy sorprendido por lo bien que funciona este producto. Sin duda alguna, es una compra que no me arrepiento','Gran usabilidad','2023-12-31',4),
(17,17,'Sí cumplen con lo que piden pero esperaba más','Bueno pero....','2023-11-16',3),
(18,18,'Me impresiona la calidad y la atención al detalle de este producto. Sin duda, una excelente adquisición','MUUUY buen producto','2023-11-1',4),
(19,19,'Es increíble cómo un producto tan simple puede hacer tanto. Definitivamente recomendaría este producto a cualquiera','Increible lo útil y bonito q es','2023-11-18',5),
(20,20,'Este producto superó mis expectativas. Es de alta calidad y cumple con su propósito. Lo recomiendo sin dudarlo ','La mayor calidad que existe','2024-1-12',5);

insert into respuestas(Fk_Respuestas_Pregunta, Fk_Respuestas_Review, Respuestas) values
(1,1,'1'),
(2,2,'Ninguno, muy buen producto'),
(3,3,'Duermo con mi mascota'),
(4,4,'4'),
(5,5,''),
(6,6,'15-24'),
(7,7,'Menos de 4'),
(8,8,'Son iguales'),
(9,9,'Precio, Garantía y calidad del producto'),
(10,10,'Quiero sentir como si durmiera en las nubes');