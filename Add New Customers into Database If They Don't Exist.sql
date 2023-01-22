INSERT INTO customers (customer_id, customer_name) VALUES (‘1’, ‘Anthony Voth’)
	SELECT cust.customer_id
		, cust.customer_name
	FROM customers as cust
	WHERE NOT EXISTS (SELECT customer_id
				FROM customers as cust_2
				WHERE cust_2.customer_id = cust.customer_id);
	
INSERT INTO customers (customer_id, customer_name) VALUES (‘2’, ‘John Doe’)
	SELECT cust.customer_id
		, cust.customer_name
	FROM customers as cust
	WHERE NOT EXISTS (SELECT customer_id
				FROM customers as cust_2
				WHERE cust_2.customer_id = cust.customer_id);

INSERT INTO customers (customer_id, customer_name) VALUES (‘3’, ‘Jane Doe’)
	SELECT cust.customer_id
		, cust.customer_name
	FROM customers as cust
	WHERE NOT EXISTS (SELECT customer_id
				FROM customers as cust_2
				WHERE cust_2.customer_id = cust.customer_id);
