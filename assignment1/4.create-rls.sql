ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE; 
ALTER SESSION SET CURRENT_SCHEMA = dev;

-- Creating Row Level Security

-- SELECT SYS_CONTEXT('SYS_SESSION_ROLES', 'DBA') FROM DUAL;
-- SELECT SYS_CONTEXT('USERENV', 'SESSION_USER') FROM DUAL; 

-- Student Row Level Security Function
CREATE OR REPLACE FUNCTION rls_student(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 IS condition VARCHAR2(200);
BEGIN
    DECLARE
        role_count INT;
    BEGIN
        SELECT COUNT(*) INTO role_count FROM dev.RoleMap WHERE user_id = SYS_CONTEXT('USERENV', 'SESSION_USER') AND role_name = 'STUDENT';
        IF role_count > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Row Level Security - Student Id Limit');
            condition := 'student_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER'')';
        ELSE
            condition := '';
        END IF;
        DBMS_OUTPUT.PUT_LINE(role_count);
        RETURN condition;
    END;
END;
/

-- student can only view his own grade
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
        policy_function => 'rls_student'
    );
END;
/

-- Student can only view own bill
BEGIN
    DBMS_RLS.DROP_POLICY(
        object_schema => 'dev',
        object_name => 'Bill',
        policy_name => 'rls_student_bill'
    );
END;
/

BEGIN
    DBMS_RLS.ADD_POLICY(
        object_schema => 'dev',
        object_name => 'Bill',
        policy_name => 'rls_student_bill',
        function_schema => 'dev',
        policy_function => 'rls_student'
    );
END;
/



-- Student can only update his/her own information
BEGIN
    DBMS_RLS.DROP_POLICY(
        object_schema => 'dev',
        object_name => 'Student',
        policy_name => 'rls_student_update'
    );
END;
/

BEGIN
    DBMS_RLS.ADD_POLICY(
        object_schema => 'dev',
        object_name => 'Student',
        policy_name => 'rls_student_update',
        function_schema => 'dev',
        policy_function => 'rls_student',
	update_check => TRUE,
	sec_relevant_cols => 'student_id, email, gender, phone_number, admission_year, school_id',
	sec_relevant_cols_opt => dbms_rls.ALL_ROWS
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

-- Lecturer / Staff Row Level Security - Can select only own courses

BEGIN
    DBMS_RLS.DROP_POLICY(
        object_schema => 'dev',
        object_name => 'Course',
        policy_name => 'rls_staff_course'
    );
END;
/

BEGIN
    DBMS_RLS.ADD_POLICY(
        object_schema => 'dev',
        object_name => 'Course',
        policy_name => 'rls_staff_course',
        function_schema => 'dev',
        policy_function => 'rls_staff'
    );
END;
/

-- Lecturer / Staff Row Level Security Function for Enrollment

CREATE OR REPLACE FUNCTION rls_staff_enrollment(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 IS condition VARCHAR2(200);
BEGIN
    DECLARE
        role_count INT;
    BEGIN
        SELECT COUNT(*) INTO role_count FROM dev.RoleMap WHERE user_id = SYS_CONTEXT('USERENV', 'SESSION_USER') AND role_name = 'LECTURER';
        IF role_count > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Row Level Security - Staff Id Limit');
            condition := 'course_id IN (SELECT course_id FROM Course WHERE staff_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER''))';
        ELSE
            condition := '';
        END IF;
        RETURN condition;
    END;
END;
/

-- Lecturer / Staff Row Level Security - Can only select enrollment (grades) for own courses

BEGIN
    DBMS_RLS.DROP_POLICY(
        object_schema => 'dev',
        object_name => 'Enrollment',
        policy_name => 'rls_staff_enrollment'
    );
END;
/

BEGIN
    DBMS_RLS.ADD_POLICY(
        object_schema => 'dev',
        object_name => 'Enrollment',
        policy_name => 'rls_staff_enrollment',
        function_schema => 'dev',
        policy_function => 'rls_staff_enrollment'
    );
END;
/

-- Lecturer / Staff Row Level Security Function for Student

CREATE OR REPLACE FUNCTION rls_staff_student(v_schema IN VARCHAR2, v_obj IN VARCHAR2)
RETURN VARCHAR2 IS condition VARCHAR2(200);
BEGIN
    DECLARE
        role_count INT;
    BEGIN
        SELECT COUNT(*) INTO role_count FROM dev.RoleMap WHERE user_id = SYS_CONTEXT('USERENV', 'SESSION_USER') AND role_name = 'LECTURER';
        IF role_count > 0 THEN
            DBMS_OUTPUT.PUT_LINE('Row Level Security - Staff Id Limit');
            condition := 'student_id IN (SELECT student_id FROM Enrollment WHERE course_id IN (SELECT course_id FROM Course WHERE staff_id = SYS_CONTEXT(''USERENV'', ''SESSION_USER'')))';
        ELSE
            condition := '';
        END IF;
        RETURN condition;
    END;
END;
/

-- Lecturer / Staff Row Level Security - Can only select student for own courses

BEGIN
    DBMS_RLS.DROP_POLICY(
        object_schema => 'dev',
        object_name => 'Student',
        policy_name => 'rls_staff_student'
    );
END;
/

BEGIN
    DBMS_RLS.ADD_POLICY(
        object_schema => 'dev',
        object_name => 'Student',
        policy_name => 'rls_staff_student',
        function_schema => 'dev',
        policy_function => 'rls_staff_student'
    );
END;
/

