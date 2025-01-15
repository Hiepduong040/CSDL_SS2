use ks23b_database; 

create table Customer (
	cus_id int primary key auto_increment,
    cus_name varchar(100),
    cus_number varchar(100) not null
); 

create table Bill(
	bill_id int primary key auto_increment,
    bill_created date,
    cus_id int ,
    foreign key (cus_id) references Customer(cus_id)
); 