-- SELECT column(s) FROM table;
-- SELECT * FROM doctors;
-- SELECT first_name, last_name FROM doctors;

-- SELECT * FROM doctors WHERE id = 2;

-- SELECT * FROM doctors WHERE age < 40;

-- SELECT * FROM doctors WHERE specialty = "Psychology";

-- SELECT * FROM doctors WHERE first_name LIKE "%A%";

-- SELECT * FROM doctors
-- WHERE age < 35
-- OR specialty = "Psychology";

-- SELECT * FROM doctors
-- WHERE age < 50
-- AND specialty = "Psychology";

-- SELECT * FROM doctors ORDER BY age DESC;
-- SELECT * FROM doctors ORDER BY first_name DESC;

-- SELECT COUNT(*) FROM doctors;
-- SELECT COUNT(*) FROM doctors WHERE specialty = "Chemistry";

-- SELECT SUM(age) FROM doctors;
-- SELECT AVG(age) FROM doctors;
-- SELECT ROUND(AVG(age)) FROM doctors;

-- SELECT COUNT(*), specialty
-- FROM doctors
-- GROUP BY specialty;

-- SELECT COUNT(*) AS c, specialty AS s
-- FROM doctors
-- GROUP BY s
-- ORDER BY c DESC;

-- SELECT AVG(age), specialty
-- FROM doctors
-- GROUP BY specialty;

-- SELECT * FROM appointments
-- JOIN doctors ON appointments.doctor_id = doctors.id;

-- Read all patients & last names along with their appointment dates

-- SELECT  patients.first_name, patients.last_name, occurs_on FROM patients
-- JOIN appointments ON patients.id = appointments.patient_id;

-- appointments dates along with julian's patients first name & last name

-- SELECT patients.first_name, patients.last_name, occurs_on FROM appointments
-- JOIN doctors ON doctors.id = appointments.doctor_id
-- JOIN patients ON patients.id = appointments.patient_id
-- WHERE doctors.first_name = "Julian"
-- AND doctors.last_name = "Cass";

-- CRUD

-- CREATE

-- INSERT INTO doctors (first_name, last_name, age, specialty)
-- VALUES ("Rayz", "Arain", 67, "Physician");


-- UPDATE

-- UPDATE table_name SET column_to_update = new_value WHERE id = id;

-- UPDATE doctors SET specialty = "Neurosurgeon", age = 68 WHERE id = 10;
-- SELECT * FROM doctors;

-- DELETE

DELETE FROM doctors WHERE id = 3;
SELECT * FROM doctors;