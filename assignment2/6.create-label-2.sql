BEGIN
-------------------------------------------------------------------------------------------------

	-- AN UPCOMING EXAM PAPER (CR001)
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2001',
        label_value     => 'S:CR001,EXAM:HOG',
        data_label      => TRUE
    );

	-- A LECTURE MATERIAL (CR001)
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2002',
        label_value     => 'C:CR001,LECT:HOG',
        data_label      => TRUE
    );

-------------------------------------------------------------------------------------------------

	-- AN UNPUBLISHED RESEARCH PAPER 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2003',
        label_value     => 'S:RES:HOG',
        data_label      => TRUE
    );	

    -- GRYFFINDOR SECRET RESEARCH
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2004',
        label_value     => 'S:RES,GRYS:GRY',
        data_label      => TRUE
    );	

    -- SLYTHERIN SPY IN GRYFFINDOR
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2005',
        label_value     => 'S:SLYS:GRY',
        data_label      => TRUE
    );	

    -- SLYTHERIN SECRET RESEARCH
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2006',
        label_value     => 'S:RES,SLYS:SLY',
        data_label      => TRUE
    );	

    -- HOGWARTS FINANCE MATERIAL
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2009',
        label_value     => 'C:FIN:HOG',
        data_label      => TRUE
    );

	-- HOGWARTS EVENT MATERIAL 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2007',
        label_value     => 'P::HOG',
        data_label      => TRUE
    );

	-- A PUBLICLY AVAILABLE RESOURCE 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2008',
        label_value     => 'P',
        data_label      => TRUE
    );

-------------------------------------------------------------------------------------------------

    -- HOGWARTS E-LIBRARY
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '3001',
        label_value     => 'C::HOG',
        data_label      => TRUE
    );	

    -- HOGWARTS SECRET E-LIBRARY
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '3002',
        label_value     => 'S::HOG',
        data_label      => TRUE
    );	

-------------------------------------------------------------------------------------------------

END;
/
