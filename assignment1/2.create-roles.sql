ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Creating Roles

DROP    ROLE Student;
CREATE  ROLE Student             IDENTIFIED BY sp;

DROP    ROLE Lecturer;
CREATE  ROLE Lecturer            IDENTIFIED BY lp;

DROP    ROLE StaffAdmin;
CREATE  ROLE StaffAdmin          IDENTIFIED BY sap;

DROP    ROLE EnrollmentAdmin;
CREATE  ROLE EnrollmentAdmin     IDENTIFIED BY eap;
