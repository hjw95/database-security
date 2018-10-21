SET SERVEROUTPUT ON;
SET ROLE LECTURER;

SELECT * FROM dev.Payroll;

SELECT * FROM dev.Staff;

SELECT * FROM dev.Enrollment;

SELECT * FROM dev.Student;


UPDATE dev.Staff SET phone_number=10101010 WHERE staff_id = 'LECTURER1';

UPDATE dev.Staff SET phone_number=20202020 WHERE staff_id = 'LECTURER2';

UPDATE dev.Staff SET salary=100000000 WHERE staff_id = 'LECTURER1';

UPDATE dev.Staff SET bank_account='1updated' WHERE staff_id = 'LECTURER1';

UPDATE dev.Enrollment SET grade=60 WHERE student_id = 'STUDENT1';
