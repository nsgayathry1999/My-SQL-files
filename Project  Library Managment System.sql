create database Library;
use Library;

create table Branch (Branch_no int primary key,Manager_id int,Branch_address varchar(100),contact_no varchar(15));
insert into Branch (Branch_no,Manager_id,Branch_address,contact_no)values 
                    (1,100,"Sarvottama Granthalayam Bombay","9876451203"),(2,101,"Maulana Azad Central Library bhopal","9685741203"),
                    (3,102,"951Tagore Library","9852467806"),(4,103,"Andtrews Library1","8895621470"),
                    (5,104,"Bookworm Children's Library","7946130258"),
					(6,105,"Kavi Narmad Central Library","8596147203"),
                    (7,106,"The Asiatic Society of Mumbai","963214587"),(8,107,"Harekrushna Mahtab State Library","7852149630"),
                    (9,108,"Prakrit Bharati Academy","8974510269"),(10,109,"British Library Hyderabad","9514786320");
select * from branch;
create table Employee (Emp_id int primary key,Emp_name varchar(100),position varchar(50),salary decimal(10,2),Branch_no int,foreign key(branch_no)
                      references Branch(Branch_no));
insert into employee(Emp_id,Emp_name,position,salary,Branch_no)values 
                    (1001,"Jhon Brito","Manager",60000,1),
                    (1002,"Abdhul Said","Librarian",45000,2),
                    (1003,"Nizam Suhal","Assitant",55000,3),
                    (1004,"Sujatha Menon","Librarian",60000,2),
                    (1005,"Salim Main","Manager",75000,2),
                    (1006,"Amala Shaji","Assistant",35000,5),
                    (1007,"Ajith Menon","Librarian",45750,6),
                    (1008,"Karthika Menon","Manager",78000,4),
                    (1009,"Sushama Singh","Librarian",65000,5),
                    (1010,"Surya Kanth","Assistant",48000,4),
                    (1011,"Sandhya Menon","Manager",90000,7),
                    (1012,"Ajay Suresh","Assistant",52000,8),
                    (1013,"Surya Nimish","Assistant",48000,2),
                    (1014,"Nirmal Sanjay","Librarian",52000,2),
                    (1015,"Neethu Menon","Assistant",42000,2),
                    (1016,"Sangeetha Nair","Assistant",52000,2),
                    (1017,"Priyanka Kahji","Librarian",63000,9);
select * from employee;


create table Books(ISBN int primary key,Book_Title varchar (200),Category varchar(100),Rental_price decimal(10,2),
Status enum("YES","NO"),Author varchar(200),Publisher varchar(200));
desc books;
insert into books(ISBN,Book_Title,Category,Rental_price,Status,Author,Publisher)values
                 (978-1-60309-517-4,"THE BEST OF RUSKIN BOND","Fiction",500,"Yes","RUSKIN BOND","PENGUIN BOOKS"),
                 (978-1-60309-442-9,"Half GirlFriend","Novel",300,"Yes","Chetan Bhagat","Rupa and Co"),
                (978-1-60309-502-0,"A separate peace","History",25,"Yes","John Knowles","Scribner Classics"),
                (978-1-60309-542-6,"Animal Farm-Political","History",50,"Yes","George Orwell","Harcourt Brace and Company"),
				(978-1-60309-527-3,"Gulliver&#39;s travels","Fantacy",20,"No","Jonathan Swift","Knopf"),
                (978-1-60309-535-8,"The return of the king","Fantacy",50,"Yes","JRR Tolkien","Houghton Mifflin Co"),
			    (978-1-60309-520-4,"The Sun Also Rises","History",25,"Yes","Ernest Hemingway","Scribner"),
                (978-1-60309-454-2,"The phantom of the Opera","Horror",30,"No","Gaston Leroux","Harper Perennial Library"),
                 (978-1-60309-511-2,"Misery","Horror",20,"Yes","Stephen King","Doubleday"),
                (978-1-60309-540-2,"The Trail","Allegories",20,"Yes","Franz Kafka","Alma Books"),
                 (978-1-60309-492-4,"The Moon Stone","History",30,"Yes","Wilkie Collins","Knopf"),
				(978-1-60309-513-6,"Kim","Action and Adventure",50,"Yes","Rudyard Kipling","Dian"),
                (978-1-60309-514-3,"White Fang","Action and Adventure",30,"No","Jack Landon","Scholastic"),
                 (978-1-60309-508-2,"WHEN BREATH BECOMES AIR","Biography",20,"Yes","PAUL KALANITH","THE BODLEY HEAD"),
                 (978-1-60309-038-4,"THE NINE LIVES OF PAKISTAN","Travell Literature",15,"No","DECLAN WALSH","BLOOMSBURY"),
                 (978-1-60309-515-0,"The Man who Won","Autobiography",28,"Yes","NADIA MURAD","VIRAGO"),
                 (978-1-60309-505-1,"ADULTERY","Novel",30,"No","PAULO COELHO","PENGUIN"),
                ( 827-1-30309-631-2,"JINNAH INDIA PARTITION INDEPENDENCE","Histoy",35,"Yes","JASWANT SINGH","RUPA PUBLICATIONS"),
                (827-0-52820-333-9,"MEIN KAMPf","Autobiography",15,"Yes","ADOLF HITLER","LOTUS PRESS"),
                ( 827-2-58792-209-2,"SIMPLY FLY","Biography",30,"Yes","CAPTAIN GOPINATH","COLLINS");
