create schema FE14092022;
use FE14092022;
create table Staff(
Staffid int(11) unsigned auto_increment primary key,
Fname varchar(50) not null,
Lname varchar(50) not null,
Birthdate date not null,
DateEmployed date not null,
Sex enum ('Female','Male') not null,
Email varchar(70) not null,
Address varchar (100) not null
);


create table Branch(
Branchid int(1) unsigned auto_increment primary key,
BranchName varchar(50) not null,
Location varchar(60) not null,
BranchManagerfname varchar(50) not null,
BranchManagerlname varchar(50) not null,
Staffid int unsigned not null,
foreign key (Staffid) references Staff(Staffid)  on update cascade on delete cascade,
ManagerDOB date not null,
telephoneNo  varchar(25) not null
);


create table Department(
Departmentid int(11) unsigned auto_increment primary key,
Departmentname varchar(50) not null,
Staffid int unsigned not null,
foreign key (Staffid) references Staff(Staffid) on update cascade on delete cascade,
DepartmentManagerfname varchar(50) not null,
DepartmentManagerlname varchar(50) not null);


create table Telephone(
Staffid int(5) unsigned not null,
foreign key (Staffid) references Staff(Staffid) on update cascade on delete cascade,
telNo varchar(25) not null
);


create table BranchCustomer (
Branchcustomerid int unsigned auto_increment primary key,
Branchname varchar(50) not null,
Customerfname varchar(50) not null,
Customerlname varchar(50) not null,
Branchid int unsigned not null,
foreign key (Branchid) references Branch(Branchid)on update cascade on delete cascade,
BranchManagerfname varchar(50) not null,
BranchManagerlname varchar(50) not null
 );
create table SalesPerson(
Staffid int(5) unsigned not null,
foreign key (Staffid) references Staff(Staffid) on update cascade on delete cascade,
Fname varchar(50) not null,
Lname varchar(50) not null,
Birthdate date not null,
DateEmployed date not null,
Sex enum ('Female','Male') not null,
Email varchar(70) not null,
Address varchar (100) not null); 


create table FashionConsultant ( 
Staffid int(5) unsigned not null,
foreign key (Staffid) references Staff(Staffid) on update cascade on delete cascade,
Fname varchar(50) not null,
Lname varchar(50) not null,
Birthdate date not null,
DateEmployed date not null,
Sex enum ('Female','Male') not null,
Email varchar(70) not null,
Address varchar (100) not null,
Speciality enum ('styling','designing'));


create table Customer ( 
customerid int unsigned auto_increment primary key,
Customerfname varchar(50) not null,
Customerlname varchar(50) not null,
DOB date not null,
Customertype enum ('Economy','VIP'),
telNO varchar(25) not null,
Address varchar (100) not null,
Branchcustomerid int unsigned not null,
foreign key (Branchcustomerid) references Branchcustomer(Branchcustomerid) on update cascade on delete cascade);


create table Partner ( 
Partnerid int(11) unsigned auto_increment primary key,
Fname varchar(50) not null,
Lname varchar(50) not null,
Datesupplied date not null,
telNO varchar(25) not null,
Productsupply varchar(25) not null,
Address varchar (100) not null); 


create table Product( 
productid int(11) unsigned auto_increment primary key,
Productname varchar(50) not null,
Producttype varchar(50) not null,
Partnerid int unsigned not null,
foreign key (Partnerid) references Partner(Partnerid) on update cascade on delete cascade,
Dateacquired date not null);


create table Salestable ( 
salesid int unsigned auto_increment primary key,
Fname varchar(50) not null,
Lname varchar(50) not null,
Datebought date not null,
Producttype varchar(50) not null,
Timebought time not null,
Productname varchar(50) not null,
productid int unsigned not null,
foreign key (productid) references Product(productid) on update cascade on delete cascade,
customerid int unsigned not null,
foreign key (customerid) references Customer(customerid) on update cascade on delete cascade,
Customerfname varchar(50) not null,
Customerlname varchar(50) not null);


