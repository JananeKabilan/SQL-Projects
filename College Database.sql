create database Portfolio
Use Portfolio

Create table student(
stu_id int,
stu_name varchar(50),
stu_ph_no int,
stu_email varchar(50),
stu_dob date,
constraint studentpk primary key (stu_id)
)

create table branch(
brn_id int,
brn_name varchar(20),
brn_ctg varchar(20),
constraint branchpk primary key(brn_id)
)

create table books(
book_id int,
book_name varchar(50),
ath_name varchar(50),
book_price int,
book_brn_id int foreign key references branch(brn_id)
)

create table users(
usr_id int,
usr_name varchar(50),
usr_ph_no int,
usr_email varchar(50)
constraint userpk primary key (usr_id)
)

create table issues(
isu_id int,
isu_date date,
isu_book_id int foreign key references books(book_id),
isu_stu_id int foreign key references student(stu_id),
)

create table roles(
rol_id int,
rol_name varchar(15),
rol_lvl varchar(15),
constraint rolespk primary key(rol_id)
)

create table logins(
lgn_id int,
lgn_usr_id int,
lgn_usr_name varchar(20),
lgn_passwd varchar(20),
lgn_role_id int foreign key references roles(rol_id),
constraint loginpk primary key(lgn_id)
)

create table permission(
pr_id int,
pr_name varchar(15),
pr_rol_id int foreign key references roles(rol_id),
constraint permissionpk primary key(pr_id)
)

-- user table values 
INSERT INTO users VALUES(101,'Jaden Clark',4836792,'Jaden342@gmail.com')
INSERT INTO users VALUES(102,'Olive Yew',6385647,'olivia7758l@gmail.com')
INSERT INTO users VALUES(103,'Peg Legge',9364753,'peghary45@gmail.com')
INSERT INTO users VALUES(104,'Anne Ortha',9361735,'anneA783@gmail.com')
INSERT INTO users VALUES(105,'Ruby Bartlett',9163728,'yiktLaura78@gmail.com')
INSERT INTO users VALUES(106,'May Day',3548679,'Davis889@gmail.com')
INSERT INTO users VALUES(107,'Tiffany Case',7548124,'Tiffanycase34@gmail.com')
INSERT INTO users VALUES(108,'Vilma Jarvi',8574963,'mygmailVimla@gmail.com')
INSERT INTO users VALUES(109,'Regan Rosen',3748254,'Rosenthybe54@gmail.com')
INSERT INTO users VALUES(110,'Laura Charling',8354610,'Laura6835CH@gmail.com')

-- branch table values  
INSERT INTO branch VALUES(1001,'Heisengton','Science')
INSERT INTO branch VALUES(1002,'JumbleNumbers','Mathematics')
INSERT INTO branch VALUES(1003,'HelloWorld','IT')

-- roles table values
INSERT INTO roles VALUES(10101,'DB_Admin',4)
INSERT INTO roles VALUES(10102,'Teacher',3)
INSERT INTO roles VALUES(10103,'Guest',2)
INSERT INTO roles VALUES(10104,'Viewer',1)

-- permission tables values
INSERT INTO permission VALUES(151,'Total Control',10101)
INSERT INTO permission VALUES(152,'Partial Control',10102)
INSERT INTO permission VALUES(153,'No Alterations',10103)
INSERT INTO permission VALUES(154,'Limited View',10104)

-- login tables values 
INSERT INTO logins VALUES(711,101,'Jaden Clark',4836792,10101) 
INSERT INTO logins VALUES(712,102,'Olive Yew',6385647,10102)
INSERT INTO logins VALUES(713,103,'Peg Legge',9364753,10101)
INSERT INTO logins VALUES(714,104,'Anne Ortha',9361735,10103)
INSERT INTO logins VALUES(715,105,'Ruby Bartlett',9163728,10101)
INSERT INTO logins VALUES(716,106,'May Day',3548679,10103)
INSERT INTO logins VALUES(717,107,'Tiffany Case',7548124,10102)
INSERT INTO logins VALUES(718,108,'Vilma Jarvi',8574963,10103)
INSERT INTO logins VALUES(719,109,'Regan Rosen',3748254,10102)
INSERT INTO logins VALUES(720,110,'Laura Charling',8354610,10101)

-- student table values 
INSERT INTO student VALUES(911,'Bennett Johns',7394658,'Bennetttt6748@gmail.com','1994-09-03')
INSERT INTO student VALUES(912,'Immanuel Collier',5936827,'collierIma674@gmail.com','1993-05-08')
INSERT INTO student VALUES(913,'Dayton Luettgen',9564836,'LueDay3841@gmail.com','1998-07-13')
INSERT INTO student VALUES(914,'Courtney Reinger',8375663,'Reignthe43@gmail.com','2000-05-07')
INSERT INTO student VALUES(915,'Retta Hammes',6492657,'RettaSamuela45@gmail.com','1998-02-03')
INSERT INTO student VALUES(916,'Monte Haley',08573543,'Monteray564@gmail.com','1999-07-21')
INSERT INTO student VALUES(917,'Ryann Franecki',01637429,'ryanben786654@gmail.com','2000-05-08')
INSERT INTO student VALUES(918,'Shayne Denesik',5471257,'uthSha4@gmail.com','2001-11-05')
INSERT INTO student VALUES(919,'Skylar Grady',9687452,'Skylaryou5t@gmail.com','1997-09-19')
INSERT INTO student VALUES(920,'Idell Franecki',7365841,'itsmeIdeLL4@gmail.com','1999-02-01')

-- books table values 
INSERT INTO books VALUES(11,'Basics Of Science','George.c',455,1001)
INSERT INTO books VALUES(12,'Basics Of Maths','Hadhway Rome',657,1001)
INSERT INTO books VALUES(13,'Algebra 101','Katty Holmes',345,1002)
INSERT INTO books VALUES(14,'Stars And Moons','Marty & Josh',999,1002)
INSERT INTO books VALUES(15,'C++ All In One','Jason.y',867,1003)
INSERT INTO books VALUES(16,'Python For DS','Jose.Port',567,1003)

-- issues table values 
INSERT INTO issues VALUES(001,'2021-11-13',12,913)
INSERT INTO issues VALUES(002,'2021-12-04',16,917)
INSERT INTO issues VALUES(003,'2022-01-18',11,915)
INSERT INTO issues VALUES(004,'2022-01-2',15,911)
INSERT INTO issues VALUES(005,'2021-09-26',13,919)

select * from users
select * from issues
select * from books
select * from student
select * from permission
select * from roles
select * from branch
select * from logins
