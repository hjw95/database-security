CONNECT lbacsys/dev@lbactest;

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'dev', 
        max_level     => 'S',
        min_level     => 'P',
        def_level     => 'S',
        row_level     => 'S'
    );

    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'dev', 
        read_comps    => 'RES,LEC,STU,FIN,HR,IS5001,CS5001,LECTURE,STUSUB,EXAM',
        write_comps   => 'RES,LEC,STU,FIN,HR,IS5001,CS5001,LECTURE,STUSUB,EXAM',
        def_comps     => 'RES,LEC,STU,FIN,HR,IS5001,CS5001,LECTURE,STUSUB,EXAM',
        row_comps     => 'RES,LEC,STU,FIN,HR,IS5001,CS5001,LECTURE,STUSUB,EXAM'
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name    => 'db_sec_ols_pol',
        user_name      => 'dev', 
        read_groups    => 'SOC,CS,IS,SEC,SOB',
        write_groups   => 'SOC,CS,IS,SEC,SOB',
        def_groups     => 'SOC,CS,IS,SEC,SOB',
        row_groups     => 'SOC,CS,IS,SEC,SOB'
    );
END;
/


-- PUBLIC
BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'PUBLIC1', 
        max_level     => 'P',
        min_level     => NULL,
        def_level     => NULL,
        row_level     => NULL
    );

    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'PUBLIC1', 
        read_comps    => '',
        write_comps   => NULL,
        def_comps     => NULL,
        row_comps     => NULL
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name    => 'db_sec_ols_pol',
        user_name      => 'PUBLIC1', 
        read_groups    => '',
        write_groups   => NULL,
        def_groups     => NULL,
        row_groups     => NULL
    );
END;
/



-- LECTURER1 (CS5001)
BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER1', 
        max_level     => 'S',
        min_level     => 'P',
        def_level     => 'C',
        row_level     => 'C'
    );

    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER1', 
        read_comps    => 'LEC,RES,CS5001,LECTURE,STUSUB,EXAM',
        write_comps   => 'LEC,RES,CS5001,LECTURE,EXAM',
        def_comps     => 'LEC,RES,CS5001,LECTURE,STUSUB,EXAM',
        row_comps     => NULL
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


-- LECTURER2 (IS5001)
BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER2', 
        max_level     => 'S',
        min_level     => 'P',
        def_level     => 'C',
        row_level     => 'C'
    );

    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER2', 
        read_comps    => 'LEC,RES,IS5001,LECTURE,STUSUB,EXAM',
        write_comps   => 'LEC,RES,IS5001,LECTURE,EXAM',
        def_comps     => 'LEC,RES,IS5001,LECTURE,STUSUB,EXAM',
        row_comps     => NULL
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

