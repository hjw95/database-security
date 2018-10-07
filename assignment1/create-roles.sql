-- Creating Roles

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 

DROP    ROLE Student;
CREATE  ROLE Student             IDENTIFIED BY poorandindebt;

DROP    ROLE Lecturer;
CREATE  ROLE Lecturer            IDENTIFIED BY teachingforfun;

DROP    ROLE StaffAdmin;
CREATE  ROLE StaffAdmin          IDENTIFIED BY fearmelecturers;

DROP    ROLE EnrollmentAdmin;
CREATE  ROLE EnrollmentAdmin     IDENTIFIED BY iaddcoursesandstudents;

-- Granting Public Access

GRANT SELECT ON School TO PUBLIC;

GRANT SELECT ON Courses TO Public;

GRANT SELECT ON Staff(staff_id, name, email, title, phone_number, office_location, school_id) TO PUBLIC;

-- Granting Student Access

GRANT SELECT ON Grade TO Student;

GRANT SELECT ON Bill TO Student;

GRANT SELECT ON Student TO Student;

CREATE OR REPLACE FUNCTION StudentGrade(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 IS condition VARCHAR2(200);
BEGIN
    condition := '';
    RETURN condition;
END;
/