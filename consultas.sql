/*P1*/
SELECT curso.nombre_curso, count (test_id) as numero_pruebas
from curso
right outer join curso_test on 
curso_test.curso_id = curso.id
group by nombre_curso;
    
/*P2*/
SELECT curso_test.curso_id as evaluacion, curso.id as numero_curso
FROM curso_test
FULL OUTER JOIN curso
ON curso_test.curso_id= curso.id
where curso_id is null;

/*P3*/

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
-- todas correctas
SELECT preguntas.id as preguntas, count (alternativas.correcta) as correctas
FROM preguntas
FULL OUTER JOIN alternativas
ON preguntas.id= preguntas_id
where correcta ='S'
having count(alternativas.correcta)>3
group by preguntas.id;

--todas incorrectas

SELECT preguntas.id as preguntas, count (alternativas.correcta) as incorrectas
FROM preguntas
FULL OUTER JOIN alternativas
ON preguntas.id= preguntas_id
where correcta ='N'
having count(alternativas.correcta)>4
group by preguntas.id;

/*P4*/
SELECT curso.id as curso, count (estudiante.id) as numero_estudiantes
FROM curso
right OUTER JOIN estudiante
ON estudiante.curso_id= curso.id
group by curso.id;

/*P5*/

select revision.puntaje, estudiante.nombre
from revision
right outer join estudiante on 
estudiante.id = revision.estudiante_id;

/*P6*/

select revision.puntaje_normalizado, estudiante.nombre
from revision
right outer join estudiante on 
estudiante.id = revision.estudiante_id;

/*P7*/
from estudiante
right join revision on
estudiante.id = revision.estudiante_id
right join curso on
curso.id = estudiante.curso_id
where puntaje_normalizado >= 4;

/*P8*/
select curso.nombre_curso as curso, avg(revision.puntaje_normalizado) as promedio_curso
from estudiante
right join revision on
estudiante.id = revision.estudiante_id
right join curso on
curso.id = estudiante.curso_id
group by curso.nombre_curso;



/*P8*/


