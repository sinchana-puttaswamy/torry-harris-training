drop table regions;
create table regions (
region_id int unsigned not null ,
region_name varchar(50),
primary key(region_id));
insert into regions values(11,"west");
insert into regions values(12,"north");
insert into regions values(13,"south");
insert into regions values(14,"east");
select * from regions;


create table countries( 
country_id char not null ,country_name varchar(50), 
region_id int unsigned not null,
primary key(country_id),
foreign key(region_id) references regions(region_id));
insert into countries values(01,11);
insert into countries values(01,12);
insert into countries values(01,13);
insert into countries values(01,14);
select * from countries;
desc countries;

create table location(
location_id int unsigned not null ,
street_address varchar(200),
postal_code varchar(10),
city varchar(225) not null,
state_province varchar(225),
country_id char not null,
primary key(location_id),
foreign key(country_id) references countries(location_id));
set foreign_key_checks=0;
insert into location values (1,"abc","560056","bangalore","karnataka",1);
insert into location values (2,"def","560056","mangalore","karnataka",3);
insert into location values (3,"gbc","560056","huballi","karnataka",5);
insert into location values (4,"csc","560056","shimoga","karnataka",7);
select * from location;
desc location;


alter table location modify column country_id char(225);
alter table location drop column country_id ;
alter table location drop foreign key country_id;


create table department(dept_id int,dept_name varchar(20),manager_id int, location int,
primary key(dept_id),
foreign key(country_id) references countries(country_id),
foreign key(location_id) references locations(location_id));
select *from department;
desc department;
insert into department value (55, "Sanjana" ,76859, 1);
insert into department value (56, "Anjana" ,68591, 2);
insert into department value (57, "Chandana" ,06899, 3);
insert into department value (58, "Sinchana" ,76859, 4);
insert into department value (59, "Dimpana" ,76859, 5);


create table jobs(
job_id varchar(30)not null ,
job_title varchar(35) not null ,
min_salary decimal unsigned,
max_salary decimal unsigned,
primary key(job_id));
insert into jobs values ("MG","management head",16000,25000);
insert into jobs values ("SC","Sports head",36000,577000);
insert into jobs values ("SG","Departing head",18000,24000);
select * from jobs;



create table employees(
employee_id int not null,
first_name varchar(225),
last_name varchar(225),
email varchar(225) not null,
phone_number varchar(12) not null,
hire_date date not null,
job_id varchar(225) not null,
salary decimal not null,
commission_pct decimal,
manager_id int,
department_id int,
primary key(employee_id),
foreign key(job_id) references jobs(jobs_id),
foreign key(department_id) references department(department_id),
foreign key(manager_id) references department(manager_id));
insert into employees values (2,"Rishav","kr","abc@gmail.com",1234,str_to_date("1-1-1999","%d-%M-%Y"),111,35000,10.00,"AB",123);
insert into employees values (1,"Rohit","sr","abc@gmail.com",1234,str_to_date("1-1-1999","%d-%M-%Y"),111,35000,10.00,"AB",124);
update employees set first_name="alexy" where employee_id=1;
insert into employees values (3,"Rohit","sr","abc@gmail.com",1234,str_to_date("1-1-1999","%d-%M-%Y"),111,35000,10.00,"cB",134);
select * from employees;


drop table job_history;
create table job_history(
employee_id int unsigned not null,
start_date date not null,
end_date date not null,
job_id varchar(10) not null,
dept_id int unsigned not null);
alter table job_history add unique key(employee_id,start_date);
insert into job_history values(101,str_to_date("17-jun-1989","%d-%M-%Y"),str_to_date("17-jun-1990","%d-%M-%Y"),"AD_VP",10);
insert into job_history values(201,str_to_date("17-aug-1989","%d-%M-%Y"),str_to_date("17-feb-1990","%d-%M-%Y"),"AD_VP",11);
update job_history set job_id="SS-CC" where employee_id=201;
insert into job_history values(301,str_to_date("10-jul-1999","%d-%M-%Y"),str_to_date("11-jun-2000","%d-%M-%Y"),"DD_VP",12);
insert into job_history values(401,str_to_date("12-jan-1975","%d-%M-%Y"),str_to_date("13-jan-1980","%d-%M-%Y"),"AA_VP",13);
select * from job_history;
alter table job_history add foreign key(employee_id) references employees(employee_id);


