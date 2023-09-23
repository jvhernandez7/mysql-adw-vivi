use adw;


select 
SalesOrderID,
sales.OrderDate,
sales.CustomerID,
sales.SalesPersonID,
sales.TerritoryID,
concat(person.FirstName, ' ', person.LastName) CustomerName,
concat(employe.FirstName, ' ', employe.LastName) SalesPersonName,
territory.name as TerritoryName
from Sales_SalesOrderHeader sales
join Sales_Customer as cliente
on sales.CustomerID= cliente.CustomerID
left outer join Person_Person person
on cliente.PersonId = person.BusinessEntityId
join Sales_SalesPerson salesperson
on sales. SalesPersonID= salesperson.BusinessEntityId
left outer join Person_Person as employe
on salesperson.BusinessEntityId=person.BusinessEntityId
join Sales_SalesTerritory as territory
on sales.TerritoryID = territory.TerritoryID
 limit 3;

 HumanResources_Department
 HumanResources_Employee
 HumanResources_EmployeeDepartmentHistory
 HumanResources_EmployeePayHistory
 Person_Person
 Sales_SalesPerson