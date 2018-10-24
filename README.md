# database-security
Database security project for NUS course

https://help.github.com/articles/basic-writing-and-formatting-syntax/

ORACLE Row Level Security

https://docs.oracle.com/database/121/OLSAG/getstrtd.htm#OLSAG3734

Run ALTER PLUGGABLE DATABASE ALL OPEN;\
Run DBCA to configure OLS\
Follow configuration and check oracle row level security
Login as system\
ALTER USER LBACSYS IDENTIFIED BY dev ACCOUNT UNLOCK;
Login as sysdba\
GRANT ALTER SESSION, SELECT ANY DICTIONARY TO LBACSYS;