-- Query 1: Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT students.id, students.name, students.surname
FROM students
JOIN degrees ON students.degree_id = degrees.id
WHERE degrees.name = 'economia';

-- Query 2: Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT degrees.id, degrees.name
FROM degrees
JOIN departments ON degrees.department_id = departments.id
WHERE degrees.level = 'Magistrale' AND departments.name = 'Neuroscienze';

-- Query 3: Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)


-- Query 4: Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT students.id, students.name, students.surname, degrees.name AS degree_name, departments.name AS department_name
FROM students
JOIN degrees ON students.degree_id = degrees.id
JOIN departments ON degrees.department_id = departments.id
ORDER BY students.surname, students.name;

-- Query 5: Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti

-- Query 6: Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (id=54)
SELECT teachers.id, teachers.name, teachers.surname
FROM teachers
JOIN course_teacher ON teachers.id = course_teacher.teacher_id
JOIN courses ON course_teacher.course_id = courses.id
JOIN degrees ON courses.degree_id = degrees.id
WHERE degrees.department_id = 54;

-- Query 7: Contare quanti iscritti ci sono stati ogni anno


-- Query 8: Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT office_address, COUNT(*) AS teacher_count
FROM teachers
GROUP BY office_address
HAVING COUNT(*) > 1;

--  Query 9: Calcolare la media dei voti di ogni appello d'esame
SELECT exam_id, AVG(vote) AS average_vote
FROM exam_student
GROUP BY exam_id;

--  Query 10: Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT departments.name AS department_name, COUNT(*) AS degree_count
FROM departments
LEFT JOIN degrees ON departments.id = degrees.department_id
GROUP BY department_name;

