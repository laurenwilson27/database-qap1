-- Fetch a list of customers, their names, and the total value of all of their rentals
-- at the store with an ID of 1
SELECT customer_id, first_name, last_name, SUM(amount) AS total
FROM payment INNER JOIN customer USING(customer_id)
WHERE store_id = 1
GROUP BY customer_id ORDER BY total DESC; 