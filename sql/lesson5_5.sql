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
	);

INSERT INTO 客戶(客戶名稱)
VALUES ('遠傳電信'),('台灣大車隊');

INSERT INTO 聯絡人(客戶id, 聯絡人姓名, 電話, 郵件)
VALUES (1, 'John Doe', '(408)-111-1234', 'john.doe@gmail.com'),
       (1, 'Jane Doe', '(408)-111-1235', 'jane.doe@gmail.com'),
       (2, 'David Wright', '(408)-222-1234', 'david.wright@gmail.com');

SELECT * FROM 客戶;
SELECT * FROM 聯絡人;

SELECT 聯絡人id, 客戶名稱, 聯絡人姓名, 電話, 郵件
FROM 聯絡人 LEFT JOIN 客戶 ON 聯絡人.客戶id = 客戶.客戶_id;

SELECT 聯絡人id, 客戶名稱, 聯絡人姓名, 電話, 郵件
FROM 聯絡人 LEFT JOIN 客戶 ON 聯絡人.客戶id = 客戶.客戶_id
WHERE 客戶名稱 = '遠傳電信';