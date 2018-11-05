BEGIN

    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY (
        policy_name    => 'db_sec_ols_pol',
        schema_name    => 'dev', 
        table_name     => 'Student',
        drop_column    =>  TRUE
    );
    
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'db_sec_ols_pol',
        schema_name    => 'dev', 
        table_name     => 'Student',
        table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL'
    );


    -- UNIVERSITY RESOURCE
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY (
        policy_name    => 'db_sec_ols_pol',
        schema_name    => 'dev', 
        table_name     => 'UniversityResource',
        drop_column    =>  TRUE
    );
    
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY (
        policy_name    => 'db_sec_ols_pol',
        schema_name    => 'dev', 
        table_name     => 'UniversityResource',
        table_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL'
    );


--    SA_POLICY_ADMIN.APPLY_SCHEMA_POLICY (
--        policy_name      => 'db_sec_ols_pol',
--        schema_name      => 'dev', 
--        default_options  => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL'
--    );
END;
/

