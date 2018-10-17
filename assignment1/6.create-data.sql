ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Schools

INSERT INTO School (school_id, school_name, school_location, dean)
VALUES (0, 'School of Computing', 'NUS SOC Building', 'Don''t know who');

INSERT INTO School (school_id, school_name, school_location, dean)
VALUES (1, 'Admin Office', 'NUS Admin Building', 'Harry Porter');

-- LECTURER1

INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('LECTURER1', 'Lecturer 1', '1@1.com', 't1', 'p1', 'l1', 1111, '11111', 0);

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (10000, 1111, '01 Jan 2018', 'salary', 'salary', 'LECTURER1');

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (10001, 1111, '01 Feb 2018', 'salary', 'salary', 'LECTURER1');

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (10002, 1111, '01 Mar 2018', 'salary', 'salary', 'LECTURER1');

-- LECTURER2

INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('LECTURER2', 'Lecturer 2', '2@2.com', 't1', 'p1', 'l2', 2222, '22222', 0);

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (20000, 2222, '01 Jan 2018', 'salary', 'salary', 'LECTURER2');

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (20001, 2222, '01 Feb 2018', 'salary', 'salary', 'LECTURER2');

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (20002, 2222, '01 Mar 2018', 'salary', 'salary', 'LECTURER2');

-- Courses

INSERT INTO Course (course_id, course_name, location, class_time, semester, year, school_id, staff_id)
VALUES(0, 'Database Security', 'l1', 't1', 1, 2018, 0, 'LECTURER1');

INSERT INTO Course (course_id, course_name, location, class_time, semester, year, school_id, staff_id)
VALUES(1, 'System Security', 'l1', 't1', 1, 2018, 0, 'LECTURER2');

INSERT INTO Course (course_id, course_name, location, class_time, semester, year, school_id, staff_id)
VALUES(3, 'Network Security', 'l2', 't3', 1, 2018, 0, 'LECTURER2');

-- STUDENT1

INSERT INTO Student (student_id, name, email, gender, phone_number, admission_year, school_id)
VALUES ('STUDENT1', 'test', 'test@test.com', 'something', '12345678', 3000, 0);

INSERT INTO Bill (bill_id, semester, fee_type, amount, payment_method, payment_date, student_id)
VALUES (0, 1, 'school', 1000, 'online', '01 Jan 2018', 'STUDENT1');

INSERT INTO Bill (bill_id, semester, fee_type, amount, payment_method, payment_date, student_id)
VALUES (1, 2, 'Insurance', 100, 'visa', '01 Jan 2018', 'STUDENT1');

INSERT INTO Enrollment (student_id, course_id, grade)
VALUES ('STUDENT1', 0, 0);

INSERT INTO Enrollment (student_id, course_id, grade)
VALUES ('STUDENT1', 1, 80);

-- STUDENT2

INSERT INTO Student (student_id, name, email, gender, phone_number, admission_year, school_id)
VALUES ('STUDENT2', 'test', 'test@test.com', 'something', '12345678', 3000, 0);

INSERT INTO Bill (bill_id, semester, fee_type, amount, payment_method, payment_date, student_id)
VALUES (2, 1, 'school', 1000, 'online', '01 Jan 2018', 'STUDENT2');

INSERT INTO Enrollment (student_id, course_id, grade)
VALUES ('STUDENT2', 0, 100);

-- Finance
INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('FINANCE1', 'finance1', 'finance1@1.com', 'fin officer 1', 'p1', 'l2',4444, '4444444', 1);


