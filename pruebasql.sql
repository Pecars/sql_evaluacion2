

DROP TABLE alternativas CASCADE CONSTRAINTS;

DROP TABLE alternativas_estudiante CASCADE CONSTRAINTS;

DROP TABLE estudiante CASCADE CONSTRAINTS;

DROP TABLE preguntas CASCADE CONSTRAINTS;

DROP TABLE test CASCADE CONSTRAINTS;

CREATE TABLE alternativas (
    id                INTEGER NOT NULL,
    descripcion       VARCHAR2(300 CHAR) NOT NULL,
    correcta          CHAR(1) NOT NULL,
    porcentaje        INTEGER NOT NULL,
    puntaje_aportado  FLOAT(4) NOT NULL,
    preguntas_id      INTEGER
);

ALTER TABLE alternativas ADD CONSTRAINT alternativas_pk PRIMARY KEY ( id );

CREATE TABLE alternativas_estudiante (
    alternativas_id  INTEGER NOT NULL,
    estudiante_id    INTEGER NOT NULL
);

ALTER TABLE alternativas_estudiante ADD CONSTRAINT relation_6_pk PRIMARY KEY ( alternativas_id,
                                                                               estudiante_id );

CREATE TABLE estudiante (
    id      INTEGER NOT NULL,
    nombre  VARCHAR2(60 CHAR) NOT NULL
);

ALTER TABLE estudiante ADD CONSTRAINT estudiante_pk PRIMARY KEY ( id );

