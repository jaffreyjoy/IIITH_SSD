select
    CONCAT(sdet.fname, " ", sdet.lname) as supervisor_name
    , e.super_ssn as ssn
    , sdet.dno as dept_no
    , COUNT(e.ssn) as emp_count
from EMPLOYEE as e
join EMPLOYEE as sdet
    on e.super_ssn=sdet.ssn
group by CONCAT(sdet.fname, " ", sdet.lname), e.super_ssn, sdet.dno
order by COUNT(e.ssn) asc;
