

CREATE TABLE employees (
	EmpNo INT PRIMARY KEY,
	Emp_Title VARCHAR,
	BirthDate VARCHAR,
	FirstName VARCHAR,
	LastName VARCHAR,
	Sex VARCHAR,
	HireDate VARCHAR
);

CREATE TABLE salaries (
	EmpNo INT REFERENCES employees(EmpNo),
	Salary INT,
	PRIMARY KEY(EmpNo)
);

CREATE TABLE titles (
	titleID VARCHAR,
	Title VARCHAR,
	PRIMARY KEY(titleID)
);

CREATE TABLE Dept_Emp (
	EmpNo INT REFERENCES employees(EmpNo),
	DepartmentNo VARCHAR,
	PRIMARY KEY(EmpNo, DepartmentNo)
);

CREATE TABLE dept (
	DepartmentNo VARCHAR,
	DepartmentName VARCHAR,
	PRIMARY KEY(DepartmentNo)
);

CREATE TABLE dept_manager (
	DepartmentNo VARCHAR,
	EmpNo INT,
	PRIMARY KEY(DepartmentNo, EmpNo)
);





