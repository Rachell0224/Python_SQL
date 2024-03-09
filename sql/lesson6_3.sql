/*取出payment的所有客戶的customer_id(不重複)*/
SELECT DISTINCT customer_id FROM payment;

/*取出payment的所有客戶的customer_id(不重複)*/
SELECT customer_id, COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id;

/*取出payment的所有客戶的應收帳款綜合, sum()*/
SELECT customer_id, SUM(amount) AS 應收帳款
FROM payment
GROUP BY customer_id
ORDER BY 應收帳款 DESC;

SELECT first_name || ' ' || last_name AS full_name, SUM(amount) AS 應收帳款
FROM payment LEFT JOIN customer USING (customer_id) /*ON payment.customer_id = customer.customer_id*/
GROUP BY full_name
ORDER BY 應收帳款 DESC;

SELECT first_name || ' ' || last_name AS full_name, SUM(amount) AS 應收帳款
FROM payment LEFT JOIN customer USING (customer_id)
GROUP BY full_name
HAVING SUM(amount) >= 200
ORDER BY 應收帳款 DESC;