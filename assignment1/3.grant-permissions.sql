ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Granting Public Access

GRANT SELECT ON School TO PUBLIC;

GRANT SELECT ON Course TO PUBLIC;

GRANT SELECT ON Staff_Public TO PUBLIC;

-- Granting Student Access

GRANT SELECT ON Enrollment TO STUDENT;

GRANT SELECT ON Bill TO STUDENT;

GRANT SELECT ON Student TO STUDENT;

GRANT UPDATE (email, phone_number) ON Student TO STUDENT; 

-- Granting Lecturer Access

GRANT SELECT ON Payroll TO LECTURER;

GRANT SELECT ON Staff TO LECTURER;

GRANT UPDATE (name, email, title, phone_number, office_location, bank_account) ON Staff TO LECTURER;
GRANT SELECT ON Enrollment TO LECTURER;
GRANT UPDATE (grade) ON Enrollment TO LECTURER;
GRANT SELECT ON Student TO LECTURER;

-- Granting Course Admin Access

GRANT INSERT ON Student TO COURSE_ADMIN;
GRANT SELECT, UPDATE, INSERT ON Course TO COURSE_ADMIN;
GRANT SELECT, INSERT, DELETE ON Enrollment TO COURSE_ADMIN;

-- Granting Finance Access
GRANT SELECT, UPDATE, INSERT ON Payroll TO FINANCE;
GRANT SELECT, UPDATE, INSERT ON Bill TO FINANCE;

GRANT SELECT, INSERT ON Staff to FINANCE; -- INSERT: insufficient privileges??
GRANT UPDATE (bank_account, salary) ON Staff to FINANCE; -- insufficient privileges?


