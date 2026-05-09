USE stu_sql;

ALTER TABLE student_constrainter ADD COLUMN `Ngày sinh` DATE;

UPDATE student_constrainter SET `Ngày sinh` = '2007-05-11' WHERE `Mã sinh viên` = 'SV001';
UPDATE student_constrainter SET `Ngày sinh` = '2005-03-01' WHERE `Mã sinh viên` = 'SV002';
UPDATE student_constrainter SET `Ngày sinh` = '2005-07-19' WHERE `Mã sinh viên` = 'SV004';
UPDATE student_constrainter SET `Ngày sinh` = '2007-12-21' WHERE `Mã sinh viên` = 'SV005';

SELECT * FROM student_constrainter
WHERE `Ngày sinh` BETWEEN '2003-01-01' AND '2005-12-31';

SELECT * FROM student_constrainter
WHERE `Giới tính` IN('Nam','Nữ');

SELECT * FROM student_constrainter
WHERE `Mã sinh viên` IN('SV001','SV004','SV005');

SELECT `Mã sinh viên`, `Họ và tên`, `Ngày sinh` FROM student_constrainter;