create table Economy( 
customerid int unsigned not null,
foreign key (customerid) references Customer(customerid) on update cascade on delete cascade,
Customerfname varchar(50) not null,
Customerlname varchar(50) not null,
DOB date not null,
telNO varchar(25) not null,
Address varchar (100) not null);


create table VIP ( 
customerid int unsigned not null,
foreign key (customerid) references Customer(customerid) on update cascade on delete cascade,
Customerfname varchar(50) not null,
Customerlname varchar(50) not null,
DOB date not null,
telNO varchar(25) not null,
Address varchar (100) not null,
Staffid int(5) unsigned not null,
foreign key (Staffid) references Staff(Staffid) on update cascade on delete cascade,
Speciality enum ('styling','designing'));

use FE14092022;
insert into Staff(Staffid,Fname,Lname,Birthdate,DateEmployed,Sex,Email,Address) 
values (0001,'Adwoa', 'Mansa', '2000-04-25', '2014-08-25','Female','am@conficouture.org','AS 324 Adenta');
insert into Staff values(0002,'Aewoa', 'Mansaf', '1992-04-25', '2011-08-25','Female','am01@conficouture.org','AS 322 Adenta');
insert into Staff values(0003,'Ama', 'Jansaf', '1982-04-25', '2001-08-25','Female','aj01@conficouture.org','BD 322 Bekwai');
insert into Staff values(0004,'Bewoa', 'Jans', '1952-04-25', '2001-03-25','Male','bj01@conficouture.org','DE 322 Pantang');
insert into Staff values(0005,'Dewoa', 'Sansaf', '1996-03-15', '2017-08-25','Female','ds01@conficouture.org','AS 322 Berekuso');


use FE14092022;

insert into Staff values(0007,'Aewoa', 'Mansaf', '1992-04-25', '2011-08-25','Female','am01@conficouture.org','AS 322 Adenta');
insert into Staff values(0008,'Ama', 'Hansaf', '1982-04-25', '2001-08-25','Female','ah01@conficouture.org','BD 322 Bekwai');
insert into Staff values(0009,'Bewoa', 'Jans', '1952-04-25', '2001-03-25','Male','bj01@conficouture.org','DE 322 Pantang');
insert into Staff values(0010,'Dewoa', 'Sankaf', '1996-03-15', '2017-08-25','Female','ds01@conficouture.org','AS 322 Berekuso');
insert into Staff values(0011,'Dewoa', 'Sacdaf', '1996-03-15', '2017-08-25','Female','ds02@conficouture.org','AS 3210 Berekuso');
insert into Staff values(0012,'Dewoa', 'Sawsaf', '1996-03-15', '2017-08-25','Female','ds03@conficouture.org','AS 327 Berekuso');
insert into Staff values(0013,'Dewoa', 'Sawsdaf', '1996-05-15', '2017-08-25','Female','ds41@conficouture.org','AS 372 Berekuso');
insert into Staff values(0014,'Dewoa', 'Sanwsdf', '1996-04-15', '2017-08-25','Female','ds78@conficouture.org','AS 312 Berekuso');
insert into Staff values(0015,'Dewoa', 'Sanqaf', '1996-08-25', '2017-08-25','Female','ds04@conficouture.org','AS 328 Berekuso');
insert into Staff values(0016,'Dewoa', 'Sangtf', '1996-07-15', '2017-08-25','Female','ds05@conficouture.org','AS 327 Berekuso');
insert into Staff values(0017,'Dewoa', 'Sanstrtf', '1997-05-15', '2017-08-25','Female','ds08@conficouture.org','AS 325 Berekuso');

insert into Branch(Branchid,BranchName,Location,BranchManagerfname,BranchManagerlname,Staffid,ManagerDOB,telephoneNo) values (5, 'Confi Couture',
'Kumasi','Ama','Hansaf',0008,'1982-04-25','02452985632');
insert into Branch values (1, 'Confi Couture','Accra','Bewoa', 'Jans', 0009,'1952-04-25','0245871202');
insert into Branch values (2, 'Confi Couture','Accra','Dewoa',  'Sansaf',0010,'1996-03-15','0245871203');
insert into Branch values (3, 'Confi Couture','Tema','Dewoa', 'Sansaf',0011,'1996-03-15','0545871203');
insert into Branch values (4, 'Confi Couture','Koforidua','Aewoa', 'Mansaf',0007,'1992-04-25','0545471203'); 
insert into Branch values (6, 'Confi Couture','Sunyani','Dewoa', 'Sanstrtf',0017,'1997-05-15','0545471203'); 


