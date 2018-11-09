CONN sys/dev@lbactest as sysdba;

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

CREATE OR REPLACE FUNCTION rls_student(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 IS condition VARCHAR2(200);
BEGIN
    DECLARE
        student_count INT;
    BEGIN
        SELECT COUNT(*) INTO student_count FROM dev.Student WHERE student_id = SYS_CONTEXT('USERENV', 'SESSION_USER');
        IF student_count > 0 THEN
            condition := '(owner_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER'') OR owner_id IS NULL)';
        ELSE
            condition := '';
        END IF;
        RETURN condition;
    END;
END;
/

BEGIN
    DBMS_RLS.ADD_POLICY(
        object_schema => 'dev',
        object_name => 'UniversityResource',
        policy_name => 'rls_student_universityresource',
        function_schema => 'dev',
        policy_function => 'rls_student'
    );
END;
/