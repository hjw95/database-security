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
END;
/