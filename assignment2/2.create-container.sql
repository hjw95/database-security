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