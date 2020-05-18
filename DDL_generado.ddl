-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-05-17 17:54:59 CDT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alternativas (
    id                INTEGER NOT NULL,
    descripcion       VARCHAR2(300 CHAR) NOT NULL,
    correcta          CHAR(1) NOT NULL,
    porcentaje        INTEGER NOT NULL,
    puntaje_aportado  FLOAT(4) NOT NULL,
    preguntas_id      INTEGER
);

ALTER TABLE alternativas ADD CONSTRAINT alternativas_pk PRIMARY KEY ( id );

CREATE TABLE curso (
    id            INTEGER NOT NULL,
    nombre_curso  VARCHAR2(30 CHAR) NOT NULL
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id );

CREATE TABLE estudiante (
    id        INTEGER NOT NULL,
    nombre    VARCHAR2(60 CHAR) NOT NULL,
    curso_id  INTEGER
);

ALTER TABLE estudiante ADD CONSTRAINT estudiante_pk PRIMARY KEY ( id );

CREATE TABLE preguntas (
    id               INTEGER NOT NULL,
    enunciado        VARCHAR2(300 CHAR) NOT NULL,
    puntajeasociado  INTEGER NOT NULL,
    test_id          INTEGER
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( id );

CREATE TABLE relation_6 (
    alternativas_id  INTEGER NOT NULL,
    estudiante_id    INTEGER NOT NULL
);

ALTER TABLE relation_6 ADD CONSTRAINT relation_6_pk PRIMARY KEY ( alternativas_id,
                                                                  estudiante_id );

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

ALTER TABLE estudiante
    ADD CONSTRAINT estudiante_curso_fk FOREIGN KEY ( curso_id )
        REFERENCES curso ( id );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_test_fk FOREIGN KEY ( test_id )
        REFERENCES test ( id );

ALTER TABLE relation_6
    ADD CONSTRAINT relation_6_alternativas_fk FOREIGN KEY ( alternativas_id )
        REFERENCES alternativas ( id );

ALTER TABLE relation_6
    ADD CONSTRAINT relation_6_estudiante_fk FOREIGN KEY ( estudiante_id )
        REFERENCES estudiante ( id );

ALTER TABLE revision
    ADD CONSTRAINT revision_estudiante_fk FOREIGN KEY ( estudiante_id )
        REFERENCES estudiante ( id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
