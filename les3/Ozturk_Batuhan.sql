--Batuhan Ozturk
--1
select LastName, Title, HireDate 
from Employees
where HireDate > '1994/01/01'

--2
select *
from Orders
where Orderdate = '1996-10-02' 

select *
from [Order Details], Orders
where [Order Details].OrderID = Orders.OrderID
		and Orderdate = '1996-10-02'

--3
select LastName, FirstName, City, ShipCity
from Employees, Orders
where Employees.EmployeeID = Orders.EmployeeID and City = ShipCity

--4
select ProductName, LastName, FirstName, UnitsOnOrder, ShippedDate
from Products, Employees, Orders, [Order Details]
where Products.ProductID = [Order Details].ProductID and Orders.OrderID = [Order Details].OrderID and Employees.EmployeeID = Orders.EmployeeID
		and ShippedDate between '1998-03-01' and '1998-05-01'

--5
select *
from Orders
where OrderID like '%5'

--6
select ProductName
from Products
where SupplierID = 
		(select SupplierID from Suppliers where CompanyName = 'Pavlova, Ltd.')

--7
select ProductName, UnitsOnOrder
from Products
where UnitsOnOrder = 0