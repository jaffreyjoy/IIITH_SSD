select distinct
    d.mgr_ssn as manager_ssn
    , d.dnumber as dept_no
    , count(*) as dependents_count
from (select distinct dnumber from DEPT_LOCATIONS group by dnumber having count(distinct dlocation)>=2) as min2locdep
join DEPARTMENT as d
    on d.dnumber=min2locdep.dnumber
join DEPENDENT as depe
    on depe.essn=d.mgr_ssn
group by d.mgr_ssn, d.dnumber;
