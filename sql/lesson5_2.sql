DROP TABLE IF EXISTS 聯絡人;
DROP TABLE IF EXISTS 客戶;

CREATE TABLE IF NOT EXISTS 客戶(
	客戶_id SERIAL,
	客戶名稱 VARCHAR(255) NOT NULL,
	PRIMARY KEY(客戶_id)
	);

CREATE TABLE IF NOT EXISTS 聯絡人(
	聯絡人id SERIAL,
	客戶id INT,
	聯絡人姓名 VARCHAR(255) NOT NULL,
	電話 VARCHAR(15),
	郵件 VARCHAR(100),
	PRIMARY KEY(聯絡人id),
	FOREIGN KEY(客戶id) REFERENCES 客戶(客戶_id)
	ON DELETE CASCADE
	);

INSERT INTO 客戶(客戶名稱)
VALUES ('遠傳電信'),('台灣大車隊');

INSERT INTO 聯絡人(客戶id, 聯絡人姓名, 電話, 郵件)
VALUES (1, 'John Doe', '(408)-111-1234', 'john.doe@gmail.com'),
       (1, 'Jane Doe', '(408)-111-1235', 'jane.doe@gmail.com'),
       (2, 'David Wright', '(408)-222-1234', 'david.wright@gmail.com');

DELETE FROM 客戶
WHERE 客戶_id = 1;

SELECT * FROM 客戶;
SELECT * FROM 聯絡人;