use entry_d42;
select*from country_2;
select* from persons_2;
--  perform inner join ,left join, right join
-- inner join

SELECT country_2.id,country_2.country_name,country_2.population,country_2.area,persons_2.id,persons_2.first_name,persons_2.last_name,persons_2.population,persons_2.rating,
persons_2.country_id,persons_2.country_name       
FROM country_2
INNER JOIN persons_2 ON country_2.id=persons_2.id;

SELECT c.id as country_2_id,c.country_name,c.population,c.area,p.id as persons_2_id,p.first_name,p.last_name,p.population as persons_2_population,p.rating,
p.country_id,p.country_name  as persons_2_country_name      
FROM country_2 c
INNER JOIN persons_2 p ON c.id=p.id;

-- LEFT JOIN

SELECT c.id as country_2_id,c.country_name,c.population,c.area,p.id as persons_2_id,p.first_name,p.last_name,p.population as persons_2_population,p.rating,
p.country_id,p.country_name  as persons_2_country_name      
FROM country_2 c
LEFT JOIN persons_2 p ON c.id=p.id;

-- RIGHT JOIN
SELECT c.id as country_2_id,c.country_name,c.population,c.area,p.id as persons_2_id,p.first_name,p.last_name,p.population as persons_2_population,p.rating,
p.country_id,p.country_name  as persons_2_country_name      
FROM country_2 c
RIGHT JOIN persons_2 p ON c.id=p.id;

-- list all distinct country names from both tables
select distinct country_name from country_2 union select distinct Country_name from persons_2;

-- list all country name from both country and person table including duplicates
select  country_name from country_2 union all select  Country_name from persons_2;

-- round  the rating of all persons to nearest integer in the persons_2 table
  update persons_2 set rating=round(rating);
update persons_2 set rating=round(rating);
set SQL_safe_updates=0;
update persons_2 set rating=round(rating);
update  persons_2 set rating = round(rating) where rating is not null;