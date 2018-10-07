ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Run dbstart $ORACLE_HOME
-- sqlplus / as sysdba;
-- startup;
-- Save the file somewhere with some-name.sql
-- Run “sqlplus”, log in
-- Run “@some-name.sql”
-- Place to write scripts
-- Table Creation

DROP    TABLE Bill;
DROP    TABLE Payroll;
DROP    TABLE Staff;
DROP    TABLE Enrollment;
DROP    TABLE Course;
DROP    TABLE Student;
DROP    TABLE School;

CREATE  TABLE School (
    school_id               int             NOT NULL PRIMARY KEY,
    school_name             varchar(100)    NOT NULL,
    school_location         varchar(200)    NOT NULL,
    dean                    varchar(100)    NOT NULL
);

CREATE  TABLE Staff (
    staff_id                varchar(100)    NOT NULL PRIMARY KEY,
    name                    varchar(100)    NOT NULL,
    email                   varchar(255)    NOT NULL,
    title                   varchar(100)    NOT NULL,
    phone_number            varchar(16)     NOT NULL,
    office_location         varchar(200)    NOT NULL,
    salary                  number(8,2)     NOT NULL,
    bank_account            varchar(20)     NOT NULL,
    school_id               int             NOT NULL 
                            CONSTRAINT fkey_staff_school REFERENCES School(school_id)
);

CREATE  TABLE Payroll (
    payroll_id              int             NOT NULL PRIMARY KEY,
    amount                  number(8,2)     NOT NULL,
    payroll_date            date            NOT NULL,
    payroll_type            varchar(50)     NOT NULL,
    payroll_description     varchar(200)    NOT NULL,
    staff_id                varchar(100)    NOT NULL 
                            CONSTRAINT fkey_payroll_staff REFERENCES Staff(staff_id)
);

CREATE  TABLE Student (
    student_id              varchar(100)    NOT NULL PRIMARY KEY,
    name                    varchar(100)    NOT NULL,
    email                   varchar(100)    NOT NULL,
    gender                  varchar(100)    NOT NULL,
    phone_number            varchar(16)     NOT NULL,
    admission_year          int             NOT NULL,
    school_id               int             NOT NULL 
                            CONSTRAINT fkey_student_school REFERENCES School(school_id)
);

CREATE TABLE Course (
    course_id               int             NOT NULL PRIMARY KEY,
    name                    varchar(100)    NOT NULL
);

CREATE  TABLE Enrollment (
    student_id              varchar(100)    NOT NULL   
                            CONSTRAINT fkey_grade_student REFERENCES Student(student_id),
    course_id               int             NOT NULL
                            CONSTRAINT fkey_grade_course REFERENCES Course(course_id),
    grade                   int             NOT NULL
);

CREATE  TABLE Bill (
    bill_id                 int             NOT NULL PRIMARY KEY,
    semester                int             NOT NULL,
    fee_type                varchar(20)     NOT NULL,
    amount                  number(6,2)     NOT NULL,
    payment_method          varchar(20)     NOT NULL,
    payment_date            timestamp       NOT NULL,
    student_id              varchar(100)    NOT NULL   
                            CONSTRAINT fkey_bill_student REFERENCES Student(student_id)
);
