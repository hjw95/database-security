CONNECT dev/dev@lbactest;


-- Schools

INSERT INTO School (school_id, school_name, school_location, dean)
VALUES (0, 'School of Computing', 'NUS SOC Building', 'Allan Chua');

INSERT INTO School (school_id, school_name, school_location, dean)
VALUES (1, 'Admin Office', 'NUS Admin Building', 'Albus Dumbledore');

-- LECTURER1

INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('LECTURER1', 'Filius Flitwick', 'filius@hogwarts.com', 'Charms', '91234353', 'Ravenclaw', 1111, '11111', 0);

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (10000, 1111, '01 Jan 2018', 'salary', 'salary', 'LECTURER1');

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (10001, 1111, '01 Feb 2018', 'salary', 'salary', 'LECTURER1');

INSERT INTO Payroll(payroll_id, amount, payroll_date, payroll_type, payroll_description, staff_id)
VALUES (10002, 1111, '01 Mar 2018', 'salary', 'salary', 'LECTURER1');

-- LECTURER2

INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('LECTURER2', 'Minerva McGonagall', 'minerva@hogwarts.com', 'Transfiguration', '9876654424', 'Gryffindor', 2222, '22222', 0);

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

INSERT INTO Student (student_id, name, email, gender, phone_number, admission_year, school_id, ols_col)
VALUES ('STUDENT1', 'Harry Potter', 'harry@test.com', 'male', '92345678', 3000, 0, CHAR_TO_LABEL('db_sec_ols_pol','C:STU:CS'));

INSERT INTO Bill (bill_id, semester, fee_type, amount, payment_method, payment_date, student_id)
VALUES (0, 1, 'school', 1000, 'online', '01 Jan 2018', 'STUDENT1');

INSERT INTO Bill (bill_id, semester, fee_type, amount, payment_method, payment_date, student_id)
VALUES (1, 2, 'Insurance', 100, 'visa', '01 Jan 2018', 'STUDENT1');

INSERT INTO Enrollment (student_id, course_id, grade)
VALUES ('STUDENT1', 0, 0);

INSERT INTO Enrollment (student_id, course_id, grade)
VALUES ('STUDENT1', 1, 80);

-- STUDENT2

INSERT INTO Student (student_id, name, email, gender, phone_number, admission_year, school_id, ols_col)
VALUES ('STUDENT2', 'Hermione Granger', 'hermione@test.com', 'female', '99345678', 3000, 0, CHAR_TO_LABEL('db_sec_ols_pol','C:STU:IS'));

INSERT INTO Bill (bill_id, semester, fee_type, amount, payment_method, payment_date, student_id)
VALUES (2, 1, 'school', 1000, 'online', '01 Jan 2018', 'STUDENT2');

INSERT INTO Enrollment (student_id, course_id, grade)
VALUES ('STUDENT2', 1, 100);

-- Finance
INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('FINANCE1', 'Severus Snape', 'finance1@hogwarts.com', 'fin officer 1', '98098656', 'Potions Lab',4444, '4444444', 1);


-- UNIVERSITY RESOURCE
INSERT INTO universityresource (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_STAFF_ID, OWNER_STUDENT_ID, SCHOOL_ID, ols_col)
VALUES (1, 'CS5001 EXAM PAPER', 'PDF', 'LECTURER1', NULL, 1, CHAR_TO_LABEL('db_sec_ols_pol','S:CS5001,EXAM:CS'));

INSERT INTO UNIVERSITYRESOURCE (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_STAFF_ID, OWNER_STUDENT_ID, SCHOOL_ID, ols_col)
VALUES (2, 'CS5001 STUDENT SUBMISSION', 'DOC', NULL, 'STUDENT1', 1, CHAR_TO_LABEL('db_sec_ols_pol','C:CS5001,STUSUB:CS'));

INSERT INTO UNIVERSITYRESOURCE (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_STAFF_ID, OWNER_STUDENT_ID, SCHOOL_ID, ols_col)
VALUES (3, 'RESEARCH PAPER', 'DOC', NULL, 'STUDENT1', 1, CHAR_TO_LABEL('db_sec_ols_pol','S:RES:CS'));

INSERT INTO UNIVERSITYRESOURCE (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_STAFF_ID, OWNER_STUDENT_ID, SCHOOL_ID, ols_col)
VALUES (4, 'CS5001 LECTURE NOTE 1', 'PPTX', 'LECTURER1', NULL, 1, CHAR_TO_LABEL('db_sec_ols_pol','C:CS5001,LECTURE:CS'));

INSERT INTO UNIVERSITYRESOURCE (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_STAFF_ID, OWNER_STUDENT_ID, SCHOOL_ID, ols_col)
VALUES (5, 'CS EVENT BROCHURE', 'PDF', NULL, NULL, 1, CHAR_TO_LABEL('db_sec_ols_pol','P::SOC'));

INSERT INTO UNIVERSITYRESOURCE (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_STAFF_ID, OWNER_STUDENT_ID, SCHOOL_ID, ols_col)
VALUES (6, 'PUBLIC NEWS', 'PDF', NULL, NULL, 1, CHAR_TO_LABEL('db_sec_ols_pol','P'));