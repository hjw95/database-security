CONN lecturer1/dev@lbactest;

SELECT * FROM dev.UniversityResource;

SELECT SA_SESSION.LABEL ('db_sec_ols_pol') FROM DUAL;

BEGIN
    SA_SESSION.SET_LABEL (
        policy_name         => 'db_sec_ols_pol',
        label               => 'S:LEC,RES,CR001,LECT,SUBM,EXAM,GRYS,SLYS:HOG,GRY'
    );
END;
/

SELECT SA_SESSION.LABEL ('db_sec_ols_pol') FROM DUAL;

SELECT * FROM dev.UniversityResource;

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
SET Resource_name ='UPDATED MARAUDER MAP'
WHERE Resource_id = 1004;

CONN public1/dev@lbactest;
SELECT * FROM dev.UniversityResource;

CONN lecturer1/dev@lbactest;
UPDATE dev.UniversityResource
SET ols_col = CHAR_TO_LABEL('db_sec_ols_pol','P:CR001,SUBM:GRY')
WHERE Resource_id = 2;