Insert into Department (Departmentid, Departmentname,Staffid,DepartmentManagerfname,DepartmentManagerlname) values (121,'Styling',0001,'Adwoa', 'Mansa');
insert into Department values (123,'Branding',0015,'Dewoa', 'Sanqaf');
insert into Department values (122, 'Fashion',0017,'Dewoa', 'Sanstrtf');
insert into Department values (124, 'Public relations',0016,'Dewoa', 'Sangtf');
insert into Department values (125, 'Accounting',0014,'Dewoa', 'Sanwsdf');

insert into Telephone values(0007,'0247986523');
insert into Telephone values(0008,'0247987523');
insert into Telephone values(0004,'0248986523');
insert into Telephone values(0007,'0247986524');
insert into Telephone values(0007,'0247986423');
insert into Telephone values(0004,'0247916523');
insert into Telephone values(0001,'0247086523');
insert into Telephone values(0002,'0247981523');
insert into Telephone values(0005,'0207986523');
insert into Telephone values(0007,'0267986523');

insert into BranchCustomer(Branchcustomerid,Branchname,Customerfname,Customerlname,Branchid,BranchManagerfname,BranchManagerlname) values (000002015,
'Sunyani','Adwoa','Fowaa',1,'Bewoa', 'Jans');
insert into BranchCustomer values(000012015,'Sunyani','Maa', 'Birago',2,'Bewoa', 'Jans');
insert into BranchCustomer values(000022015,'Sunyani','Ayisha','Adam',3,'Bewoa', 'Jans');
insert into BranchCustomer values(000032015,'Sunyani','Maryam','Musah',3,'Bewoa', 'Jans');
insert into BranchCustomer values(000032017,'Kumasi','Jamal','Muhammad',4,'Ama','Hansaf');
insert into BranchCustomer values(000732017,'Kumasi','Yuwa','Khairdeen',5,'Ama','Hansaf');
insert into BranchCustomer values(000712017,'Kumasi','Zara','Ibrahin',5,'Ama','Hansaf');
insert into BranchCustomer values(000712027,'Kumasi','Zaralyn','Brown',5,'Ama','Hansaf');
insert into BranchCustomer values(00071207,'Kumasi','Khadija','Noor',5,'Ama','Hansaf');
insert into BranchCustomer values(000712007,'Kumasi','Khadijat','Noora',5,'Ama','Hansaf');

insert into SalesPerson values(0007,'Aewoa', 'Mansaf', '1992-04-25', '2011-08-25','Female','am01@conficouture.org','AS 322 Adenta');
insert into SalesPerson values(0008,'Ama', 'Hansaf', '1982-04-25', '2001-08-25','Female','ah01@conficouture.org','BD 322 Bekwai');
insert into SalesPerson values(0009,'Bewoa', 'Jans', '1952-04-25', '2001-03-25','Male','bj01@conficouture.org','DE 322 Pantang');
insert into SalesPerson values(0010,'Dewoa', 'Sansaf', '1996-03-15', '2017-08-25','Female','ds01@conficouture.org','AS 322 Berekuso');
insert into SalesPerson values(0011,'Dewoa', 'Sansaf', '1996-03-15', '2017-08-25','Female','ds01@conficouture.org','AS 322 Berekuso');
insert into SalesPerson values(0002,'Aewoa', 'Mansaf', '1992-04-25', '2011-08-25','Female','am01@conficouture.org','AS 322 Adenta');
insert into SalesPerson values(0004,'Ama', 'Jansaf', '1982-04-25', '2001-08-25','Female','aj01@conficouture.org','BD 322 Bekwai');
insert into SalesPerson values(0004,'Bewoa', 'Jans', '1952-04-25', '2001-03-25','Male','bj01@conficouture.org','DE 322 Pantang');
insert into SalesPerson values(0005,'Dewoa', 'Sansaf', '1996-03-15', '2017-08-25','Female','ds01@conficouture.org','AS 322 Berekuso');
insert into SalesPerson values (0001,'Adwoa', 'Mansa', '2000-04-25', '2014-08-25','Female','am@conficouture.org','AS 324 Adenta');

