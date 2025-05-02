
-- 1. Mostrar el nombre y apellido de todos los estudiantes ordenados alfabéticamente por apellido
SELECT nombre, apellido FROM Estudiante ORDER BY apellido;

-- 2. Mostrar todos los cursos que tienen más de 3 créditos
SELECT * FROM Curso WHERE creditos > 3;

-- 3. Mostrar el nombre del estudiante y el nombre del curso en el que está inscrito (INNER JOIN)
SELECT e.nombre, c.nombre 
FROM Estudiante e
INNER JOIN Inscripcion i ON e.id = i.estudiante_id
INNER JOIN Curso c ON i.curso_id = c.id;

-- 4. Mostrar todos los estudiantes y, si están inscritos, el curso correspondiente (LEFT JOIN)
SELECT e.nombre, c.nombre 
FROM Estudiante e
LEFT JOIN Inscripcion i ON e.id = i.estudiante_id
LEFT JOIN Curso c ON i.curso_id = c.id;

-- 5. Mostrar todos los cursos, incluyendo los que aún no tienen estudiantes inscritos (RIGHT JOIN)
SELECT c.nombre, e.nombre 
FROM Curso c
RIGHT JOIN Inscripcion i ON c.id = i.curso_id
LEFT JOIN Estudiante e ON i.estudiante_id = e.id;

-- 6. Contar cuántos estudiantes hay por departamento
SELECT d.nombre, COUNT(e.id) AS total_estudiantes
FROM Departamento d
LEFT JOIN Estudiante e ON d.id = e.departamento_id
GROUP BY d.nombre;

-- 7. Calcular el promedio de notas por estudiante
SELECT e.nombre, e.apellido, AVG(ca.nota) AS promedio
FROM Estudiante e
JOIN Inscripcion i ON e.id = i.estudiante_id
JOIN Calificacion ca ON i.id = ca.inscripcion_id
GROUP BY e.id;

-- 8. Mostrar la nota máxima y mínima por clase
SELECT clase_id, MAX(nota) AS nota_maxima, MIN(nota) AS nota_minima
FROM Calificacion
GROUP BY clase_id;

-- 9. Mostrar los 5 estudiantes con el mayor promedio de notas
SELECT e.nombre, e.apellido, AVG(ca.nota) AS promedio
FROM Estudiante e
JOIN Inscripcion i ON e.id = i.estudiante_id
JOIN Calificacion ca ON i.id = ca.inscripcion_id
GROUP BY e.id
ORDER BY promedio DESC
LIMIT 5;

-- 10. Cambiar el correo electrónico de un estudiante
UPDATE Estudiante SET correo = 'nuevoemail@ejemplo.com' WHERE id = 1;

-- 11. Eliminar una inscripción de un estudiante
DELETE FROM Inscripcion WHERE id = 1;
