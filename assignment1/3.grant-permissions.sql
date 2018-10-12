ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Granting Public Access

GRANT SELECT ON School TO PUBLIC;

GRANT SELECT ON Course TO PUBLIC;

GRANT SELECT( staff_id, name, email, title, phone_number, office_location, school_id) ON Staff TO PUBLIC;

-- Granting Student Access

GRANT SELECT ON Enrollment TO STUDENT;

GRANT SELECT ON Bill TO STUDENT;

GRANT SELECT ON Student TO STUDENT;

-- Granting Lecturer Access

GRANT SELECT (salary, bank_account) ON Staff to LECTURER;
