# sql_evaluacion2

Título proyecto: prueba 2, uso de lenguaje de consultas

Descripción: resolución prueba 2, bootcamp ful stack java trainee

Solicitudes ejercicio:

Creación de un sistema de evaluación que cumpla con los siguientes requisitos:

1) Test con preguntas con múltiples preguntas, con una o más alternativas, de las cuales varias pueden ser correctas.
2) Cada pregunta con un puntaje total asociado y cada alternativas correcta de la correspondiente pregunta
aporta cierto porcentaje al puntaje total.
3) Las respuestas seleccionadas por cada estudiante deben quedar almacenadas considerando el puntaje total de cada respuesta.

El sistema de evaluación además debe ser capaz de responder las siguientes consultas:

P1: Conocer el número de evaluaciones por curso.
P2: Conocer los cursos sin evaluaciones.
P3: Determinar las evaluaciones con deficiencia. Una evaluación es deficiente:
	a) Si no tiene preguntas.
	b) Si tiene preguntas con dos o menos alternativas.
	c) Si todas las alternativas son correctas o incorrectas.
P4: Determinar cuántos alumnos hay en cada curso.
P5: Obtener el puntaje no normalizado P = buenas - malas/4.
P6: Obtener el puntaje normalizado, de 1 a 7.
P7: Nombre de estudiantes del curso que aprueban una evaluación determinada.
P8: Nota promedio de un curso determinado, para una evaluación.

Adicionalmente, se espera entregar lo siguiente:

- Modelo lógico en OracleDataModeler.
- Modelo Relacional OracleDataModeler.
- DDL generado en OracleDataModeler.
- Script SQL que registre al menos 2 evaluaciones con 10 preguntas y 4 alternativas.
- Script SQL que registre al menos 2 cursos de 10 estudiantes que respondan estas evaluaciones.
- Script SQL que responda las preguntas enumeradas. 

--- RESOLUCIÓN ---

Se adjunta modelo lógico y relacional de base para la elaboración del ejercicio. Posteriormente, en el Script SQL, 
se añadieron tablas, columnas, triggers, y FK para facilitar las consultas, por lo cual las tablas generadas pueden diferir en ciertos detalles con los modelos.

El archivo pruebasql.sql
https://github.com/Pecars/sql_evaluacion2/blob/master/pruebasql.sql
Funcionó como borrador a lo largo de esta evaluación y sirvió para probar los requerimientos de las consultas y las tablas, por lo cual de no aparecer alguna consulta o modificación necesaria para compilar los script es probable que se encuentre en este archivo.

Se adjunta DDL https://github.com/Pecars/sql_evaluacion2/blob/master/DDL_generado.ddl

Se adjunta SCRIPT que registra las preguntas.

Se adjunta SCRIPT SQL que registra cursos con estudiantes, no obstante, se registran solo dos pruebas resueltas
de estudiantes. 

