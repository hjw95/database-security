ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Creating Row Level Security

-- SELECT SYS_CONTEXT('SYS_SESSION_ROLES', 'DBA') FROM DUAL;
-- SELECT SYS_CONTEXT('USERENV', 'SESSION_USER') FROM DUAL; 

CREATE OR REPLACE FUNCTION student_enrollment(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 IS condition VARCHAR2(200);
BEGIN
    DECLARE role VARCHAR2(200);
    BEGIN
        SELECT SYS_CONTEXT('SYS_SESSION_ROLES', 'STUDENT') INTO role FROM DUAL;
        IF (role = 'TRUE') THEN
            condition := 'student_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
        ELSE
            condition := '';
        END IF;
        RETURN condition;
    END;
END;
/

BEGIN
    DBMS_RLS.DROP_POLICY(
        object_schema => 'dev',
        object_name => 'Enrollment',
        policy_name => 'rls_student_enrollment'
    );
END;
/

BEGIN
    DBMS_RLS.ADD_POLICY(
        object_schema => 'dev',
        object_name => 'Enrollment',
        policy_name => 'rls_student_enrollment',
        policy_function => 'student_enrollment'
    );
END;
/
