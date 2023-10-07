use adw;

select 
  sales.BusinessEntityID
  ,sales.TerritoryID
  ,sales.SalesQuota
  ,sales.Bonus
  ,sales.CommissionPct
  ,sales.SalesYTD
  ,sales.SalesLastYear
  ,sales.ModifiedDate
  ,person.PersonType
  from  Sales_SalesPerson sales
  inner join Person_Person person
  on sales.BusinessEntityID= person.BusinessEntityID