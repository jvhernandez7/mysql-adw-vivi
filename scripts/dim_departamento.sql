use adw;
select 
    departament.DepartmentID as id_departamento
    ,departament.Name as nombre
    ,departament.GroupName as grupo
    --,departhist.BusinessEntityID
   from HumanResources_Department departament
   inner join HumanResources_EmployeeDepartmentHistory departhist
   on departament.DepartmentID= departhist.DepartmentID