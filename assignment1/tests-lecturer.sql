SET SERVEROUTPUT ON;
SET ROLE LECTURER;

SELECT * FROM dev.Payroll;

SELECT * FROM dev.Staff;
SELECT * FROM dev.Course;
SELECT * FROM dev.Enrollment;
SELECT * FROM dev.Student;

UPDATE dev.Staff SET phone_number=222 WHERE staff_id = 'LECTURER1';
UPDATE dev.Staff SET salary=100000000 WHERE staff_id = 'LECTURER1';
UPDATE dev.Staff SET bank_account='1updated' WHERE staff_id = 'LECTURER1';
SELECT * FROM dev.Staff;
