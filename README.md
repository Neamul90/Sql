# Sql
#Find List Of Tables Used In Stored Procedure
``` 
SELECT Name
FROM sys.procedures
WHERE OBJECT_DEFINITION(OBJECT_ID) LIKE '%tbl_ACC_setup_bill_type%'
```
#A foreign key withCascade DELETE in SQL Server
```
A foreign key with cascade delete means that if a record in the parent table is deleted, then the corresponding records in the child table will automatically be deleted. This is called a cascade delete in SQL Server.
A foreign key with cascade delete can be created using either a CREATE TABLE statement or an ALTER TABLE statement.
```

```
CREATE TABLE products
( product_id INT PRIMARY KEY,
  product_name VARCHAR(50) NOT NULL,
  category VARCHAR(25)
);

CREATE TABLE inventory
( inventory_id INT PRIMARY KEY,
  product_id INT NOT NULL,
  quantity INT,
  min_level INT,
  max_level INT,
  CONSTRAINT fk_inv_product_id
    FOREIGN KEY (product_id)
    REFERENCES products (product_id)
    ON DELETE CASCADE
);
```
```
CREATE TABLE Worker (
    Worker_id  int IDENTITY(1,1) PRIMARY KEY,
    First_name varchar(25) NOT NULL,
    Last_name varchar(25),
    Salary int,
	Joinig_date DATETIME,
	Department varchar(25)
);
CREATE TABLE Bonus (
	Bonus_id int IDENTITY(1,1) PRIMARY KEY,
	Bonus_amount int,
	Bonus_date DATETIME,
	Worker_id int FOREIGN KEY REFERENCES Worker(Worker_id)
);
CREATE TABLE Title
( 
    Title_id int IDENTITY(1,1) PRIMARY KEY,
	Worker_Title CHAR(25),
	Affected_From DATETIME,
	Worker_ref_id int not null,
    CONSTRAINT fk_Worker_ref_id
    FOREIGN KEY (Worker_ref_id)
    REFERENCES Worker(Worker_id)
    ON DELETE CASCADE
);
```
