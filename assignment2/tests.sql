CONN lecturer1/dev@lbactest;

SELECT * FROM dev.UniversityResource;

SELECT SA_SESSION.LABEL ('db_sec_ols_pol') FROM DUAL;

BEGIN
    SA_SESSION.SET_LABEL (
        policy_name         => 'db_sec_ols_pol',
        label               => 'S:LEC,RES,CR001,LECT,SUBM,EXAM,HUFS:HOG'
    );
END;
/

SELECT SA_SESSION.LABEL ('db_sec_ols_pol') FROM DUAL;

--SELECT * FROM dev.UniversityResource;