CONN lecturer1/dev@lbactest;

SELECT Resource_id, Resource_name, Resource_format, Owner_id, LABEL_TO_CHAR (Ols_col)FROM dev.UniversityResource;

SELECT SA_SESSION.LABEL ('db_sec_ols_pol') FROM DUAL;

BEGIN
    SA_SESSION.SET_LABEL (
        policy_name         => 'db_sec_ols_pol',
        label               => 'S:LEC,RES,CR001,LECT,SUBM,EXAM,GRYS,SLYS:HOG,GRY,BEA'
    );
END;
/

SELECT SA_SESSION.LABEL ('db_sec_ols_pol') FROM DUAL;

SELECT Resource_id, Resource_name, Resource_format, Owner_id, LABEL_TO_CHAR (Ols_col)FROM dev.UniversityResource;

UPDATE dev.UniversityResource
SET Resource_name ='UPDATED PUBLIC NEWS'
WHERE Resource_id = 6;

UPDATE dev.UniversityResource
SET Resource_name = 'UPDATED GRYFFINDOR STYLE QUIDDITCH' 
WHERE Resource_id=2004;

UPDATE dev.UniversityResource
SET Resource_name ='UPDATED CR001 STUDENT SUBMISSION'
WHERE Resource_id = 2;

UPDATE dev.UniversityResource
SET Resource_name ='UPDATED BEAUXBATONS MAP'
WHERE Resource_id = 3001;

SELECT SA_SESSION.PRIVS ('db_sec_ols_pol') FROM DUAL;

SELECT Resource_id, Resource_name, Resource_format, Owner_id, LABEL_TO_CHAR (Ols_col)FROM dev.UniversityResource WHERE Resource_Id=1;

UPDATE  dev.UniversityResource
SET     ols_col = CHAR_TO_LABEL('db_sec_ols_pol','C:CR001,EXAM:HOG')
WHERE   Resource_Id = 1;


CONN public1/dev@lbactest;
SELECT * FROM dev.UniversityResource;
