select distinct
    CONCAT(mgr.fname, " ", mgr.lname) as manager_name
    , d.mgr_ssn as manager_ssn
    , d.dnumber as dept_no
    , d.dname as dept_name
from
    (select essn from
        (select essn, sum(hours) as total_hours from WORKS_ON group by essn) as agg_works
    where total_hours < 40) as w
join EMPLOYEE as e
    on w.essn=e.ssn
join DEPARTMENT as d
    on d.dnumber=e.dno
join EMPLOYEE as mgr
    on d.mgr_ssn=mgr.ssn;
