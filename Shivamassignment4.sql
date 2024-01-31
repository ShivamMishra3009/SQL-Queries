-- Shivam Mishra

-- Q1 
-- This query fetches the Employee IDs of those employees whose first name starts with 'pa', 
-- is followed by three characters, and ends with 'a'.

select EmployeeID 
from world.employees
where FirstName like 'pa___a';

-- Q2
-- This query calculates the count of employees who work at non-regional offices and 
-- were hired after the year 2000. It does this by joining the 'employees' table with 
-- the 'location' table on the 'Location' column and applying the necessary filters.


SELECT COUNT(DISTINCT e.EmployeeID) as number_of_employees
FROM world.employees e
JOIN world.location l ON e.Location = l.Location
WHERE e.hired_date > '2000-12-31' AND l.RegionalOffice = 'No';


-- Q3
-- This query identifies the most recently hired Account Rep working in a location 
-- with an audit code of 100. The employees table is joined with the location table 
-- to filter by audit code, and results are ordered by the hired date in descending order.

select a.EmployeeID 
from world.employees as a 
left join world.location as b on a.Location=b.Location
where b.AuditCode=100 and a.Title = 'Account Rep'
order by a.hired_date desc
limit 1;

-- Q4
-- This query computes the average salaries of employees categorized by their titles, 
-- but only for those employees whose performance is rated as 'Poor'. The result gives 
-- an insight into the compensation levels of poor-performing employees across different roles.

select title,avg(salaries) as AverageSalary
from world.employees
where Performance='Poor' 
group by 1;


-- Q5
-- This query returns all details for employees who were hired on a date ending with '31' 
-- (i.e., the 31st of a month) and have a last name that consists of exactly five characters.

select * 
from world.employees
where day(hired_date) = '31'
and length(lastname)=5;
