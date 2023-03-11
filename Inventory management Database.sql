use Portfolio

create table custmer(
customer_id int,
first_name varchar(50),
last_name varchar(50),
address varchar(50),
contact_number varchar(50),
constraint customerpk primary key(customer_id)
)

insert into custmer values(1,'Janane','Kabilan','xyz D-Bros Street',9587412360)
insert into custmer values(2,'Jijo','Mox','123 Drex Street',9642301458)
insert into custmer values(3,'Alex','Turner','60 Kenz Street',934867102)
insert into custmer values(4,'Taylor','Swift','92 shinde Street',9014789632)
insert into custmer values(5,'Selena','Gomez','12 raw Street',9348965210)

select * from custmer

create table employee(
employee_id int,
first_name varchar(50),
last_name varchar(50),
address varchar(50),
contact_number varchar(20),
position varchar(50),
constraint employeepk primary key(employee_id)
)

insert into employee values(101,'Jalop','Chris','141 jinx Street','9254698703','Manager')
insert into employee values(102,'Mason','Morgan','814 fredex Street','9254136987','System engineer')
insert into employee values(103,'Selene','Hill','458 matrix Street','9632410567','System diagnostic engineer')
insert into employee values(104,'Noah','Scnapp','007 bond Street','9354168791','Team Leader')
insert into employee values(105,'Milley','Bobby','036 host Street','9541289634','System Architect')

drop table employee
delete employee
select * from employee

create table orders(
order_id int,
invoice_number int,
or_number int,
total_price int,
date_order date,
constraint orderpk primary key(order_id,invoice_number),
cust_id int foreign key references custmer(customer_id),
emp_id int foreign key references employee(employee_id)
)

insert into orders values(0001,002354,959,47,'2023-02-02',1,105)
insert into orders values(0002,564123,365,65,'2023-02-13',3,105)
insert into orders values(0003,657412,854,30,'2023-02-15',3,102)
insert into orders values(0004,987453,265,23,'2023-02-17',2,103)
insert into orders values(0005,265748,365,99,'2023-02-23',4,101)

select * from orders


create table products(
product_id int,
date_received date,
brand_id int,
brand_name varchar(50),
model varchar(50),
serial_number int,
availability int,
date_sold date,
unit_type varchar(50),
constraint productspk primary key(product_id),
cust_id int foreign key references custmer(customer_id)
)


insert into products values(075,'2022-10-02',211,'LG','G6',1768,4,'2022-10-12','kg',2)
insert into products values(06,'2022-11-13',536,'Whirlpool','F3',2984,8,'2022-11-26','kg',3)
insert into products values(036,'2022-11-13',647,'Intel','F1',3695,9,'2022-11-30','kg',1)
insert into products values(098,'2023-01-22',002,'Samsung','CJ7',2354,3,'2023-01-25','kg',4)
insert into products values(035,'2023-02-20',102,'Voltas','RA3',610,9,'2023-02-22','kg',5)

select * from products

create table supplier(
supplier_id int,
supplier_name varchar(50),
supplier_address varchar(50),
contact_number varchar(15),
constraint supplierpk primary key(supplier_id),
prd_id int foreign key references products(product_id)
)

insert into supplier values(15698,'Jake','09 Flex Street','9641236768',06)
insert into supplier values(15789,'Paul','36 Nathan street','9478931054',036)
insert into supplier values(12369,'Andrews','12 Nicole street','9365412786',098)
insert into supplier values(13697,'Henry','10 Alexer conner street','9874563210',035)
insert into supplier values(14580,'Victor','90 Matrix trilogy street','9547863210',075)

select * from supplier

create table cashorder(
cashorder_id int,
invoice_number int, 
brand_name varchar(50),
serial_no int,
price int,
unit_type varchar(50),
constraint cashorderpk primary key(cashorder_id),
prd_id int foreign key references products(product_id)
)

insert into cashorder values(023,1002,'LG','G6','2444462',54,'kg',036)
insert into cashorder values(136,2634,'Samsung','RA3','2648882',12,'kg',06)
insert into cashorder values(154,8745,'Voltas','CJ7','5478931',63,'kg',035)
insert into cashorder values(958,9874,'Intel','F1','3210233',54,'kg',098)
insert into cashorder values(103,3654,'Whirlpool','F3','8745604',36,'kg',075)

select * from cashorder

create table chargeorder(
chargeorder_id int,
invoice_no int,
brand_name varchar(50),
model varchar(50),
unit_type varchar(50),
serial_number int,
price int,
down_payment int,
constraint chargeorderpk primary key(chargeorder_id),
prd_id int foreign key references products(product_id)
)

insert into chargeorder values(121,1002,'LG','G6','kg','2444462',54,45,036)
insert into chargeorder values(131,2634,'Samsung','RA3','kg','2648882',12,10,06)
insert into chargeorder values(141,8745,'Voltas','CJ7','kg','5478931',63,30,035)
insert into chargeorder values(151,9874,'Intel','F1','kg','3210233',54,45,098)
insert into chargeorder values(161,3654,'Whirlpool','F3','kg','8745604',36,33,075)

select * from chargeorder

delete products
delete supplier
delete cashorder
delete chargeorder