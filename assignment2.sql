Update Customer
Set Country='Germany'
Where Country='Australia';

Select * from Customer




Select * from Customer
Where Country='Germany';

Select FirstName+' '+LastName as FullName from Customer;


Select * from Customer



Select * from Customer
Where FirstName Like '_a%';

Select o.* from Orders o
join
OrderItem oi on o.Id=oi.OrderedId
Where oi.UnitPrice>9500 and UnitPrice<26000
Order by oi.UnitPrice;
Select * from OrderItem


Alter Table Orders
add
ShippingDate datetime

Alter table Orders
add
ShippingName nvarchar(50)

Update Orders
Set ShippingDate='2022-07-30 12:35:20'
where Id=105;


Update Orders
Set ShippingName='CafeShipping'
where Id=105;

Select * from Orders
order by OrderDate desc;



Select * from Orders
where ShippingName='La Corne D' and ShippingDate 
between '2022-07-20' and '2022-07-31';

Alter table Product
add
SupplierName nvarchar(50)


Update Product
set SupplierName='Pathway'
where Id=1003;

Select ProductName from Product 
where SupplierName='ExoticLiquid'


Select p.Id,Avg(oi.Quantity) as Avg_Quantity from OrderItem oi
join 
Product p on oi.ProductId=p.Id
group by p.Id


Select o.ShippingName ,p.SupplierName 
from Orders o
join OrderItem oi on o.Id=oi.OrderId
join Product p on oi.ProductId=p.id
where p.IsDiscontinued=1;




Select * from Product
Select * from Customer
Select * from Orders
Select * from OrderItem