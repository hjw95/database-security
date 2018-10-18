SET SERVEROUTPUT ON;
SET ROLE STUDENT;

SELECT * FROM dev.Enrollment;

SELECT * FROM dev.Bill;

SELECT * FROM dev.Student;

UPDATE dev.Student set email = 'changed_email1@gmail.com' where student_id = 'STUDENT1';
UPDATE dev.Student set email = 'changed_email2@gmail.com' where student_id = 'STUDENT2';

--SELECT user_id FROM dev.RoleMap WHERE role_name = 'STUDENT';
