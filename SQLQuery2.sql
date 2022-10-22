-- SELECT
--ANSII Standarts
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select *from  Customers where City='London'

--case insensitive
select *from Products where CategoryID=1 or CategoryID=3

select *from Products where CategoryID=1 and UnitPrice>=10

select *from Products order by CategoryID,ProductName

select *from Products order by UnitPrice asc -- ascending, desc descending

select *from Products where CategoryID=1 order by UnitPrice desc -- descending 

select count(*) sadasd from Products where CategoryId=1

select CategoryId,count(*) from Products where UnitPrice>20 group by CategoryId having count(*)<10 

select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName 
from Products inner join Categories
on Products.CategoryID=Categories.CategoryID
where Products.UnitPrice>10

-- Dto Data Transformation Object 

Select * from Products p inner join [Order Details] od 
on p.ProductID=od.ProductID
inner join Orders o
on o.OrderID=od.OrderID

Select * from Customers c left join Orders o
on c.CustomerID=o.CustomerID
where o.CustomerID is null

