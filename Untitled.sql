select * 
from products
where (price = 5 or price = 25)
    and expiration_date > date '2015-12-31';
    
    
desc employee;

select * from EMPLOYEE WHERE ID = 8;

SELECT DISTINCT JOB_ID, NAME FROM EMPLOYEE;


select * from employee order by salary desc;

select * from employee order by department_id, salary desc;

-- using column selector --

select * from employee order by 6,5 desc;










