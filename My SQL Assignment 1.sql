
create database school;
use school;

create table STUDENT(Roll_No int,Name_of_students char(50),Marks int,Grade char(1));

select* from STUDENT;

insert into STUDENT(Roll_No,Name_of_students,Marks,Grade) values
       (1,"Riya",85,"A"),(2,"Kavya",76,"B"),(3,"Manu",92,"A"),(4,"Priya",68,"C"),(5,"Anu",54,"C");
       
       
select* from STUDENT;

alter table STUDENT add column contact int;
desc STUDENT;
select* from STUDENT;

alter table STUDENT drop column Grade;
select* from STUDENT;

alter table STUDENT rename to CLASSTEN;

truncate table CLASSTEN;
select* from CLASSTEN;

drop table CLASSTEN;

select* from CLASSTEN;