insert into FashionConsultant values(0007,'Aewoa', 'Mansaf', '1992-04-25', '2011-08-25','Female','am01@conficouture.org','AS 322 Adenta','Styling');
insert into FashionConsultant values(0008,'Ama', 'Hansaf', '1982-04-25', '2001-08-25','Female','ah01@conficouture.org','BD 322 Bekwai','Styling');
insert into FashionConsultant values(0009,'Bewoa', 'Jans', '1952-04-25', '2001-03-25','Male','bj01@conficouture.org','DE 322 Pantang','Styling');
insert into FashionConsultant values(0010,'Dewoa', 'Sansaf', '1996-03-15', '2017-08-25','Female','ds01@conficouture.org','AS 322 Berekuso','Styling');
insert into FashionConsultant values(0011,'Dewoa', 'Sansaf', '1996-03-15', '2017-08-25','Female','ds01@conficouture.org','AS 322 Berekuso','Styling');
insert into FashionConsultant values(0002,'Aewoa', 'Mansaf', '1992-04-25', '2011-08-25','Female','am01@conficouture.org','AS 322 Adenta','Styling');
insert into FashionConsultant values(0004,'Ama', 'Jansaf', '1982-04-25', '2001-08-25','Female','aj01@conficouture.org','BD 322 Bekwai','Styling');
insert into FashionConsultant values(0004,'Bewoa', 'Jans', '1952-04-25', '2001-03-25','Male','bj01@conficouture.org','DE 322 Pantang','designing');
insert into FashionConsultant values(0005,'Dewoa', 'Sansaf', '1996-03-15', '2017-08-25','Female','ds01@conficouture.org','AS 322 Berekuso','designing');
insert into FashionConsultant values (0001,'Adwoa', 'Mansa', '2000-04-25', '2014-08-25','Female','am@conficouture.org','AS 324 Adenta','designing');

insert into Customer values(1, 'Maa', 'Birago','1997-02-15', 'Economy','0200011111','PE KEjetia',000012015);
insert into Customer values(2,'Maryam','Musah','1994-01-01','VIP','0241111111','Sawaba, Adukrom',000032015);
insert into Customer values(3,'Khadijat','Noora','1994-01-01','VIP','0241111111','Sawaba, Adukromu',000712007);
insert into Customer values(4,'Zara','Ibrahin','1994-11-01','Economy','0270011111','Kaneshie,wefrt',000712017);
insert into Customer values(5,'Zaralyn','Brown','1998-02-15', 'Economy','0270011111', 'Dwom, Kasoa', 000712017);
insert into Customer values(6,'Faralyn','Srown','1998-02-16', 'VIP','0270011111', 'Dwom, Kasoa', 000712017);
insert into Customer values(7,'Zarslyn','Wrown','1998-02-17', 'Economy','0270011111', 'Dwom, Kasoa', 000712017);
insert into Customer values(8,'Zeralyn','Brown','1998-02-13', 'Economy','0270011111', 'Dwom, Kasoa', 000712017);
insert into Customer values(9,'Zawelyn','Seown','1998-02-12', 'VIP','0270011111', 'Dwom, Kasoa', 000712017);
insert into Customer values(10,'Jaralyn','Prown','1998-02-11', 'VIP','0270011111', 'Dwom, Kasoa', 000712017);


insert into Partner values(1,'Gucci','Milano','2011-12-11','+1742459698456','Shoes','Milan,Italy');
insert into Partner values(2,'Balmain','Hucamo','2014-11-15','+97145896324','Bag','Dubai,UAE');
insert into Partner values(3,'Dolce','Gabban','2014-11-15','+97145896324','Belts','Accra,Ghana');
insert into Partner values(4,'Ralph','Lauren','2014-11-15','+97155896324','Clothes','Paris,France');
insert into Partner values(5,'Philip','Blein','2014-11-15','+97149896324','Clothes','Paris,France');

