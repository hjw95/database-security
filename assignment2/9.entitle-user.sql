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
        read_comps    => 'RES,LEC,STU,FIN,HRS,CR001,CR002,LECT,SUBM,EXAM,GRYS,HUFS,RAVS,SLYS',
        write_comps   => 'RES,LEC,STU,FIN,HRS,CR001,CR002,LECT,SUBM,EXAM,GRYS,HUFS,RAVS,SLYS',
        def_comps     => 'RES,LEC,STU,FIN,HRS,CR001,CR002,LECT,SUBM,EXAM,GRYS,HUFS,RAVS,SLYS',
        row_comps     => 'RES,LEC,STU,FIN,HRS,CR001,CR002,LECT,SUBM,EXAM,GRYS,HUFS,RAVS,SLYS'
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name    => 'db_sec_ols_pol',
        user_name      => 'dev', 
        read_groups    => 'HOG,GRY,HUF,RAV,SLY,BEA',
        write_groups   => 'HOG,GRY,HUF,RAV,SLY,BEA',
        def_groups     => 'HOG,GRY,HUF,RAV,SLY,BEA',
        row_groups     => 'HOG,GRY,HUF,RAV,SLY,BEA'
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
        read_comps    => 'LEC,RES,CR001,LECT,SUBM,EXAM,GRYS,SLYS',
        write_comps   => 'LEC,RES,CR001,LECT,EXAM,GRYS,SLYS',
        def_comps     => 'LEC,RES,CR001,LECT,SUBM,EXAM',
        row_comps     => NULL
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name    => 'db_sec_ols_pol',
        user_name      => 'LECTURER1', 
        read_groups    => 'HOG,GRY',
        write_groups   => 'HOG,GRY',
        def_groups     => 'HOG,GRY',
        row_groups     => 'GRY'
    );
    
    SA_USER_ADMIN.SET_USER_PRIVS(
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER1', 
        privileges    => 'WRITEDOWN'
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
        read_comps    => 'LEC,RES,CR002,LECT,SUBM,EXAM,HUFS',
        write_comps   => 'LEC,RES,CR002,LECT,EXAM,HUFS',
        def_comps     => 'LEC,RES,CR002,LECT,SUBM,EXAM',
        row_comps     => NULL
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name    => 'db_sec_ols_pol',
        user_name      => 'LECTURER2', 
        read_groups    => 'HOG,HUF',
        write_groups   => 'HUF',
        def_groups     => 'HOG,HUF',
        row_groups     => 'HUF'
    );
END;
/

-- LECTURER3 (IS5001)
BEGIN
    SA_USER_ADMIN.SET_LEVELS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER3', 
        max_level     => 'S',
        min_level     => 'P',
        def_level     => 'C',
        row_level     => 'C'
    );

    SA_USER_ADMIN.SET_COMPARTMENTS (
        policy_name   => 'db_sec_ols_pol',
        user_name     => 'LECTURER3', 
        read_comps    => 'LEC,RES,CR002,LECT,SUBM,EXAM,SLYS',
        write_comps   => 'LEC,RES,CR002,LECT,EXAM,SLYS',
        def_comps     => 'LEC,RES,CR002,LECT,SUBM,EXAM',
        row_comps     => NULL
    );

    SA_USER_ADMIN.SET_GROUPS (
        policy_name    => 'db_sec_ols_pol',
        user_name      => 'LECTURER3', 
        read_groups    => 'HOG,SLY',
        write_groups   => 'SLY',
        def_groups     => 'HOG,SLY',
        row_groups     => 'SLY'
    );
END;
/