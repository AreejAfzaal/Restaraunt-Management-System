drop database Restaurant
create database Restaurant

use Restaurant

create table Employee(
cnic varchar(16) unique,
[name] varchar(50),
hireDate date,
salary float,
category varchar(10),
);

insert into Employee values('35111-9458855-9','huda',getdate(),25000,'chef')
insert into Employee values('35111-9455255-9','areej',getdate(),40000,'manager')
insert into Employee values('35111-7455785-9','random-guy',getdate(),20000,'waiter')
insert into Employee values('35111-7455025-9','random-guy2',getdate(),20000,'waiter')
insert into Employee values('35111-7485045-4','random-guy3',getdate(),20000,'waiter')


create table Feedback(
review varchar(200),
customerName varchar(50),
email varchar(20),
phone varchar(20),
rating int
);

insert into Feedback values('ambiance is good. Quality of food was amazing! will surely visit again.', 'hammad','hammad@gmail.com','03334299932',4)
insert into Feedback values('Quality of food was great! atmosphere was friendly.', 'noyan','noyan@hotmail.com','03214254932',4)
insert into Feedback values('Quality of food was disappointing! atmosphere was friendly yet ambiance was okay.', 'huda','huda@yahoo.com','03212543281',3)


create table Menu(
menuID int primary key,
[name] varchar(50),
price int,
expectedTimetoPrepare int,
category varchar(20)
);

insert into Menu values('1','burger',350,10,'fast food')
insert into Menu values('2','sandwich',300,8,'fast food')
insert into Menu values('3','fries',150,12,'fast food')
insert into Menu values('4','shawarma',140,5,'fast food')

insert into Menu values('5','shashlik',500,5,'chinese')
insert into Menu values('6','egg fried rice',600,5,'chinese')
insert into Menu values('7','black pepper chicken',450,8,'chinese')
insert into Menu values('8','crispy chicken',640,5,'chinese')

insert into Menu values('9','malai boti',300,25,'BBQ')
insert into Menu values('10','chicken tikka boti',380,25,'BBQ')
insert into Menu values('11','malai tikka',350,15,'BBQ')
insert into Menu values('12','malai tikka',300,15,'BBQ')

create table OrderDetail(
orderInfoID int,
menuID int foreign key references Menu(menuID),
);


create table [Order](
orderID int primary key,
[status] bit,
orderInfoID int
);

create table [Tables](
tableID int primary key,
noOfSeats int,
[status] bit,
orderID int foreign key references [Order](orderID)
);

insert into	[Tables] values(1,5,1,null)
insert into [Tables] values(2,8,0,null)
insert into [Tables] values(3,3,1,null)

select * from Employee