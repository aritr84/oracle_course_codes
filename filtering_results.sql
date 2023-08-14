-- problem 1 -
select name, monthly_budget
from department
where monthly_budget >= 20000;

-- problem 2 - 
select name, phone, birthdate
from employee
where birthdate < date '1990-01-01';

-- problem 3 -- complex where clause
select * 
from employee
where (department_id = 1 or department_id = 2)
and (salary < 3000 
OR birthdate < date '1985-01-01');


-- null handling --
-- problem 1

SELECT
    *
FROM
    employee
WHERE
        salary > 4000
    AND ( phone != '1.234.567.8901'
          OR phone IS NULL );
          
-- null hnadling functions -- 
-- problem 1 -

select name as company_name,
coalesce(COMMERCIAL_CONTACT, TECHNICAL_CONTACT, '*NO CONTACT DATA*') as contact_name,
nvl(budget, BUDGET_RANGE_START) as budget
from company;
    
    
          







