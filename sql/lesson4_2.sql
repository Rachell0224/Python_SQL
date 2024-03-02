/*field constraints*/
/*
PRIMARY KEY
NOT NULL (不可以是空的) 
UNIQUE　(不可以重複)
DEFAULT (新增值時可以不設)
*/

CREATE TABLE student (
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	major VARCHAR(20) UNIQUE
);

DROP TABLE student;

SELECT * FROM student;

INSERT INTO student VALUES(2, 'Tina', 'Applied Japanese') /*三個欄位都要有值 */
RETURNING *; /*顯示所新增的*/

/*指定欄位*/
INSERT INTO student(name,major) VALUES ('Ryan', 'History') 
RETURNING *;

/*錯誤的NOT NULL*/
INSERT INTO student(name,major) VALUES (NULL, 'History')
RETURNING *;

/*新增多筆*/
INSERT INTO student(name,major) 
VALUES ('David', 'MBA'), ('Tony', 'GMBA')
RETURNING *;