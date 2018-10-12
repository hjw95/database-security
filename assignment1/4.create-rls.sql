ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Creating Row Level Security

-- SELECT SYS_CONTEXT('SYS_SESSION_ROLES', 'DBA') FROM DUAL;
-- SELECT SYS_CONTEXT('USERENV', 'SESSION_USER') FROM DUAL; 

CREATE OR REPLACE FUNCTION student_enrollment(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 IS condition VARCHAR2(200);
BEGIN
    DECLARE
        role_count INT;
    BEGIN
        SELECT COUNT(*) INTO role_count FROM dev.RoleMap WHERE user_id = SYS_CONTEXT('USERENV', 'SESSION_USER') AND role_name = 'STUDENT';
        IF role_count > 0 THEN
            condition := 'student_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
        ELSE
            condition := '';
        END IF;
        DBMS_OUTPUT.PUT_LINE(role_count);
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
        function_schema => 'dev',
        policy_function => 'student_enrollment'
    );
END;
/


-- Lecturer / Staff Row Level Security Function

CREATE OR REPLACE FUNCTION rls_staff(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 IS condition VARCHAR2(200);
BEGIN
    DECLARE
        role_count INT;
    BEGIN
        SELECT COUNT(*) INTO role_count FROM dev.RoleMap WHERE user_id = SYS_CONTEXT('USERENV', 'SESSION_USER') AND role_name = 'LECTURER';
        IF role_count > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Row Level Security - Staff Id Limit');
            condition := 'staff_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
        ELSE
            condition := '';
        END IF;
        RETURN condition;
    END;
END;
/

-- Lecturer / Staff Row Level Security - Can select only own payroll

BEGIN
    DBMS_RLS.DROP_POLICY(
        object_schema => 'dev',
        object_name => 'Payroll',
        policy_name => 'rls_staff_payroll'
    );
END;
/

BEGIN
    DBMS_RLS.ADD_POLICY(
        object_schema => 'dev',
        object_name => 'Payroll',
        policy_name => 'rls_staff_payroll',
        function_schema => 'dev',
        policy_function => 'rls_staff'
    );
END;
/

-- Lecturer / Staff Row Level Security - Can select only own salary and bank account


BEGIN
    DBMS_RLS.DROP_POLICY(
        object_schema => 'dev',
        object_name => 'Staff',
        policy_name => 'rls_staff_staff'
    );
END;
/

BEGIN
    DBMS_RLS.ADD_POLICY(
        object_schema => 'dev',
        object_name => 'Staff',
        policy_name => 'rls_staff_staff',
        function_schema => 'dev',
        policy_function => 'rls_staff',
        sec_relevant_cols => 'salary, bank_account',
        sec_relevant_cols_opt => DBMS_RLS.ALL_ROWS
    );
END;
/
