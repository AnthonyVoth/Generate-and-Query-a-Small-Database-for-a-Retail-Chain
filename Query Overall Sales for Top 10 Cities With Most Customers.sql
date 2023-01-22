SELECT
	sum(purchases.amount) as ‘Total Sales’
FROM 
	purchases,
	join customers on customers.customer_id = purchases.purchase_id
	join store_locations as locations on locations.location_id = purchases.location_id
WHERE purchases.purchase_date BETWEEN ’01-01-2012’ AND ’12-31-2012’
GROUP BY locations.location
ORDER BY COUNT(customers.customer_id) DESC
LIMIT 10;
