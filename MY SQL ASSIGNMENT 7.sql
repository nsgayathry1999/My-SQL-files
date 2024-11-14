use gayathry;
select * from country_2;
select * from persons_2;



-- add a new column to person_2 table with dob as data type date
alter table persons_2 add DOB date;
update persons_2 set DOB = '1990-01-15' WHERE First_name = "Karthik";
set SQL_safe_updates=0;
update persons_2 set DOB = '1998-05-25' WHERE First_name = "Surya";
update persons_2 set DOB = '1988-11-05' WHERE First_name = "Ajay";
update persons_2 set DOB = '1997-02-18' WHERE First_name = "Sanjay";
update persons_2 set DOB = '1992-01-08' WHERE First_name = "Manu";
update persons_2 set DOB = '2000-06-16' WHERE First_name = "Krishna";
update persons_2 set DOB = '1987-09-21' WHERE First_name = "Sachin";
update persons_2 set DOB = '2001-05-19' WHERE First_name = "Neeraj";
update persons_2 set DOB = '1995-05-02' WHERE First_name = "Harnas";

-- write a userdefined function to calculate age using DOB 

delimiter $$
create function calculate_age(Date_of_birth date)
 returns int
 deterministic
 begin
      declare age int;
      set age=timestampdiff(year,Date_of_birth,curdate());
      return age;
end $$
delimiter ;

select first_name,last_name,calculate_age (DOB) as age from persons_2;


-- find the lenth of each country name in the country_2 table
select country_name, length(country_name) as name_lenth from country_2;

-- extract the first 3 characters of ecah country name from the country table
select country_name,substring(country_name,1,3) as first_three_charcter from country_2;

-- convert all country name to uppercase and lowercase from country_2 table
select country_name,upper(country_name) as country_name_uppercase,lower(country_name) as country_name_lowercase from country_2;









