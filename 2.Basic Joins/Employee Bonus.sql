select name,bonus
from Employee LEFT JOIN Bonus
on Employee.empId=Bonus.empId where bonus is null or bonus<1000;