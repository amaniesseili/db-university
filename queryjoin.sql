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




