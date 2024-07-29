/*creating an employee table*/
CREATE TABLE employee(
  empno INT UNIQUE,
  ename VARCHAR(30),
  job VARCHAR(40),
  mgr INT,
  hiredate VARCHAR(10),
  sal DECIMAL,
  comm DECIMAL,
  deptno INT
);
DESCRIBE TABLE employee;
/*insert values to the table*/
INSERT INTO employee VALUES(8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20);
INSERT INTO employee VALUES(8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30);
INSERT INTO employee VALUES(8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30);
INSERT INTO employee VALUES(8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20);
INSERT INTO employee VALUES(8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30);
INSERT INTO employee VALUES(8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30);
INSERT INTO employee VALUES(8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10);
INSERT INTO employee VALUES(8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20);
INSERT INTO employee VALUES(8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10);
INSERT INTO employee VALUES(8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);

SELECT * FROM employee;

DROP TABLE employee;

/*select name and salary of an employee where salary greater than equal to 2200*/
SELECT ename, sal FROM employee WHERE sal>=2200;
/*select employee where commission is null*/
SELECT * FROM employee WHERE comm IS NULL OR comm=0;
/*select employee name and slary whose don't have salary in particular range(2500-4000)*/
SELECT ename, sal FROM employee WHERE sal<2500 OR sal>4000;
/*select name,salary and job title of employee who don't have a manager*/
SELECT ename, sal, job FROM employee WHERE mgr IS NULL;
/*select employee name whose name contains A as third letter*/
SELECT ename FROM employee WHERE ename LIKE '__A%';
/*select employee name whose name contains T as last letter*/
SELECT ename FROM employee WHERE ename LIKE '%T';

