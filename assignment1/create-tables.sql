-- Run dbstart $ORACLE_HOME
-- sqlplus / as sysdba;
-- startup;
-- Save the file somewhere with some-name.sql
-- Run “sqlplus”, log in
-- Run “@some-name.sql”
-- Place to write scripts
-- Table Creation

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 

DROP    TABLE School;
CREATE  TABLE School (
    school_id               int             NOT NULL PRIMARY KEY,
    school_name             varchar(100)    NOT NULL,
    school_location         varchar(200)    NOT NULL,
    dean                    varchar(100)    NOT NULL
);

DROP    TABLE Staff;
CREATE  TABLE Staff (
    staff_id                varchar(100)    NOT NULL PRIMARY KEY,
    name                    varchar(100)    NOT NULL,
    email                   varchar(255)    NOT NULL,
    title                   varchar(100)    NOT NULL,
    phone_number            varchar(16)     NOT NULL,
    office_location         varchar(200)    NOT NULL,
    salary                  number(8,2)     NOT NULL,
    bank_account            varchar(20)     NOT NULL,
    school_id               int             NOT NULL FOREIGN KEY REFERENCES School(school_id)
);

DROP    TABLE Payroll;
CREATE  TABLE Payroll (
    payroll_id              int             NOT NULL PRIMARY KEY,
    amount                  number(8,2)     NOT NULL,
    payroll_date            date            NOT NULL,
    payroll_type            varchar(50)     NOT NULL,
    payroll_description     varchar(200)    NOT NULL,
    staff_id                int             NOT NULL FOREIGN KEY REFERENCES Staff(staff_id)
);


DROP    TABLE Bill;
CREATE  TABLE Bill (
    bill_id                 int             NOT NULL PRIMARY KEY,
    semester                int             NOT NULL,
    fee_type                varchar(20)     NOT NULL,
    amount                  number(6,2)     NOT NULL,
    payment_method          varchar(20)     NOT NULL,
    payment_date            timestamp       NOT NULL,
    student_id              int             NOT NULL FOREIGN KEY REFERENCES Student(student_id)
);

DROP    TABLE Loan;
CREATE  TABLE Loan (
    bill_id                 int             NOT NULL,
    loan_type               varchar(20)     NOT NULL,
    fee_type                varchar(20)     NOT NULL,
    loan_amount             number(6,2)     NOT NULL,
    payment_method          varchar(20)     NOT NULL,
    guarantor               varchar(100)    NOT NULL,
    interest_rate           number(2,2)     NOT NULL,
    due_date                date            NOT NULL,
    CONSTRAINT bill_fk FOREIGN KEY (bill_id)
    REFERENCES Bill(bill_id),
    CONSTRAINT loan_pk primary key(bill_id,loan_type)
);
