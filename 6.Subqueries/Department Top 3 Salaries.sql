select b.name as Department,a.name as Employee, a.salary as Salary from 
(select id , name , salary , departmentId   ,
dense_rank() over (partition by departmentId order by salary desc )  rn 
from Employee ) a left join Department b on a.departmentId=b.id where rn<=3;