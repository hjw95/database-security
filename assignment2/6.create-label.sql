BEGIN
-- UNIVERSITY RESOURCE
	-- A STUDENT SUBMISSION (CS5001) 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2001',
        label_value     => 'C:CR001,SUBM:HOG',
        data_label      => TRUE
    );

	-- AN UPCOMING EXAM PAPER (CS5001)
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2002',
        label_value     => 'S:CR001,EXAM:HOG',
        data_label      => TRUE
    );

	-- A LECTURE MATERIAL (CS5001)
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2003',
        label_value     => 'C:CR001,LECT:HOG',
        data_label      => TRUE
    );

	-- AN UNPUBLISHED RESEARCH PAPER 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2004',
        label_value     => 'S:RES:HOG',
        data_label      => TRUE
    );	

    -- CS SEMINAR MATERIAL
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2005',
        label_value     => 'C::HOG',
        data_label      => TRUE
    );	

	-- A SOC EVENT MATERIAL 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2006',
        label_value     => 'P::HOG',
        data_label      => TRUE
    );

	-- A PUBLICLY AVAILABLE RESOURCE 
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2007',
        label_value     => 'P',
        data_label      => TRUE
    );

    -- UNIVERSITY UNPUBLISHED FINANCE MATERIAL
    SA_LABEL_ADMIN.CREATE_LABEL  (
        policy_name     => 'db_sec_ols_pol',
        label_tag       => '2008',
        label_value     => 'C:FIN',
        data_label      => TRUE
    );

END;
/
