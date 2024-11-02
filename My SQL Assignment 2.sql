create database sales;

use sales;
create table Orders_2 (order_id int primary key,Customer_name char(100) not null,Product_category char(50) not null,Ordered_item char(100)
                     not null , contact_No int(15) unique not null );
desc orders_2;

alter table orders_2 add order_quantity int not null ;
desc orders_2;
alter table orders_2 rename to sales_orders;
desc sales_orders;

insert into sales_orders (order_id,Customer_name,Product_category,Ordered_item,Contact_No,Order_quantity) values 
           (123,"manu","eleactronics","laptop",1225422584,1),
           (234,"Remya","Clothing","t_shirt",215514545,2),
           (345,"Kavya","electronics","smart_phone",545044554,3),
           (456,"Algy",'Home_appliances','grinder',2145994545,4),
           (567,"Davi","Cosmetics","lipstick",45411545,5),
           (678,"Sanjay","clothing","Shoes",75415121,6),
           (789,"Sindhu","electronics","kettle",41845554,7),
           (890,"Vinu","Electronics","Refrigerator",5450045,9),
           (910,"Anu","Clothing","jeans",45814545,10),
           (101,"Neethu","electronics","washing_machine",54541515,11);
           
           select *from sales_orders;
           
           select customer_name,Ordered_item from sales_orders;
           
           
            select *from sales_orders;
            
	update sales_orders set Ordered_item = "fan" where order_id=345;
    
    select *from sales_orders;
    
    drop table sales_orders;
    
    desc sales_orders;
            
            
            
            
           
           
