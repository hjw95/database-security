# database-security
Database security project for NUS course

https://help.github.com/articles/basic-writing-and-formatting-syntax/

ORACLE Row Level Security

https://docs.oracle.com/database/121/OLSAG/getstrtd.htm#OLSAG3734

Instruction, no guarantee it works. In general it should:
1. Run DBCA\
2. Create new database, uncheck create as container database\
3. Click next not finish\
4. Next until you need to check row level security, don't check oracle database vault (mine is not checked, don't know if it will affect anything)\
5. Complete create\
6. Login as sys (sqlplus sys/dev@dbname as sysdba)\
7. Run ALTER USER LBACSYS IDENTIFIED BY dev ACCOUNT UNLOCK;\
8. Run GRANT SELECT ANY DICTIONARY TO LBACSYS;\
9. Run ALTER PLUGGABLE DATABASE ALL OPEN;\
10. Log in as LBACSYS (sqlplus lbacsys/dev@dbname as sysdba)\
11. Run any RLS functions

Hady's test db name --> lbactest

1. Run dbstart $ORACLE_HOME
2. sqlplus / as sysdba;
3. startup;
4. Save the file somewhere with some-name.sql
5. Run “sqlplus”, log in
6. Run “@some-name.sql”
7. Place to write scripts

sqlplus lbacsys/dev@lbactest;
