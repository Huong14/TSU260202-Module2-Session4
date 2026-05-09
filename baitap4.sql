INSERT INTO student_constrainter(`Mã sinh viên`,`Họ và tên`,`Email`,`Tuổi`,`Giới tính`,`Ngày sinh`)
VALUES ('SV006','Nguyen Thanh Cong',NULL,'23','Nam','2003-10-15');

SELECT * FROM student_constrainter
WHERE `Email` IS NULL;

SELECT * FROM student_constrainter
WHERE `Email` IS NOT NULL;

SELECT * FROM student_constrainter
WHERE `Họ và tên` LIKE 'NG%';

SELECT * FROM student_constrainter
WHERE NOT `Giới tính` = 'Nam';
