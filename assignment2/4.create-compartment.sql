-- 00xxx - common
--  RESEARCH
--  LECTURER
--  STUDENT
--  FINANCE
--  HUMAN RESOURCES

-- 01xxx - courses
--  CS5001
--  IS5001

-- 02xxx - course material types
--  LECTURE
--  PROJECT
--  SUBMISSION
--  EXAMINATION

BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '1',
    short_name      => 'RES',
    long_name       => 'RESEARCH'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '2',
    short_name      => 'LEC',
    long_name       => 'LECTURER'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '3',
    short_name      => 'STU',
    long_name       => 'STUDENT'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '4',
    short_name      => 'FIN',
    long_name       => 'FINANCE'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '5',
    short_name      => 'HR',
    long_name       => 'HUMAN_RESOURCES'
  );
END;
/

BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '1001',
    short_name      => 'IS5001',
    long_name       => 'IS5001'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '1002',
    short_name      => 'CS5001',
    long_name       => 'CS5001'
  );
END;
/

BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '2001',
    short_name      => 'LECTURE',
    long_name       => 'LECTURE_MATERIAL'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '2003',
    short_name      => 'STUSUB',
    long_name       => 'STUDENT_SUBMISSION'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '2004',
    short_name      => 'EXAM',
    long_name       => 'EXAMINATION_PAPER'
  );
END;
/
