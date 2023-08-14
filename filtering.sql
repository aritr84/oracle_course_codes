select * 
from products
where (price = 5 or price = 25)
    and expiration_date > date '2015-12-31';
    
    
desc employee;

select * from EMPLOYEE WHERE ID = 8;

SELECT DISTINCT JOB_ID, NAME FROM EMPLOYEE;


select * from employee order by salary desc;

select name, salary from employee order by salary desc;

-- using column selector --

select * from employee order by 6,5 desc;

-- order by clause on alias new_salary.
select name, salary + 0.5*salary as new_salary
from employee
order by new_salary desc;

-- null handling queries from course --

-- changing the position of null containing columns in order by clause.

select * 
from employee
order by phone nulls first;

select * from employee order by phone desc nulls last;

-- nvl --
select id,name, salary + NVL(bonus,'23') from employee;

-- coalesce--
select name, coalesce(phone, email, 'no contact info') from employee;

-- nvl2 --
select id, nvl2(phone, name, job_id) 
-- if phone is not null --> return name
-- else return job_id
from employee;

-- lnnvl
-- condition ka ulta return karta hai.

-- rewritten code of null handling problem 1 -- 
-- display list of employees where salary > 4000 and phone not eql to '1.234.567.8901'
select * 
from employee
where salary > 4000 
and
lnnvl(phone = '1.234.567.8901');

-- 



























