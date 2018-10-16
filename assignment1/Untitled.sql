ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;


-- Student Row Level Security Function
-- Students in Student Role can view other Students in Student table
CREATE OR REPLACE FUNCTION rls_student_student(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 IS condition VARCHAR2(200);
BEGIN
    DECLARE
        role_count INT;
    BEGIN
        SELECT COUNT(*) INTO role_count FROM dev.RoleMap WHERE user_id = SYS_CONTEXT('USERENV', 'SESSION_USER') AND role_name = 'STUDENT';
        IF role_count > 0 THEN
            condition := 'student_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
        ELSIF (SYS_CONTEXT('USERENV', 'ISDBA')) THEN
            condition := '';
        ELSE
      
        END IF;
        DBMS_OUTPUT.PUT_LINE(role_count);
        RETURN condition;
    END;
END;
/
