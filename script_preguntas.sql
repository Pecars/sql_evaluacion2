/* preguntas prueba 1 JAVA*/
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (1,'�Cu�l de los siguientes son conceptos claves en POO?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (2,'�Cu�les ser�an formas correctas de comparaci�n de string?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (3,'Una clase define...',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (4,'�Cu�l de los siguientes son modificadores de acceso v�lidos?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (5,'�Un constructor debe tener el mismo nombre que la clase?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (6,'�Cu�ntos paquetes pueden estar contenidos en un programa JAVA?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (7,'�Qu� modificador de acceso indica expl�citamente que un m�todo o variable de un objeto puede ser accedido desde fuera de la clase de ese objeto?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (8,'Selecciona las declaraciones correctas acerca de los operadores && ||',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (9,'Selecciona las formas v�lidas para hacer comentarios en JAVA',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (10,'Selecciona los tipos primitivos',12,1);

select * from preguntas;

/* respuestas prueba JAVA*/
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (1, 'Encapsulaci�n', 'S', 25, 3, 1);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (2, 'Herencia', 'S', 25, 3, 1);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (3, 'Polimorfismo', 'S', 25, 3, 1);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (4, 'Abstracci�n', 'S', 25, 3, 1);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (5, 'equals()', 'S', 100, 12, 2);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (6, '==', 'N', 0, 0, 2);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (7, '&&', 'N', 0, 0, 2);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (8, '||', 'N', 0, 0, 2);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (9, 'Comportamiento', 'S', 50, 6, 3);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (10, 'Atributos', 'S', 50, 6, 3);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (11, 'Valores', 'N', 0, 0, 3);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (12, 'Manzanas', 'N', 0, 0, 3);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (13, 'Protected', 'S', 33, 4, 4);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (14, 'Hidden', 'N', 0, 0, 4);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (15, 'Public', 'S', 33, 4, 4);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (16, 'Private', 'S', 33, 4, 4);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (17, 'S�', 'S', 100, 12, 5);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (18, 'Nunca', 'N', 0, 0, 5);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (19, 'Depende del tipo de clase', 'N', 0, 0, 5);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (20, 'Depende del tipo de variables', 'N', 0, 0, 5);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (21, 'S�lo uno', 'N', 0, 0, 6);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (22, 'Entre uno y cuatro', 'N', 0, 0, 6);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (23, 'Tantos como necesites', 'S', 100, 12, 6);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (24, 'Ninguno', 'N', 0, 0, 6);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (25, 'public', 'S', 100, 12, 7);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (26, 'static', 'N', 0, 0, 7);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (27, 'private', 'N', 0, 0, 7);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (28, 'default', 'N', 0, 0, 7);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (29, 'A||B es verdadero si al menos A o B es verdadero', 'S', 50, 6, 8);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (30, 'A {&&} B es falso si tanto A como B son verdaderos', 'N', 0, 0, 8);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (31, '(A||B) {&&} C es verdadero si C es verdadero y al menos A o B es verdadero', 'S', 50, 6, 8);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (32, 'A {&&} B es verdadero si al menos A o B es verdadero', 'N', 0, 0, 8);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (33, '|| significa OR', 'S', 50, 6, 9);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (34, '|| significa AND', 'N', 0, 0, 9);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (35, '{&&} significa OR', 'N', 0, 0, 9);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (36, '{&&} significa AND', 'S', 50, 6, 9);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (37, '/* comentario*/', 'S', 33, 4, 10);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (38, '//comentario', 'S', 33, 4, 10);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (39, '/** comentario */', 'S', 33, 4, 10);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (40, '/** comentario **/', 'N', 0, 0, 10);

select * from alternativas;

/*Preguntas prueba 2 android*/

INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (11,'�Cu�l de los siguientes son entornos de desarrollo de android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (12,'Qu� elementos de los siguientes est�n incorporados y pueden utilizarse directamente en Android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (13,'�Cu�l de los siguientes son emuladores con los que se puede probar una app Android ',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (14,'�Permite android la multitarea?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (15,'�Qu� lenguaje se usa por defecto para programar aplicaciones Android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (16,'�Cu�les han sido nombres de versiones de Android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (17,'�Cu�l de los siguientes son entornos de desarrollo de android ?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (18,'�Cu�les de las siguientes, son clases que existen y podemos emplear para implementar tareas en 2� plano en una aplicaci�n Android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (19,'�En el formulario de subida de nuestra aplicaci�n a Google Play, �cu�les de estos elementos gr�ficos debemos incluir obligatoriamente??',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (20,'�En qu� sistema se basa el n�cleo de Android?',12,2);

select * from preguntas;

/* respuestas prueba Android*/
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (41, 'Eclipse', 'S', 50, 6, 11);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (42, 'Netbeans', 'S', 50, 6, 11);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (43, 'Java', 'N', 0, 0, 11);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (44, 'Visual Basic', 'N', 0, 0, 11);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (45, 'FreeType', 'S', 33, 4, 12);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (46, 'SSL', 'S', 33, 4, 12);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (47, 'SQLite', 'S', 33, 4, 12);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (48, 'Api Swing de Java', 'N', 0, 0, 12);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (49, 'YouWave', 'S', 50, 6, 13);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (50, 'Rumble', 'N', 0, 0, 13);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (51, 'VirtualAndroid', 'N', 0, 0, 13);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (52, 'BlueStacks', 'S', 50, 6, 13);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (53, 'S�', 'S', 100, 12, 14);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (54, 'No', 'N', 0, 0, 14);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (55, 'A partir de la versi�n 3', 'N', 0, 0, 14);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (56, 'A partir de la versi�n 4', 'N', 0, 0, 14);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (57, 'Java', 'S', 100, 12, 15);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (58, 'JavaScript', 'N', 0, 0, 15);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (59, 'C++', 'N', 0, 0, 15);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (60, 'C#', 'N', 0, 0, 15);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (61, 'Apple Pie', 'S', 25, 3, 16);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (62, 'Banana Bread', 'S', 25, 3, 16);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (63, 'Cupcake', 'S', 25, 3, 16);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (64, 'Donut', 'S', 25, 3, 16);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (65, 'AndroidStudio', 'S', 33, 4, 17);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (66, 'Eclipse', 'S', 33, 4, 17);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (67, 'NetBeans', 'S', 33, 4, 17);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (68, 'SQL', 'N', 0, 0, 17);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (69, 'Thread', 'S', 33, 4, 18);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (70, 'Handler', 'S', 33, 4, 18);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (71, 'Runnable', 'S', 33, 4, 18);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (72, 'Async', 'N', 0, 0, 18);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (73, 'Banner TV', 'N', 0, 0, 19);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (74, 'Video Promocional', 'N', 0, 0, 19);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (75, 'Imagen Promocional', 'S', 50, 6, 19);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (76, 'Imagen Destacada', 'S', 50, 6, 19);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (77, 'Linux', 'S', 100, 12, 20);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (78, 'Windows', 'N', 0, 0, 20);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (79, 'iOS', 'N', 0, 0, 20);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (80, 'Symbian', 'N', 0, 0, 20);