select * from books;

create table Customer(Customer_id int primary key,Customer_name varchar(100),Customer_address varchar(200),Reg_date date);
insert into customer(Customer_id,Customer_name,Customer_address,Reg_date)values
             (1001,"Biju","Memorial Drive Bangloore","2020-02-11"),(1002,"Suryan","777 Brockton Avenue","2021-05-21"),
             (1003,"Dhanush","250 Hartford Avenue","2022-12-11"),(1004,"Maichel","700 Oak Street","2020-05-21"),
             (1005,"Anu Sithara","55 Brooksby Village Way","2023-02-11"),(1006,"Sindhu Misra"," Jungle Road","2019-02-01"),
             (1007,"Ajay","42 Fairhaven Commons","2019-05-08"),(1008,"Maneesh","Russell St Nagar","2021-02-08"),
             (1009,"Sumeesh Dav","Aw Sain Street Mumbai","2022-09-21"),(1010,"Alia Bhat","Nirmal Bhavan Street","2019-08-27"),
             (1011,"Rain","Dhavan Street nagar","2022-02-13"),(1012,"Rahim","Main street Parlour","2021-10-10");
select * from customer;

create table IssueStatus(Issue_id int primary key,Issued_cust int,Issued_book_name varchar(100),Issue_date date,ISBN_book int,
                         foreign key(Issued_cust) references customer(Customer_id),foreign key(ISBN_book)references books(ISBN));
insert into issuestatus(Issue_id,Issued_cust,Issued_book_name,Issue_date,ISBN_book)values
      (10001,1001,"Misery","2023-09-22",978-1-60309-511-2),(10002,1002,"ADULTERY","2023-06-22",978-1-60309-505-1),
      (10003,1003,"SIMPLY FLY","2022-08-25", 827-2-58792-209-2),(10004,1004,"Half GirlFriend","2023-06-01",978-1-60309-442-9),
      (10005,1005,"THE NINE LIVES OF PAKISTAN","2021-08-14",978-1-60309-038-4),(10006,1006,"WHEN BREATH BECOMES AIR","2022-10-12",978-1-60309-508-2),
      (10007,1007,"The Trail","2023-06-06",978-1-60309-540-2),(10008,1008,"MEIN KAMPf","2022-04-29",827-0-52820-333-9),
      (10009,1009,"The Sun Also Rises","2020-12-23",978-1-60309-520-4),(10010,1010,"Animal Farm-Political","2022-10-10",978-1-60309-542-6),
      (10011,1011,"The phantom of the Opera","2023-06-17",978-1-60309-454-2);
      
select * from issuestatus;

create table Return_status(Return_id int primary key,Return_cust int,Return_book_name varchar(200),Return_date date,isbn_book2 int,
                  foreign key(isbn_book2)references books(ISBN));
insert into return_status(Return_id,Return_cust,Return_book_name,Return_date,isbn_book2) values
            (100001,1001,"Misery","2023-11-23",978-1-60309-511-2),(100002,1003,"SIMPLY FLY","2022-09-12",827-2-58792-209-2),
            (100003,1004,"Half GirlFriend","2023-06-29",978-1-60309-442-9),(100004,1005,"THE NINE LIVES OF PAKISTAN","2021-09-20",978-1-60309-038-4),
            (100005,1009,"The Sun Also Rises","2021-01-01",978-1-60309-520-4),(100006,1010,"Animal Farm-Political","2022-10-20",827-0-52820-333-9);
select * from return_status;

-- 1. Retrieve the book title, category, and rental price of all available books.
select Book_Title,Category,Rental_price from books where status="Yes";

-- 2. List the employee names and their respective salaries in descending order of salary. 
select Emp_name as Employee_Name,salary from employee order by salary desc;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books
select i.Issued_book_name as Book_Title,C.Customer_name as Customer_name from issuestatus I join
customer C on i.Issued_cust=C.Customer_id;

-- 4. Display the total count of books in each category.
select Category,count(*) as Total_Books from books group by Category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
select Emp_name as Employee_Name,position from employee where salary>50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 
select C.Customer_name as Customer_name from Customer C left join
       Issuestatus I on C.Customer_id=I.Issued_cust where
        C.reg_date<"2022-01-01" and I.Issue_id is null;
        
-- 7.. Display the branch numbers and the total count of employees in each branch
select E.Branch_no as Branch_number,Count(*) as total_employees from Employee E Group by E.branch_no;

-- 8. Display the names of customers who have issued books in the month of June 2023
select C.Customer_name as Customer_name from Issuestatus I join Customer C on I.Issued_cust=C.customer_id where month(I.issue_date)=6
                  and year(I.Issue_date)=2023;
                  
-- 9. Retrieve book_title from book table containing history.
select Book_Title  from books where category = "History";

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
select E.Branch_no as Branch_number,count(*) as Employee_count from employee E group by E.Branch_no having count(*)>5;

-- 11. Retrieve the names of employees who manage branches and their respective branch addresses. 
select E.Emp_name as Employee_name,B.Branch_address as Branch_Address from employee E join
            Branch B on E.Emp_id = B.Manager_id;
            
-- 12. Display the names of customers who have issued books with a rental price higher than Rs. 25.
select distinct C.customer_name as Customer_name from issuestatus I join books
 B on I.ISBN_book=B.ISBN join customer c on I.Issued_cust=C.Customer_id where B.Rental_price>25;
            