CREATE TABLE preguntas (
    id               INTEGER NOT NULL,
    enunciado        VARCHAR2(300 CHAR) NOT NULL,
    puntajeasociado  INTEGER NOT NULL,
    test_id          INTEGER
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( id );

CREATE TABLE test (
    id              INTEGER NOT NULL,
    nombre          VARCHAR2(20 CHAR) NOT NULL,
    descripcion     VARCHAR2(100 CHAR) NOT NULL,
    programa        VARCHAR2(20 CHAR) NOT NULL,
    unidad          VARCHAR2(30 CHAR) NOT NULL,
    autor           VARCHAR2(50 CHAR) NOT NULL,
    fecha_creacion  DATE NOT NULL
);

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( id );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_preguntas_fk FOREIGN KEY ( preguntas_id )
        REFERENCES preguntas ( id );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_test_fk FOREIGN KEY ( test_id )
        REFERENCES test ( id );

ALTER TABLE alternativas_estudiante
    ADD CONSTRAINT relation_6_alternativas_fk FOREIGN KEY ( alternativas_id )
        REFERENCES alternativas ( id );

ALTER TABLE alternativas_estudiante
    ADD CONSTRAINT relation_6_estudiante_fk FOREIGN KEY ( estudiante_id )
        REFERENCES estudiante ( id );

INSERT INTO TEST (ID, NOMBRE, DESCRIPCION, PROGRAMA, UNIDAD, AUTOR, FECHA_CREACION) VALUES(1, 'Prueba JAVA', 'Primera prueba curso JAVA', 'FullStack JAVA', '1', 'Pepito Pérez', to_date('2020/03/05','YYYY/MM/DD'));
INSERT INTO TEST (ID, NOMBRE, DESCRIPCION, PROGRAMA, UNIDAD, AUTOR, FECHA_CREACION) VALUES(2, 'Prueba Android', 'Segunda prueba curso ANDROID', 'Android Trainee', '2', 'Juana González', to_date('2020/03/08','YYYY/MM/DD'));

/* comprueba inserción en tablas*/
select * from test;

/* preguntas prueba 1 JAVA*/
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (1,'¿Cuál de los siguientes son conceptos claves en POO?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (2,'¿Cuáles serían formas correctas de comparación de string?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (3,'Una clase define...',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (4,'¿Cuál de los siguientes son modificadores de acceso válidos?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (5,'¿Un constructor debe tener el mismo nombre que la clase?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (6,'¿Cuántos paquetes pueden estar contenidos en un programa JAVA?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (7,'¿Qué modificador de acceso indica explícitamente que un método o variable de un objeto puede ser accedido desde fuera de la clase de ese objeto?',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (8,'Selecciona las declaraciones correctas acerca de los operadores && ||',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (9,'Selecciona las formas válidas para hacer comentarios en JAVA',12,1);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (10,'Selecciona los tipos primitivos',12,1);

select * from preguntas;

/* respuestas prueba JAVA*/
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (1, 'Encapsulación', 'S', 25, 3, 1);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (2, 'Herencia', 'S', 25, 3, 1);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (3, 'Polimorfismo', 'S', 25, 3, 1);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (4, 'Abstracción', 'S', 25, 3, 1);

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

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (17, 'Sí', 'S', 100, 12, 5);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (18, 'Nunca', 'N', 0, 0, 5);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (19, 'Depende del tipo de clase', 'N', 0, 0, 5);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (20, 'Depende del tipo de variables', 'N', 0, 0, 5);

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (21, 'Sólo uno', 'N', 0, 0, 6);
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

INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (11,'¿Cuál de los siguientes son entornos de desarrollo de android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (12,'Qué elementos de los siguientes están incorporados y pueden utilizarse directamente en Android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (13,'¿Cuál de los siguientes son emuladores con los que se puede probar una app Android ',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (14,'¿Permite android la multitarea?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (15,'¿Qué lenguaje se usa por defecto para programar aplicaciones Android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (16,'¿Cuáles han sido nombres de versiones de Android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (17,'¿Cuál de los siguientes son entornos de desarrollo de android ?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (18,'¿Cuáles de las siguientes, son clases que existen y podemos emplear para implementar tareas en 2º plano en una aplicación Android?',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (19,'¿En el formulario de subida de nuestra aplicación a Google Play, ¿cuáles de estos elementos gráficos debemos incluir obligatoriamente??',12,2);
INSERT INTO PREGUNTAS (ID, ENUNCIADO, PUNTAJEASOCIADO, TEST_ID) VALUES (20,'¿En qué sistema se basa el núcleo de Android?',12,2);

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

INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (53, 'Sí', 'S', 100, 12, 14);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (54, 'No', 'N', 0, 0, 14);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (55, 'A partir de la versión 3', 'N', 0, 0, 14);
INSERT INTO ALTERNATIVAS (ID, DESCRIPCION, CORRECTA, PORCENTAJE, PUNTAJE_APORTADO, PREGUNTAS_ID) VALUES (56, 'A partir de la versión 4', 'N', 0, 0, 14);

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

select * from alternativas;

/*Agrega curso y foreign key, se me olvidó antes*/

CREATE TABLE curso (
    id            INTEGER NOT NULL,
    nombre_curso  VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id );

ALTER TABLE estudiante
    ADD curso_id  INTEGER;

ALTER TABLE estudiante
    ADD CONSTRAINT estudiante_curso_fk FOREIGN KEY ( curso_id )
        REFERENCES curso ( id );
        
select * from curso;
        
/* Añade cursos*/

INSERT INTO CURSO (ID, NOMBRE_CURSO) VALUES (1, 'Curso tarde JAVA');
INSERT INTO CURSO (ID, NOMBRE_CURSO) VALUES (2, 'Curso noche Android');

/* Añade integrantes a cursos*/
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (1, 'Pupi Quiltra',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (2, 'Obito Beagle',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (3, 'Patricio Tortuga',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (4, 'Dalí Perrillo',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (5, 'Chelo Collie',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (6, 'Coka Cocker',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (7, 'Blanca Vaca',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (8, 'Floricta Pollo',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (9, 'Estrellita Gallo',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (10, 'Rufo Labrador',1);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (11, 'Renato Conejo',2);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (12, 'Lulu Hound',2);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (13, 'Dogge Shiba',2);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (14, 'Eva Pastora',2);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (15, 'Misifú Gatita',2);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (16, 'Loba Husky',2);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (17, 'Sol Mestiza',2);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (18, 'Burro Pastor',2);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (19, 'Pelusa Terrier',2);
INSERT INTO ESTUDIANTE (ID, NOMBRE, CURSO_ID) VALUES (20, 'Thrasher Enano',2);

-- inserta respuestas
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (1,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (4,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (6,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (8,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (10,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (12,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (14,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (16,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (18,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (20,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (22,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (24,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (26,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (28,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (30,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (32,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (34,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (36,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (38,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (39,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (37,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (27,1);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (1,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (3,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (5,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (7,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (9,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (11,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (13,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (15,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (17,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (19,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (21,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (23,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (25,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (27,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (29,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (31,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (33,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (35,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (37,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (39,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (2,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (4,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (8,13);
INSERT INTO alternativas_estudiantes (alternativas_ID, estudiante_ID) VALUES (10,13);

/*P1: conocer el número de evaluaciones por curso*/

SELECT curso.nombre_curso, count (test_id) as numero_pruebas
from curso
right outer join curso_test on 
curso_test.curso_id = curso.id
group by nombre_curso;

/* P2 Conocer cursos sin evaluacion*/
-- añade un curso adicional 
INSERT INTO CURSO (ID, NOMBRE_CURSO) VALUES (3, 'Curso mañana UX/UI');
-- añade datos a curso_test
INSERT INTO CURSO_TEST (CURSO_ID, TEST_ID) VALUES (1, 1);
INSERT INTO CURSO_TEST (CURSO_ID, TEST_ID) VALUES (2, 2);

-- consulta cursos sin evaluación

SELECT curso_test.curso_id as evaluacion, curso.id as numero_curso
FROM curso_test
FULL OUTER JOIN curso
ON curso_test.curso_id= curso.id
where curso_id is null;

/*P3 Evaluaciones con deficiencia */
-- inserta test de prueba sin preguntas
INSERT INTO TEST (ID, nombre, descripcion, programa, unidad, autor, fecha_creacion) VALUES (4, 'prueba de prueba', 'probando', 'de prueba', 4, 'obito perro', to_date('20200517', 'yyyymmdd'));

-- no tiene preguntas
SELECT test.id as prueba_deficiente, preguntas.id as sin_preguntas
FROM preguntas
FULL OUTER JOIN test
ON preguntas.test_id= test.id
where preguntas.id is null;

-- preguntas con dos o menos alternativas
SELECT preguntas.id as pregunta_deficiente, count (alternativas.id) as numero_alternativas
FROM preguntas
FULL OUTER JOIN alternativas
ON preguntas.id= preguntas_id
group by preguntas.id
having count(alternativas.id)<3;

-- todas las alternativas son correctas o todas las alternativas son incorrectas
SELECT preguntas.id as preguntas, count (alternativas.correcta) as correctas
FROM preguntas
FULL OUTER JOIN alternativas
ON preguntas.id= preguntas_id
where correcta ='S'
having count(alternativas.correcta)>3
group by preguntas.id
union
SELECT preguntas.id as preguntas, count (alternativas.correcta) as incorrectas
FROM preguntas
FULL OUTER JOIN alternativas
ON preguntas.id= preguntas_id
where correcta ='N'
having count(alternativas.correcta)>4
group by preguntas.id;

/*P4 alumnos por curso */
SELECT curso.id as curso, count (estudiante.id) as numero_estudiantes
FROM curso
right OUTER JOIN estudiante
ON estudiante.curso_id= curso.id
group by curso.id;

/*P5 puntaje no normalizado, buenas - malas/4 */

-- crea tabla de revisión de pruebas

CREATE TABLE revision (
    id                   INTEGER NOT NULL,
    buenas               INTEGER,
    malas                INTEGER,
    puntaje              NUMBER(6, 2),
    puntaje_normalizado  NUMBER(6, 2),
    estudiante_id        INTEGER NOT NULL
);

ALTER TABLE revision ADD CONSTRAINT revision_pk PRIMARY KEY ( id,
                                                              estudiante_id );
                                                              
ALTER TABLE revision
    ADD CONSTRAINT revision_estudiante_fk FOREIGN KEY ( estudiante_id )
        REFERENCES estudiante ( id );

-- añade buenas y malas según estudiante a tabla revisión  

SELECT estudiante_id, count (alternativas.correcta) as correctas
from alternativas
right outer join alternativas_estudiante
on alternativas_estudiante.alternativas_id = alternativas.id
where alternativas.correcta = 'S'
group by estudiante_id
union
SELECT estudiante_id, count (alternativas.correcta) as incorrectas
from alternativas
right outer join alternativas_estudiante
on alternativas_estudiante.alternativas_id = alternativas.id
where alternativas.correcta = 'N'
group by estudiante_id;

INSERT INTO REVISION (ID, BUENAS, MALAS, ESTUDIANTE_ID) VALUES (1, 9, 14, 1);
INSERT INTO REVISION (ID, BUENAS, MALAS, ESTUDIANTE_ID) VALUES (2, 17, 7, 13);
create or replace trigger calculaPuntaje
  before insert or update on revision
    for each row
    declare
    begin
      :new.PUNTAJE := :new.buenas - ((:new.malas)/4);
      :new.PUNTAJE_normalizado := (:new.puntaje)*(7/(:new.puntaje_total));
  END;
-- trigger calcula puntaje


-- trigger calcula puntaje normalizado

-- añade test a tabla revisión
ALTER TABLE revision 
ADD test_id number;

ALTER TABLE revision
    ADD CONSTRAINT revision_test_fk FOREIGN KEY ( test_id )
        REFERENCES test ( id );
        
ALTER TABLE test 
ADD puntaje_total number;

ALTER TABLE revision 
ADD puntaje_total number;

-- calcula en base a test
 
  create or replace trigger normalizado
  before insert or update on revision
    for each row
    declare
    begin
      :new.PUNTAJE_normalizado := (:new.puntaje)*(7/(:new.puntaje_total)); -- answer in days.
  END; 
  
INSERT INTO REVISION (ID, BUENAS, MALAS, ESTUDIANTE_ID, puntaje_total) VALUES (5, 17, 7, 13,30);
INSERT INTO REVISION (ID, BUENAS, MALAS, ESTUDIANTE_ID, puntaje_total) VALUES (7, 17, 7, 13,20);

delete from revision;
INSERT INTO REVISION (ID, BUENAS, MALAS, ESTUDIANTE_ID, test_id, puntaje_total) VALUES (1, 9, 14, 1,1, 20);
INSERT INTO REVISION (ID, BUENAS, MALAS, ESTUDIANTE_ID, test_id, puntaje_total) VALUES (2, 17, 7, 13,2, 22);


/*Nombre de estudiantes del curso que aprueban la evaluación*/

select curso.nombre_curso as curso, nombre as aprobado, revision.puntaje_normalizado as nota_aprobacion
from estudiante
right join revision on
estudiante.id = revision.estudiante_id
right join curso on
curso.id = estudiante.curso_id
where puntaje_normalizado >= 4;

/*nota promedio de los estudiantes de un curso para una evalaución predeterminada*/

select curso.nombre_curso as curso, avg(revision.puntaje_normalizado) as promedio_curso
from estudiante
right join revision on
estudiante.id = revision.estudiante_id
right join curso on
curso.id = estudiante.curso_id
group by curso.nombre_curso;