insert into Product values(1,'Balamin','bag',2,'2011-12-11');
insert into Product values(2,'Gucci','shoes',1,'2011-12-11');
insert into Product values(3,'Dolce','Belts',3,'2014-11-15');
insert into Product values(4,'Ralph','Clothes',4,'2014-11-15');
insert into Product values(5,'Philip','Clothes',5,'2014-11-15');

insert into Salestable values (1,'Aewoa', 'Mansaf','2014-11-15','Clothes','8:46:23','Philip',5,4,'Zara','Ibrahin');
insert into Salestable values (2,'Aewoa', 'Mansaf','2014-11-15','Clothes','8:46:23','Philip',5,4,'Zara','Ibrahin');
insert into Salestable values (3,'Aewoa', 'Mansaf','2014-12-15','Clothes','8:44:23','Philip',5,4,'Zara','Ibrahin');
insert into Salestable values (4,'Adwoa', 'Mansa','2014-01-15','bags','8:46:23','Balmain',5,4,'Zara','Ibrahin');
insert into Salestable values (5,'Aewoa', 'Mansaf','2014-01-15','Clothes','8:46:23','Philip',5,4,'Zara','Ibrahin');
insert into Salestable values (6,'Adwoa', 'Mansa','2014-12-15','Clothes','8:46:23','Philip',5,4,'Zara','Ibrahin');
insert into Salestable values (7,'Adwoa', 'Mansa','2014-10-15','Clothes','8:46:23','Philip',5,4,'Zara','Ibrahin');
insert into Salestable values (8,'Aewoa', 'Mansaf','2014-01-15','Clothes','8:46:23','Philip',5,4,'Zara','Ibrahin');
insert into Salestable values (9,'Adwoa', 'Mansa','2015-11-15','shoes','8:46:23','Gucci',5,5,'Zaralyn','Brown');
insert into Salestable values (10,'Aewoa', 'Mansaf','2014-01-15','Clothes','8:46:23','Philip',5,4,'Zara','Ibrahin');

insert into Economy values (1, 'Maa', 'Birago','1997-02-15', '0200011111','PE KEjetia');
insert into Economy values (3,'Khadijat','Nuora','1994-01-01','0241111111','Sawaba, Adukromu');
insert into Economy values(5,'Zaralyn','Brown','1998-02-15','0270011111', 'Dwom, Kasoa');
insert into Economy values (8,'Zeralyn','Brown','1998-02-13','0270011111', 'Dwom, Kasoa');
insert into Economy values (7,'Zarslyn','Wrown','1998-02-17', '0270011111','Dwom, Kasoa');


insert into VIP values (2,'Maryam','Musah','1994-01-01','0241111111','Sawaba, Adukrom',0007,'Styling');
insert into VIP values (4,'Zara','Ibrahin','1994-11-01','0270011111','Kaneshie,wefrt',0001,'designing');
insert into VIP values (6,'Faralyn','Srown','1998-02-16','0270011111', 'Dwom, Kasoa', 0007,'Styling');
insert into VIP values (9,'Zawelyn','Seown','1998-02-12', '0270011111', 'Dwom, Kasoa', 0001,'designing');
insert into VIP values (10,'Jaralyn','Prown','1998-02-11','0270011111', 'Dwom, Kasoa',0001,'designing');

select count(distinct Customerfname) from Customer;
select * from BranchCustomer order by Customerfname like 'z%';
select * from Telephone where telNo in('0247086523');
select Staff.Fname, FashionConsultant.Speciality 
from FashionConsultant inner join 
Staff on Staff.staffid = FashionConsultant.staffid;
select * from Product where Producttype in(select Producttype from Salestable);
select Customer.Customertype,Salestable.Customerfname 
from Customer left join Salestable 
on Customer.customerid = Salestable.customerid;












