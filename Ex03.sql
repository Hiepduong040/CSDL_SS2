use ks23b_database;

-- a) tao bang

create table Product(
	pro_id int primary key auto_increment,
    pro_name varchar(100) unique ,
    pro_price decimal(20,20) ,
    pro_quantity int
);

-- b) them rang buoc 

alter table Product
	modify column pro_name varchar(100) not null,
    modify column pro_price decimal(20,20) not null