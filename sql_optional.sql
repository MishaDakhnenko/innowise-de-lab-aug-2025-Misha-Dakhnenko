-- OPTIONAL / combined task
WITH orders_per_customer AS (
  SELECT customer_id, COUNT(*) AS total_orders, SUM(amount) AS total_amount
  FROM Orders
  GROUP BY customer_id
  HAVING COUNT(*) >= 2
),
delivered_customers AS (
  SELECT DISTINCT customer AS customer_id
  FROM Shippings
  WHERE status = 'Delivered'
)
SELECT
  c.first_name || ' ' || c.last_name AS full_name,
  c.country,
  o.total_orders,
  o.total_amount
FROM orders_per_customer AS o
JOIN delivered_customers AS d USING (customer_id)
JOIN Customers AS c ON c.customer_id = o.customer_id
ORDER BY full_name;
