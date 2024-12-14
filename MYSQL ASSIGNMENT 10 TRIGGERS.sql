use entry_d42;
-- 1. Create a table named teachers with fields id, name, subject, experience and salary and insert 8 rows.
create table Teachers(id int primary key,name varchar(50),subject varchar(50),experiance int,salary decimal(10,2));
insert into teachers(id,name,subject,experiance,salary)values
                    (1,"Anand","mathematcis",5,50000.00),(2,"Varun","English",11,75000.00),
                    (3,"Sandhya","Chemistry",4,35000.00),(4,"Ajay","Physics",10,60000.00),
                    (5,"Surya","Hindhi",8,65000.00),(6,"Manu","Science",15,80000.00),
                    (7,"Karthik","Malayalam",6,43000.00),(8,"Priya","Politics",13,74000.00);
drop table teachers;

select * from teachers;
-- 2.Create a before insert trigger named before_insert_teacher that will raise an error “salary cannot be negative” if the salary inserted to the table is less than zero.
delimiter $$
create trigger before_insert_teacher
before insert on teachers
for each row
begin
if new.salary<0 then
signal sqlstate"45000"
set message_text="salary cannot be negative";
end if;
end;
delimiter ;

SHOW TRIGGERS;

INSERT INTO teachers values(9,"ABC","social",10,-45000.00);


-- 3. Create an after insert trigger named after_insert_teacher that inserts a row with teacher_id,action, timestamp to a table called
-- teacher_log when a new entry gets inserted to the teacher table. tecaher_id -> column of teacher table, action -> the
-- trigger action, timestamp -> time at which the new row has got inserted. 

create table teacher_log(teacher_id int,action varchar(50),timestamp datetime);
delimiter $$
create trigger after_insert_teacher
after insert on teachers
for each row
begin
insert into teacher_log(teacher_id,action,timestamp)values(new.id,"insert",now());
end;
delimiter ; 
show triggers;
insert into teachers(id,name,subject,experiance,salary) values (11,"Mariya","biology",8,58000);
select * from teacher_log where teacher_id=11;

-- 4. Create a before delete trigger that will raise an error when you try to delete a row that has experience greater than 10 years
delimiter $$
create trigger before_delete_teacher
before delete on teachers
for each row
begin
if old.experiance>10 then signal sqlstate"45000"
set message_text="cannot delete a teacher with more than 10 years experiance";
end if;
end $$
delimiter;
show triggers;
select * from teachers;
delete from teachers where id=2;
select * from teacher_log;
delete from teachers where id=6;

-- 5 Create an after delete trigger that will insert a row to teacher_log table when that row is deleted from teacher table.
delimiter $$
create trigger after_delete_teacher
after delete on teachers
for each row
begin
insert into teacher_log(teacher_id,action,timestamp)values (old.id,"delete",now());
end;
delimiter ;


