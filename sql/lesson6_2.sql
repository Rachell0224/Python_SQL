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

/*取出基隆火車站2022年3月1日資料*/
SELECT 日期, 進站人數, 出站人數, 名稱, 地名, 地址, youbike 
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 名稱='基隆' AND 日期='20220301';

/*取出基隆火車站2022年3月份資料,時間由小到大排序*/
SELECT 日期, 進站人數, 出站人數, 名稱, 地名, 地址, youbike 
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 名稱='基隆' AND (日期 BETWEEN '2022-03-01' AND '2022-03-31') ORDER BY 日期 ASC;

/*取出基隆、台北火車站2022年3月份資料,時間由小到大排序*/
SELECT 日期, 進站人數, 出站人數, 名稱, 地名, 地址, youbike 
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
WHERE 名稱 IN('基隆','臺北') AND (日期 BETWEEN '2022-03-01' AND '2022-03-31') ORDER BY 日期 ASC;

/*取出資料進站人數最多的錢10筆資料*/
SELECT 日期, 進站人數, 出站人數, 名稱, 地名, 地址, youbike 
FROM gate_count LEFT JOIN stations ON 站點編號 = 編號
ORDER BY 進站人數 DESC
LIMIT 10;