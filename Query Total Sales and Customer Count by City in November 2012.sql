SELECT
	locations.location as ‘City’
	, sum(purchases.amount) as ‘Total Sales’
	, count(customers.customer_id) as ‘Total Customers

FROM 
	purchases,
	JOIN customers on customers.customer_id = purchases.purchase_id
	JOIN store_locations as locations on locations.location_id = purchases.location_id
WHERE purchases.purchase_date BETWEEN ’11-01-2012’ AND ’11-31-2012’
GROUP BY locations.location;
