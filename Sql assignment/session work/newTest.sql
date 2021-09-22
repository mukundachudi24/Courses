USE newTest;
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY ,
	FIRST_NAME varCHAR(25),
	LAST_NAME varCHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT varCHAR(25)
);
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, 14-02-20, 'HR'),
		(002, 'Niharika', 'Verma', 80000, 14-06-11, 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, 14-02-20, 'HR'),
		(004, 'Amitabh', 'Singh', 500000, 14-02-20, 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, 14-06-11, 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, 14-06-11, 'Account'),
		(007, 'Satish', 'Kumar', 75000, 14-01-20, 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, 14-04-11, 'Admin'),
		(009, 'Deepthi', 'Pradhan', 40000, 14-04-21, 'Admin'),
(010, 'Ranjana', 'Radhakrisnan', 50000, 14-04-21, 'HR'),
(011, 'Jyothi', 'Rao', 60000, 14-05-21, ' Account '),
(012, 'Vidya', 'Jain', 40000, 14-06-21, ' Account '),
(013, 'Rajan', 'Mishra', 200000, 14-02-21, 'HR'),
(014, 'Madhumita', 'Roy', 600000, 15-06-21, 'HR');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, 16-02-20),
		(002, 3000, 16-06-11),
		(003, 4000, 16-02-20),
		(001, 4500, 16-02-20),
		(012, 5500, 16-06-21),
		(010, 3000, 16-07-21),
		(008, 2500, 22-06-21),
		(007, 3000, 11-05-15),
		(005, 4000, 16-06-19);

CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE VarCHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', 2016-02-20),
 (002, 'Executive', 2016-06-11),
 (008, 'Executive', 2016-06-11),
 (005, 'Manager', 2016-06-11),
 (004, 'Asst. Manager', 2016-06-11),
 (007, 'Executive', 2016-06-11),
 (006, 'Lead', 2016-06-11),
 (003, 'Lead', 2016-06-11),
(009, 'Executive', 2021-06-11),
(010, 'Lead', 2021-07-11 ),
(011, 'Executive', 2021-08-11),
(012, 'Executive', 2021-07-11),
(013, 'Executive', 14-02-21),
(014, 'Senior Manager',15-06-21);





