CREATE TABLE customers(
customer_id numeric(10) not null,
	customer_name varchar(50) not null,
	CONSTRAINT fk_purchase
	FOREIGN KEY (purchase_id)
	REFERENCES purchases(purchase_id)
);

CREATE TABLE purchases(
purchase_id numeric(10) not null,
customer_id numeric(10) not null,
location_id numeric(10) not null,
item varchar(50) not null,
amount numeric(20) not null,
purchase_date date,
CONSTRAINT fk_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
);

CREATE TABLE store_locations(
location_id numeric(10) not null,
location varchar(50) not null,
CONSTRAINT fk_purchases
FOREIGN KEY (purchase_id)
REFERENCES purchases(purchase_id)
);
