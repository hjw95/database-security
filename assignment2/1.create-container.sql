ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
ALTER SESSION SET CURRENT_SCHEMA = dev;

BEGIN
    SA_SYSDBA.DROP_POLICY (
        policy_name      => 'db_sec_ols_pol'
    );
END;
/

BEGIN
    SA_SYSDBA.CREATE_POLICY (
        policy_name      => 'db_sec_ols_pol',
        column_name      => 'ols_col',
        default_options  => 'read_control, write_control'
    );
END;
/

BEGIN
 SA_COMPONENTS.CREATE_LEVEL (
   policy_name   => 'db_sec_ols_pol',
   level_num     => 40,
   short_name    => 'HS',
   long_name     => 'HIGHLY_SENSITIVE');
END;
/

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

BEGIN
  SA_COMPONENTS.CREATE_COMPARTMENT (
   policy_name     => 'db_sec_ols_pol',
   comp_num        => '85',
   short_name      => 'FINCL',
   long_name       => 'FINANCIAL');
END;
/