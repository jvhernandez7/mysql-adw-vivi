use adw;

select 
  --person.BusinessEntityID as id
   person.PersonType as tipo
  ,person.FirstName as nombre
  ,person.LastName as apellido
  ,employee.NationalIDNumber as id_empleado
  ,employee.Gender as genero
  ,employee.JobTitle as cargo
  ,employee.BirthDate as fecha_nacimiento
  ,phone.PhoneNumber as telefono 
  --,phone.PhoneNumberTypeID
  ,phone.EmailAddress as correo
  --,phone.EmailAddressID
  from Person_Person person
  inner join HumanResources_Employee employee
  on person.BusinessEntityID = employee.BusinessEntityID
  inner join Person_PersonPhone phone
  on person.BusinessEntityID=phone.BusinessEntityID
  inner join Person_EmailAddress email
  on person.BusinessEntityID=email.BusinessEntityID