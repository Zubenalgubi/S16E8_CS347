-- SQL/PL from Part 1 Application

SELECT first_name || ' ' || last_name AS display_value, 
person_id AS return_value FROM S16_Person 
WHERE type = :LOGIN;

SELECT first_name || ' ' || last_name AS display_value, 
person_id AS return_value FROM S16_Person 
WHERE type = 'Manager';

SELECT dept_name AS display_value, dept_no AS return_value 
FROM S16_department;

SELECT first_name || ' ' || last_name AS display_value, 
person_id AS return_value FROM S16_Person 
WHERE spouse IS NULL;