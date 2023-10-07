use adw;

select 
 STR_TO_DATE(RateChangeDate, '%Y-%m-%d') as fecha
 , SUBSTR(RateChangeDate, 6,2) as mes 
 , SUBSTR(RateChangeDate, 1,4) as ano 
from HumanResources_EmployeePayHistory
limit 10; 

