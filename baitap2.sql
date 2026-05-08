USE stu_sql;

ALTER TABLE student_constrainter
MODIFY COLUMN `Mã sinh viên` VARCHAR(50);

ALTER TABLE student_constrainter
ADD COLUMN `Giới tính` VARCHAR(50);

UPDATE student_constrainter SET `Mã sinh viên` = 'SV001' WHERE `Mã sinh viên` = '1';
UPDATE student_constrainter SET `Mã sinh viên` = 'SV002' WHERE `Mã sinh viên` = '2';
UPDATE student_constrainter SET `Mã sinh viên` = 'SV003' WHERE `Mã sinh viên` = '3';
UPDATE student_constrainter SET `Mã sinh viên` = 'SV004' WHERE `Mã sinh viên` = '4';
UPDATE student_constrainter SET `Mã sinh viên` = 'SV005' WHERE `Mã sinh viên` = '5';

UPDATE student_constrainter SET `Giới tính` = 'Nữ' WHERE `Mã sinh viên` IN ('SV003','SV005');
UPDATE student_constrainter SET `Giới tính` = 'Nam' WHERE `Mã sinh viên` IN ('SV001','SV002','SV004');

UPDATE student_constrainter SET `Email` = 'dtl@gmail.com' WHERE `Mã sinh viên` = 'SV005';
SELECT * FROM student_constrainter WHERE `Mã sinh viên` = 'SV005';

UPDATE student_constrainter SET `Giới tính` = 'Khác' WHERE `Mã sinh viên` = 'SV005';
SELECT * FROM student_constrainter WHERE `Mã sinh viên` = 'SV005';

DELETE FROM student_constrainter WHERE `Mã sinh viên` = 'SV003';
SELECT * FROM student_constrainter;
 