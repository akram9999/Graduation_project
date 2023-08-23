
--1. Basic Information:

--1-How many records (rows) and fields (columns) are there in the dataset?
--columns 
select count(*)
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Total'
--rows
select COUNT(*)
from Total
--2-What are the names of the columns in the dataset?
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Total'
--3-What are the data types of each column?
SELECT COLUMN_NAME, DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Total'
----------------------------------------------------------------------------------------------------------------------------------------------
--2. Salary Overview:

--What is the average salary for the entire dataset?
select avg(TotalPay) as Avg_Salary
from Total
--What is the highest and lowest salary recorded in the dataset?
select max(TotalPay) as max_Salary
from Total

select min(TotalPay) as min_Salary
from Total

--What is the distribution of salaries across different pay scales?
SELECT jobtitle,AVG(TotalPay) AS AVERAGE_SALARY
FROM Total
GROUP BY jobtitle
--------------------------------------------------------------------------------------------------------------------
--3. Yearly Trends:

--How does the average salary change from year to year?
select Year , avg(TotalPay)
from Total
group by Year
--What is the overall salary trend over the years?
select Year , count(TotalPay)
from Total
group by Year
------------------------------------------------------------------------------------------------------------------
--4. Jobtitle Analysis:

--Which Jobtitle have the highest and lowest average salaries?
select jobtitle,max(TotalPay) as max_Salary
from Total
group by JobTitle

select jobtitle,min(TotalPay) as min_Salary
from Total
group by JobTitle

--How does the salary distribution vary across different Jobtitle?
SELECT jobtitle,AVG(TotalPay) AS  AVERAGE_SALARY
FROM Total 
GROUP BY jobtitle;
---------------------------------------------------------------------------------------------------------------
--5. Top Earners:
--Who are the top 10 earners in the dataset?
select top(10) EmployeeName,TotalPay
from Total
--Which Jobtitle has the highest number of top earners?
--> i don't know how to answer this
------------------------------------------------------------------------------------
--6. Overtime Analysis:

--What is the proportion of employees who receive overtime pay?
select  count(EmployeeName) as EmployeeName  , OvertimePay
from Total
group by OvertimePay

--How does overtime pay affect the overall salary distribution?
select avg( overtimepay)
from Total
-----------------------------------------------------------------------------------------------
--7. Benefits Analysis:

--What are the most common benefits offered to employees?
select max(benefits)
from total
--Is there a correlation between benefits and salaries?
--> i don't know how to answer this
-------------------------------------------------------------------------------------------------
--8. Top Paid Job Titles:

--What are the top 10 job titles with the highest average salaries?
select top(10) jobtitle , totalpay
from Total
--How has the ranking of these job titles changed over time?
--> i don't know how to answer this
----------------------------------------------------------------------------------------------------------
--9. Employee Distribution:

--How many employees work in each Jobtitle?
--> i don't know how to answer this , i think because we don't have id ?!!

--What is the percentage distribution of employees across different Jobtitle?
--> i don't know how to answer this
----------------------------------------------------------------------------------------------------------------------
--10. Cost of Living:

--Is there any correlation between the cost of living in San Francisco and employee salaries?
--> i don't know how to answer this
--------------------------------------------------------------------------------------------------------------------------
--11. Employee Tenure:

--How does the salary vary based on employee tenure in the organization?
--> i don't know how to answer this
--Do long-term employees receive higher salaries?
--> i don't know how to answer this
----------------------------------------------------------------------------------------------------------------------------
--12. Performance and Salary:
--Is there any correlation between years and employee salaries?
--> i don't know how to answer this















select *  from Total