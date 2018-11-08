CONNECT dev/dev@lbactest;


-- Schools

INSERT INTO School (school_id, school_name, school_location, dean)
VALUES (0, 'Hogwarts School of Witchcraft and Wizardry', 'Great Britain', 'Albus Dumbledore');

INSERT INTO School (school_id, school_name, school_location, dean)
VALUES (1, 'Beauxbatons Academy of Magic', 'France', 'Olympe Maxime');

INSERT INTO School (school_id, school_name, school_location, dean)
VALUES (2, 'Durmstrang Institute', 'Northern Europe', 'Igor Karkaroff');

INSERT INTO School (school_id, school_name, school_location, dean)
VALUES (3, 'Ilvermorny School of Witchcraft and Wizardry', 'North America', 'Agilbert Fontaine');

-- LECTURER

INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('LECTURER1', 'Filius Flitwick', 'filius@hogwarts.com', 'Charms', '91234353', 'Ravenclaw', 1111, '11111', 0);

INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('LECTURER2', 'Minerva McGonagall', 'minerva@hogwarts.com', 'Transfiguration', '9876654424', 'Gryffindor', 2222, '22222', 0);

INSERT INTO Staff(staff_id, name, email, title, phone_number, office_location, salary, bank_account, school_id)
VALUES ('LECTURER3', 'Severus Snape', 'snape@hogwarts.com', 'Weird Guy', '98098656', 'Slytherin', 4444, '4444444', 0);

-- STUDENT

INSERT INTO Student (student_id, name, email, gender, phone_number, admission_year, school_id)
VALUES ('STUDENT1', 'Harry Potter', 'harry@test.com', 'male', '92345678', 3000, 0);

INSERT INTO Student (student_id, name, email, gender, phone_number, admission_year, school_id)
VALUES ('STUDENT2', 'Hermione Granger', 'hermione@test.com', 'female', '99345678', 3000, 0);

-- UNIVERSITY RESOURCE

INSERT INTO universityresource (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_ID, ols_col)
VALUES (1, 'CR001 EXAM PAPER',          'PDF',  'LECTURER1',    CHAR_TO_LABEL('db_sec_ols_pol','S:CR001,EXAM:HOG'));

INSERT INTO universityresource (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_ID, ols_col)
VALUES (2, 'CR001 STUDENT SUBMISSION',  'DOC',  'STUDENT1',     CHAR_TO_LABEL('db_sec_ols_pol','C:CR001,STUSUB:HOG'));

INSERT INTO universityresource (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_ID, ols_col)
VALUES (3, 'RESEARCH PAPER',            'DOC',  'STUDENT1',     CHAR_TO_LABEL('db_sec_ols_pol','S:RES:HOG'));

INSERT INTO universityresource (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_ID, ols_col)
VALUES (4, 'CR001 LECTURE NOTE 1',      'PPTX', 'LECTURER1',    CHAR_TO_LABEL('db_sec_ols_pol','C:CR001,LECTURE:HOG'));

INSERT INTO universityresource (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_ID, ols_col)
VALUES (5, 'HOGWARTS EVENT BROCHURE',   'PDF',  NULL,           CHAR_TO_LABEL('db_sec_ols_pol','P::HOG'));

INSERT INTO universityresource (RESOURCE_ID, RESOURCE_NAME, RESOURCE_FORMAT, OWNER_ID, ols_col)
VALUES (6, 'PUBLIC NEWS',               'PDF',  NULL,           CHAR_TO_LABEL('db_sec_ols_pol','P'));