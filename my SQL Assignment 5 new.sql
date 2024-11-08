use entry_D42;

create table Country_2 ( id int primary key ,Country_name varchar (100) not null,Population int,Area decimal(10,2));

   desc country_2;
   
   insert into country_2(id,country_name,population,area) values (1,"USA",321000000,9865321),(2,"india",1380000000,3287263),
                   (3,"France",67000000,551695),(4,"China",1439000000,9596961),(5,"japan",126300000,377975),
                   (6,"Australia",25400000,7692024),(7,"Germany",83000000,357022),(8,"UK",67800000,243610),
                   (9,"Brazil",212600000,8515767),(10,"Canada",37700000,9984670);

                   
                   
create table Persons_2 (id int , First_name varchar(50),Last_name varchar (50),Population int ,Rating  decimal(3,1), Country_id int,
   Country_name varchar(100));
   desc persons_2;
   
   insert into Persons_2(id ,First_name,Last_name,Population,Rating,Country_id,Country_name) values(1,"Karthik","Surya",500000,4.5,100,"USA"),
                   (2,"Alia","Bhat",5000000,4.8,101,"India"),(3,"Surya","Kanth",80000,3.9,102,"France"),(4,"Ajay","Avarachan",10000000,4.3,103,"China"),
                   (5,"Sanjay","Krishna",900000,4.2,104,"japan"),
                   (6,"Manu","Deva",100000,3.6,105,"Australia"),(7,"Krishna","Kanth",120000,4.0,106,"Germany"),(8,"Sachin","Madav",700000,4.1,107,"UK"),
                   (9,"Neeraj","Madhav",2000000,4.9,108,"Brazil"),(10,"Harnas","Chandra",1500000,3.8,10,"Canada");
                   
	select * from Country_2;
  	select * from persons_2;
    -- query to print the first 3 characters of country_name from country_2 table
    select substring(Country_name,3) as first_three_characters from Country_2;
      select substring(Country_name,1,3) as first_three_characters from Country_2;
      
-- query to concatenate first name and last_name from person_2 table
   select concat(first_name,' ',last_name) as full_name from persons_2;
   
-- query to count number of unique country names from persons table
    select count( distinct country_name ) as unique_country_count from persons_2;
    
-- query to find maximum population from country table
    select max( population) as max_population from country_2;
    select country_name max(population) as max_population from country_2;
    select country_name from country_2 where population = (select max(population) from country_2);
    
-- query to find minimum population from persons_2 table
   select min( population) as min_population from persons_2;
   
-- insert 2 rows to the persons table making l name null then write query to count l name from persons table
 insert into persons_2(id,First_name,last_name,population,rating,country_id,country_name) values (11,"Gautham",null,750000,3.5,110,"iraq"),
            (12,"sandhya",null,880000,4.2,111,"Brazil");
select count(last_name) as total_count_last_name from persons_2 ;
select count(*) as  total_last_name from persons_2;

-- find the number of rows in persons_2 table
select count(*) as total_rows from persons_2;

-- query to show population of the country table  for the first 3 rows 
select population from country_2 limit 3;

-- query to print 3 random rows of countries
select * from country_2 order by rand() limit 3;

-- list  all persons orderd by their rating in descending order
select * from persons_2 order by rating desc;

-- total population forb each country from persons_2 table
 select country_name, sum(population) as Total_population from persons_2 group by Country_name;
 
 -- find countries in persons_2 table with total population greater than 50000
 select country_name from persons_2 where Population > 50000;
 
 -- list total number of persons and average rating for reach country but only for countries with more  than  2 persons, ordered by the average rating in ascending order
   select country_name, count(*) as total_persons,avg (rating) as average_rating from persons_2 group by Country_name having count(*)>2 order by average_rating asc;
      
    
 
