CONNECT dev/dev@lbactest;

-- Table Creation

DROP    TABLE Bill                  CASCADE CONSTRAINTS;
DROP    TABLE Enrollment            CASCADE CONSTRAINTS;
DROP    TABLE Course                CASCADE CONSTRAINTS;
DROP    TABLE Student               CASCADE CONSTRAINTS;
DROP    TABLE Payroll               CASCADE CONSTRAINTS;
DROP    TABLE Staff                 CASCADE CONSTRAINTS;
DROP    TABLE School                CASCADE CONSTRAINTS;
DROP	TABLE UniversityResource    CASCADE CONSTRAINTS;

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

CREATE  TABLE Student (
    student_id              varchar(100)    NOT NULL PRIMARY KEY,
    name                    varchar(100)    NOT NULL,
    email                   varchar(255)    NOT NULL,
    gender                  varchar(10)     NOT NULL,
    phone_number            varchar(16)     NOT NULL,
    admission_year          int             NOT NULL,
    school_id               int             NOT NULL   
                            CONSTRAINT fkey_student_school REFERENCES School(school_id)
);

CREATE  TABLE UniversityResource (
    resource_id             int             NOT NULL PRIMARY KEY,
    resource_name           varchar (100)   NOT NULL,
    resource_format         varchar(10),   
    owner_id                varchar (100)           
);




