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
    short_name      => 'HOG',
    long_name       => 'HOGWARTS SCHOOL OF WITCHCRAFT AND WIZARDRY'
  );

  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 1001,
    short_name      => 'GRY',
    long_name       => 'GRYFFINDOR',
    parent_name     => 'HOG'
  );

  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 1002,
    short_name      => 'HUF',
    long_name       => 'HUFFLEPUFF',
    parent_name     => 'HOG'
  );

  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 1003,
    short_name      => 'RAV',
    long_name       => 'RAVENCLAW',
    parent_name     => 'HOG'
  );

  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 1004,
    short_name      => 'SLY',
    long_name       => 'SLYTHERIN',
    parent_name     => 'HOG'
  );
END;
/

BEGIN
  SA_COMPONENTS.CREATE_GROUP (
    policy_name     => 'db_sec_ols_pol',
    group_num       => 2000,
    short_name      => 'BEA',
    long_name       => 'BEAUXBATONS ACADEMY OF MAGIC'
  );
END;
/
