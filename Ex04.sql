use ks23b_database;

create table Employee(
	employee_id int primary key auto_increment,
    employee_name varchar(100) not null ,
    employee_start date,
    employee_salary float default 5000
);