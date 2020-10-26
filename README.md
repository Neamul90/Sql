# Sql
#Find List Of Tables Used In Stored Procedure
``` 
SELECT Name
FROM sys.procedures
WHERE OBJECT_DEFINITION(OBJECT_ID) LIKE '%tbl_ACC_setup_bill_type%'
```
