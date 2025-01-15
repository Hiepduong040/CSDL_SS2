
-- Chèn 3 bản ghi vào bảng Employee 
-- a)
insert into Employee (employee_name, employee_start, employee_salary)
	values ('Duong Sy Hiep', '2023-01-15', 5000),
		   ('Nguyen Hoang Long', '2023-01-15', 5000),
           ('Nguyen Tien Thinh', '2023-01-15', 5000);
-- b)
update Employee set employee_salary = 7000 where employee_id = 1 ;

-- c)
delete from Employee where employee_id = 3;
