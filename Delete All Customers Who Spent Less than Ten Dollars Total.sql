DELETE 
FROM customers as cust
WHERE cust.customer_id not in (
SELECT cust2.customer_id
	FROM customers as cust2
	JOIN purchases on cust2.customer_id = purchases.purchase_id
JOIN store_locations as locations on locations.location_id = purchases.location_id
GROUP BY locations.location_id, cust2.customer_id
HAVING SUM(purchases.amount) < 10
);
