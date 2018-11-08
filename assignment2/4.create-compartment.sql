-- 00xxx - common
--  RESEARCH
--  LECTURER
--  STUDENT
--  FINANCE
--  HUMAN RESOURCES

-- 01xxx - courses
--  CR001
--  CR002

-- 02xxx - course material types
--  LECTURE
--  PROJECT
--  SUBMISSION
--  EXAMINATION

-- 03xxx - house

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
    short_name      => 'HRS',
    long_name       => 'HUMAN_RESOURCES'
  );
END;
/

BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '1001',
    short_name      => 'CR001',
    long_name       => 'ASTRONOMY'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '1002',
    short_name      => 'CR002',
    long_name       => 'CHARMS'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '1003',
    short_name      => 'CR003',
    long_name       => 'DARK ARTS'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '1004',
    short_name      => 'CR004',
    long_name       => 'FLYING'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '1005',
    short_name      => 'CR005',
    long_name       => 'HERBOLOGY'
  );
END;
/

BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '2001',
    short_name      => 'LECT',
    long_name       => 'LECTURE_MATERIAL'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '2003',
    short_name      => 'SUBM',
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

BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '3001',
    short_name      => 'GRYS',
    long_name       => 'GRYFFINDOR SECRET'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '3002',
    short_name      => 'HUFS',
    long_name       => 'HUFFLEPUFF SECRET'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '3003',
    short_name      => 'RAVS',
    long_name       => 'RAVENCLAW SECRET'
  );

  SA_COMPONENTS.CREATE_COMPARTMENT (
    policy_name     => 'db_sec_ols_pol',
    comp_num        => '3004',
    short_name      => 'SLYS',
    long_name       => 'SLYTHERIN SECRET'
  );
END;
/
