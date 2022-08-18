select
    d.mgr_ssn as manager_ssn
    , count(distinct w.pno) as project_count
from
    (select dnum from PROJECT where pname="ProductY") as pydept
join DEPARTMENT as d
    on d.dnumber=pydept.dnum
join WORKS_ON as w
    on w.essn=d.mgr_ssn;
