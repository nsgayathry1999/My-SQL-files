use gayathry;
select * from country_2;
select * from persons_2;
-- find the number of persons in each country
select country_name,count(*) as number_of_persons from persons_2 group by Country_name;

-- find the number of persons in each country sorted from high to low
select country_name,count(*) as number_of_persons from persons_2 group by Country_name order by number_of_persons DESC;

-- find out an average rating for persons in respective countries if the average greater than 3
select country_name,avg(rating) as average_rating from persons_2 group by country_name having avg(rating)>3;

-- find the countries with the same rating as the USA
select Country_name from persons_2 group by country_name having avg(rating)= (select avg (rating) from persons_2 where country_name="USA");

-- find the countries whose population is greater than the average population of all nations
select Country_name,population from country_2 where population>(select avg(population) from country_2);

-- create a database named product ,create a tabloe called customer with the following fields in the product database

create database Product;
use Product;
create table Customer( customer_id int auto_increment primary key, First_name varchar(50) not null,
                      last_name varchar(50),address varchar(100),
                      phone_number varchar (15),
                      Email varchar(50),
                      city varchar(50),
                      state varchar(50),
                      zip_code varchar (10),
                      counrty varchar (100));
desc customer;
insert into customer (first_name,last_name,address,phone_number,email,city,state,zip_code,counrty) values
	("Jhon","brito","30 Memorial Drive",8891663452,"jhn@gmail.com","delhi","UP","10001","india"),
	("Karthy","Menon","777 Brockton Avenue","7989254613","kafgfgs@gmail.com","Santa Ana","California","50082","US"),
     ("joe","Kurian","250 Hartford Avenue","8891663421","johne@gmail.com","Seattle","washington","689542","US"),
     ("Sreeja","Menon","700 Oak Street","8897456220","ser@gmail.com","Mumbai","Maharashtra","235689","India"),
     ("Varun","Davan","591 Memorial Dr","6238500120","vadgs@gmail.com","Paris","lie_de_france","145780","France"),
     ("Surya","Kanth","55 Brooksby Village Way","8891663459","sukar@gmail.com","los Angeles","california","598625","US"),
     ("Manju","Rani","42 Fairhaven Commons","9562614623","manjhh@mail.com","Sydney","New South Wales","126598","Australa"),
     ("Seetha","Lakshmi","337 Russell St","6258987451","seethg@gmail.com","toronto","Ontario","125473","Canada"),
     ("Arjun","Sooraj","1775 Washington St","9965321478","arhuu@gmail.com","Landon","England","369874","UK"),
     ("Ajay","Avarachan","1 Jungle Road","6598741256","ajaylk@gmail.com","Cape Town","western cape","123568","south Africa"),
     ("Pavithra","Kanth","01 Massachusetts Ave","999652531","paha@gmail.com","Nevada","california","258963","US");
select * from customer;

-- create a view named customer_info for the customer table that displays cutomers full name and mail address .then perform the select operation for the customer info view
create view customer_info as select concat(first_name,"",Last_name) as ful_name,Email from customer;
select * from customer_info;

-- create a view names US_customers that displays customer who lived in US
create view US_Customers as select * from customer where counrty ="US";
select * from US_Customers;

-- create another view named customer_details with columns full_name,email,phone_number, and state
create view customer_details as select concat(first_name,"",last_name) as full_name, email,Phone_number,State from customer;
select * from customer_details;

-- update ph number of customers  who love in california for customer details view
update customer set phone_number="9966332250" where state ="california";
set SQL_safe_updates = 0;
select* from customer_details where state ="california";

-- count the number of customers in each state and show only state whith more than 5 customers
create view Statecustomercount as select state,count(*) as number_of_customers from customer group by state;
select * from statecustomercount having number_of_customers>5;
select state,count(*) as number_of_customers from customer group by state having count(*)>5;

-- write a query that will return the number of customers in each state , based on state coulumn in the customer detais  view
select state,count(*) as number_of_customers from customer_details group by state;

-- write a query that will return all the colums from details vire, sorted by the state column in ascending order
select * from (select * from customer_details) as subquery order by state asc;