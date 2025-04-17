--Batuhan Ozturk
--1
select FirstName, LastName
from Employees

--2
select sum(UnitsOnOrder) as [Totaal Bestelling] 
from Products

--3
select count(ContactName) as [Klanten]
from Customers

--4
select TitleOfCourtesy, FirstName, LastName
from Employees
where TitleOfCourtesy = 'Mr.'

--5
select UPPER(SUBSTRING(LastName, 1, 2)) as [Eerste twee letters van familienaam], upper(substring(Firstname, 1, 1)) as [Eerste letter van voornaam]
from Employees

