BEGIN
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
