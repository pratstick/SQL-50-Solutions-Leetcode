SELECT Employee.name, bonus.bonus 
from employee left join bonus on employee.empid = bonus.empid
where bonus.bonus < 1000 OR bonus.bonus is null
Order by employee.empid