use ks23b_database; 

-- a)
create table Bill_Detail (
	bill_id int,
    pro_id int,
    bill_quantity int not null,
    primary key (bill_id, pro_id) -- ket hop 2 khoa chinh cua thuc the manh de hinh thanh khoa chinh cho thuc the yeu
); 

-- b) su dug cau lenh: ALTER TABLE [TableName] ADD CONSTRAINT [ForeignKeyName] FOREIGN KEY ([ColumnName]) REFERENCES [TableName]([ColumnName])
alter table Bill_Detail 
	add constraint FK_BillDetail_Bill foreign key (bill_id) references Bill(bill_id),
	add constraint FK_BillDetail_Product foreign key (pro_id) references Product(pro_id);

-- c) truy xuat du lieu hoa don, san pham, cau lenh : SELECT column1, column2, ... FROM table_name

select 
	Bill_Detail.bill_id, Bill.bill_created, Bill_Detail.pro_id, Product.pro_name, Product.pro_quantity from Bill_Detail 
join 
	Bill on Bill_Detail.bill_id = Bill.bill_id
join 
	Product on Bill_Detail.pro_id = Product.pro_id;

