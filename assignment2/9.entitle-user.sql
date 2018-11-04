CONNECT lbacsys/dev@lbactest;

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER1', 
        max_level     => 'C',
        min_level     => 'P',
        def_level     => 'C',
        row_level     => 'C'
    );

    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER1', 
        read_comps    => 'LEC,RES,LECTURE,PROJ,STUSUB,EXAM',
        write_comps   => 'LEC,RES,LECTURE,PROJ,EXAM',
        def_comps     => 'LEC,RES,LECTURE,PROJ,STUSUB,EXAM',
        row_comps     => 'LEC,LECTURE'
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name    => 'db_sec_ols_pol',
        user_name      => 'LECTURER1', 
        read_groups    => 'SOC,CS',
        write_groups   => 'CS',
        def_groups     => 'SOC,CS',
        row_groups     => 'CS'
    );
END;
/

BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER2', 
        max_level     => 'C',
        min_level     => 'P',
        def_level     => 'C',
        row_level     => 'C'
    );

    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER2', 
        read_comps    => 'LEC,RES,LECTURE,PROJ,STUSUB,EXAM',
        write_comps   => 'LEC,RES,LECTURE,PROJ,EXAM',
        def_comps     => 'LEC,RES,LECTURE,PROJ,STUSUB,EXAM',
        row_comps     => 'LEC,LECTURE'
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name    => 'db_sec_ols_pol',
        user_name      => 'LECTURER2', 
        read_groups    => 'SOC,IS',
        write_groups   => 'IS',
        def_groups     => 'SOC,IS',
        row_groups     => 'IS'
    );
END;
/
