ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Create data

INSERT INTO School
(
    school_id,
    school_name,
    school_location,
    dean
)
VALUES
(
    0,
    'School of Computing',
    'NUS Somwewhere',
    'Don''t know who'
);

INSERT INTO Course
(
    course_id,
    name
)
VALUES
(
    0,
    'Database Security'
);

INSERT INTO Student
(
    student_id,
    name,
    email,
    gender,
    phone_number,
    admission_year,
    school_id    
)
VALUES
(
    'user1',
    'test',
    'test@test.com',
    'something',
    '12345678',
    3000,
    0
);

INSERT INTO Student
(
    student_id,
    name,
    email,
    gender,
    phone_number,
    admission_year,
    school_id    
)
VALUES
(
    'user2',
    'test',
    'test@test.com',
    'something',
    '12345678',
    3000,
    0
);

INSERT INTO Enrollment
(
    student_id,
    course_id,
    grade
)
VALUES
(
    'user1',
    0,
    0
);


INSERT INTO Enrollment
(
    student_id,
    course_id,
    grade
)
VALUES
(
    'user2',
    0,
    100
);