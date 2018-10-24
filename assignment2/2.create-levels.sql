
BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'db_sec_ols_pol',
   level_num     => 40,
   short_name    => 'HS',
   long_name     => 'HIGHLY_SENSITIVE');
   
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'db_sec_ols_pol',
   level_num     => 30,
   short_name    => 'S',
   long_name     => 'SENSITIVE');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'db_sec_ols_pol',
   level_num     => 20,
   short_name    => 'C',
   long_name     => 'CONFIDENTIAL');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'db_sec_ols_pol',
   level_num     => 10,
   short_name    => 'P',
   long_name     => 'PUBLIC');
END;
/

BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
   policy_name     => 'db_sec_ols_pol',
   comp_num        => '85',
   short_name      => 'FINCL',
   long_name       => 'FINANCIAL');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'db_sec_ols_pol',
  group_num       => 1000,
  short_name      => 'WR',
  long_name       => 'WESTERN_REGION');
END;
/

BEGIN
 SA_COMPONENTS.CREATE_GROUP (
  policy_name     => 'db_sec_ols_pol',
  group_num       => 1100,
  short_name      => 'WR_SAL',
  long_name       => 'WR_SALES',
  parent_name     => 'WR');
END;
/