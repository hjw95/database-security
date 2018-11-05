BEGIN
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '1001',
        label_value     => 'C:IS5001,LECTURE:IS',
        data_label      => TRUE
    );

    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '1002',
        label_value     => 'C:IS5001,STUSUB:IS',
        data_label      => TRUE
    );

    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '1003',
        label_value     => 'C:STU:CS',
        data_label      => TRUE
    );

    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '1004',
        label_value     => 'C:STU:IS',
        data_label      => TRUE
    );


-- UNIVERSITY RESOURCE

	-- A STUDENT SUBMISSION (CS5001) 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2001',
        label_value     => 'C:CS5001,STUSUB:CS',
        data_label      => TRUE
    );

	-- AN UPCOMING EXAM PAPER (CS5001)
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2002',
        label_value     => 'S:CS5001,EXAM:CS',
        data_label      => TRUE
    );

	-- AN UNPUBLISHED RESEARCH PAPER 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2003',
        label_value     => 'S:RES:CS',
        data_label      => TRUE
    );	

	-- A LECTURE MATERIAL (CS5001)
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2004',
        label_value     => 'C:CS5001,LECTURE:CS',
        data_label      => TRUE
    );

	-- A SOC EVENT MATERIAL 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2005',
        label_value     => 'P::SOC',
        data_label      => TRUE
    );

	-- A PUBLICLY AVAILABLE RESOURCE 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2006',
        label_value     => 'P',
        data_label      => TRUE
    );

END;
/
