Oracle SQL HR Analytics Project


Task 1.  
  Business Question: 
   Employees with department names :
  
SELECT
   a.FIRST_NAME,
   a.LAST_NAME,
   b.DEPARTMENT_NAME
FROM 
   EMPLOYEES a
LEFT JOIN 
   DEPARTMENTS b on a.DEPARTMENT_ID = b.DEPARTMENT_ID;



Task 2.
  Business Question: 
   Employees without department :
  
SELECT
   a.FIRST_NAME,
   a.LAST_NAME,
   b.DEPARTMENT_NAME
FROM 
   EMPLOYEES a
LEFT JOIN 
   DEPARTMENTS b ON a.DEPARTMENT_ID = b.DEPARTMENT_ID
WHERE 
   b.DEPARTMENT_ID is null;



Task 3. 
  Business Question: 
   Which employees earn above the company average salary? :
  
SELECT
   FIRST_NAME,
   LAST_NAME,
   SALARY
FROM
   EMPLOYEES
WHERE
   salary > 
   (SELECT avg(salary)
FROM EMPLOYEES
  );



Task 4. 
  Business Question: 
   Which departments have an average salary greater than 8000? 
  
SELECT
   a.DEPARTMENT_NAME,
   avg(b.SALARY) AS avg_salary
FROM 
   DEPARTMENTS a
JOIN
   EMPLOYEES b ON a.DEPARTMENT_ID  = b.DEPARTMENT_ID
GROUP BY 
   a.DEPARTMENT_NAME
HAVING
   avg(b.SALARY)>8000;
  



Task 5.
  Business Question: 
   How many employees work in each department, including departments with no employees? 
  
SELECT
   a.DEPARTMENT_NAME,
COUNT (b.DEPARTMENT_ID) AS employee_count
FROM
   DEPARTMENTS a
LEFT JOIN
   EMPLOYEES b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
GROUP BY
   a.DEPARTMENT_NAME;




Conclusion :

Using Oracle HR schema, I analyzed employee distribution and salaries across departments. 
Identified departments with high average salaries and employees earning above company average.
The project demonstrates skills in joins, aggregations, subqueries and handling NULL values.
