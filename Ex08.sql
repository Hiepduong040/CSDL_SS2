
/*
	a)
    Thiếu ràng buộc khóa chính:

	Bảng không có cột nào được xác định là khóa chính. Nếu không có khóa chính, sẽ không có cách nào để xác định duy nhất mỗi bản ghi trong bảng.
	Cột Grade có thể chứa giá trị NULL:

	Cột Grade có thể chứa giá trị NULL, điều này không hợp lý trong trường hợp bạn muốn đảm bảo rằng mỗi sinh viên có một điểm.
	Không có ràng buộc kiểm tra giá trị hợp lệ cho Grade:

	Không có ràng buộc kiểm tra giá trị của cột Grade. Nếu không có kiểm tra, người dùng có thể nhập các giá trị ngoài khoảng cho phép (0-10).
*/

CREATE TABLE Grade (
    Student_id int not null,   -- Student_id là số nguyên và không thể NULL
    Class_id int not null,     -- Class_id là số nguyên và không thể NULL
    Grade INT NOT NULL,        -- Điểm không thể NULL
    PRIMARY KEY (Student_id,Class_id),        -- Khóa chính kết hợp
    CHECK (Grade >= 0 AND Grade <= 10) -- Kiểm tra giá trị điểm phải nằm trong khoảng 0-10
);