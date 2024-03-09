SELECT * 
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號;



SELECT 日期, 進站人數, 出站人數, 名稱, 地名, 地址, youbike 

SELECT 日期, 進站人數, 出站人數, 名稱, 地名, 地址, youbike 
FROM gate_count LEFT JOIN stations ON 名稱='基隆';

SELECT DISTINCT 名稱
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 地址 LIKE '基隆市%';

SELECT DISTINCT 名稱
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 地址 LIKE '高雄市%';

SELECT 日期, 進站人數, 出站人數, 名稱, 地名, 地址, youbike 
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 名稱='基隆' AND 日期='20220301';