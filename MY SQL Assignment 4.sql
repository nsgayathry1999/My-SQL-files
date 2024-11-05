create database gayathry;

use gayathry;

create table Country ( id int primary key ,Country_name varchar (100) not null,Population int,Area decimal(10,2));
create table Persons (id int primary key, First_name varchar(50),Last_name varchar (50),Population int ,Rating  decimal(3,1), Country_id int,
   Country_name varchar(100),foreign key (id) references (id));
   desc country;
   desc persons;
   insert into country(id,country_name,population,area) values (1,"USA",321000000,9865321),(2,"india",1380000000,3287263),
                   (3,"France",67000000,551695),(4,"China",1439000000,9596961),(5,"japan",126300000,377975),
                   (6,"Australia",25400000,7692024),(7,"Germany",83000000,357022),(8,"UK",67800000,243610),
                   (9,"Brazil",212600000,8515767),(10,"Canada",37700000,9984670);

                   drop table persons;
                   
create table Persons (id int , First_name varchar(50),Last_name varchar (50),Population int ,Rating  decimal(3,1), Country_id int,
   Country_name varchar(100),foreign key (id) references country(id));
   desc persons;
   
   insert into Persons (id ,First_name,Last_name,Population,Rating,Country_id,Country_name) values(1,"Karthik","Surya",500000,4.5,100,"USA"),
                   (2,"Alia","Bhat",5000000,4.8,101,"India"),(3,"Surya","Kanth",80000,3.9,102,"France"),(4,"Ajay","Avarachan",10000000,4.3,103,"China"),
                   (5,"Sanjay","Krishna",900000,4.2,104,"japan"),
                   (6,"Manu","Deva",100000,3.6,105,"Australia"),(7,"Krishna","Kanth",120000,4.0,106,"Germany"),(8,"Sachin","Madav",700000,4.1,107,"UK"),
                   (9,"Neeraj","Madhav",2000000,4.9,108,"Brazil"),(10,"Harnas","Chandra",1500000,3.8,10,"Canada");
                   desc persons;
                   select * from persons;                 
select distinct country_name from persons;

select first_name as First_name,Last_name as Last_name from persons;

select*from persons where  Rating>4.0;
select * from country where Population > 1000000;

select * From persons where Country_name= "USA" or rating>4.0;

select * from persons where country_name=null;

select * from persons where Country_Name in ("USA","Canada","UK");

select * from persons where Country_name not in ("India","Australia");

select *  from country where Population between 500000 and 2000000;
select country_name from country where Population between 500000 and 2000000;

select * from country where country_name not like "C%";
                
                
                
                
   
   