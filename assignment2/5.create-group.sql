--01XXX - SoC 
--  CS
--  IS
--  SEC
--02XXX - SOB
--
--Admin
--  Finance
--  HR
--  Course

BEGIN
  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 1000,
    short_name      => 'SOC',
    long_name       => 'SCHOOL_OF_COMPUTING'
  );

  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 1001,
    short_name      => 'CS',
    long_name       => 'COMPUTER_SCIENCE',
    parent_name     => 'SOC'
  );

  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 1002,
    short_name      => 'IS',
    long_name       => 'INFORMATION_SYSTEMS',
    parent_name     => 'SOC'
  );

  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 1003,
    short_name      => 'SEC',
    long_name       => 'INFOCOMM_SECURITY',
    parent_name     => 'SOC'
  );
END;
/

BEGIN
  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 2000,
    short_name      => 'SOB',
    long_name       => 'SCHOOL_OF_BIOLOGY'
  );
END;
/