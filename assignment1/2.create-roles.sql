ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Creating Roles

DROP    ROLE Student;
CREATE  ROLE Student;

DROP    ROLE Lecturer;
CREATE  ROLE Lecturer;

DROP    ROLE StaffAdmin;
CREATE  ROLE StaffAdmin;

DROP    ROLE EnrollmentAdmin;
CREATE  ROLE EnrollmentAdmin;
