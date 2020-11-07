CREATE DATABASE ORG;
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