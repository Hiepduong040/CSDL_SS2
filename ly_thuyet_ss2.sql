/*
 Lưu ý: 
 1. Không phân biệt hoa thường
 2. Để kết thúc câu lệnh bắt buộc sử dụng ;
 3. Comment một dòng -- , comment nhiều dòng 
 4. Convension đặt tên trong db là snake
*/
-- 1. Tạo CSDL có tên là KS23B_Database
create database KS23B_Database;
-- 2. Xóa CSDL có tên là KS23B_Database
drop database KS23B_Database;
-- 3 Lựa chọn CSDL có tên KS23B_Database để làm việc
use ks23b_database;

/*
	ER --> Table
    1 Entity --> 1 table
    1 attribute --> 1 column
    primary key = not null + unique
	Syntax:
    CREATE TABLE [table_name](
		-- khai báo các cột trong bảng
		[column_name] datatype constraints,
	)
*/

/*
	4. Tạo bảng danh mục sản phẩm gồm các trường:
    - Mã danh mục: int PK, tăng tự động
    - Tên danh mục: varchar(100) duy nhất, bắt buộc nhập
    - Mô tả danh mục: text
    - Độ ưu tiên danh mục: int
    - Trạng thái danh mục: bit mặc định là 1
*/

create table Categories(
	cat_id int primary key auto_increment,
    cat_name varchar(100) unique not null,
    cat_description text,
    cat_priority int,
    cat_status bit default(1)    
);

/*
	tạo bảng sản phẩm gồm các trường
    - Mã sản phẩm
    - Tên sản phẩm
    - Giá sản phẩm: Float và có giá trị > 0
    - Ngày tạo
    - Mã danh mục : FK
    - Trạng thái
*/
create table product(
	pro_id char(5) primary key,
    pro_name varchar(100) not null unique,
    pro_price float check(pro_price > 0),
    pro_create date,
    cat_id int,
    foreign key (cat_id) references categories(cat_id),
    pro_status bit
);

-- xóa bảng categories
drop table product;

-- 8. thêm cột ngày tạo vào bẳn categories
alter table categories
	add column cat_created date;
    
-- 9. Sửa tên cột cat_created thành catelog_createlog
alter table categories
	rename column cat_created to catelog_createlog;
    
-- 10. thay đổi kiểu dữ liệu của cột catalog_createlog từ date sang varchar(100)
alter table categories
	modify column catelog_createlog varchar(100);



