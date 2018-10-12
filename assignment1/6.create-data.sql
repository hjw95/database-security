ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Create data

INSERT INTO School (school_id, school_name, school_location, dean)
VALUES (0, 'School of Computing', 'NUS Somwewhere', 'Don''t know who');

INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('LECTURER1', 'Name1', '1@1.com', 't1', 'p1', 'l1', 20000, '11111', 0);

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (0, 20000, '01 Jan 2018', 'salary', 'salary', 'LECTURER1');

INSERT INTO Course (course_id, course_name, location, class_time, semester, year, school_id, staff_id)
VALUES(0, 'Database Security', 'l1', 't1', 1, 2018, 0, 'LECTURER1');

INSERT INTO Student (student_id, name, email, gender, phone_number, admission_year, school_id)
VALUES ('STUDENT1', 'test', 'test@test.com', 'something', '12345678', 3000, 0);

INSERT INTO Student (student_id, name, email, gender, phone_number, admission_year, school_id)
VALUES ('STUDENT2', 'test', 'test@test.com', 'something', '12345678', 3000, 0);

INSERT INTO Bill (bill_id, semester, fee_type, amount, payment_method, payment_date, student_id)
VALUES (0, 1, 'school', 1000, 'online', '01 Jan 2018', 'STUDENT1');

INSERT INTO Enrollment (student_id, course_id, grade)
VALUES ('STUDENT1', 0, 0);

INSERT INTO Enrollment (student_id, course_id, grade)
VALUES ('STUDENT2', 0, 100);