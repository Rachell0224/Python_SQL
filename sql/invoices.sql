CREATE TABLE IF NOT EXISTS invoices(
	InvoiceId SERIAL PRIMARY KEY,
	CustomerId INT NOT NULL,
	InvoiceDate TIMESTAMP,
	BillingAddress VARCHAR,
	BillingCity VARCHAR(20),
	BillingState VARCHAR(10),
	BillingCountry VARCHAR(20),
	BillingPostCode VARCHAR(10),
	Total FLOAT8
);

SELECT * FROM invoices;