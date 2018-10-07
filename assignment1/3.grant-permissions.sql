ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Granting Public Access

GRANT SELECT ON School TO PUBLIC;

GRANT SELECT ON Courses TO Public;

GRANT SELECT ON Staff(staff_id, name, email, title, phone_number, office_location, school_id) TO PUBLIC;

-- Granting Student Access

GRANT SELECT ON Grade TO Student;

GRANT SELECT ON Bill TO Student;

GRANT SELECT ON Student TO Student;
