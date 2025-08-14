-- SUBQUERY / task 1
SELECT c.first_name, c.last_name, o.amount
FROM Orders AS o
JOIN Customers AS c ON c.customer_id = o.customer_id
WHERE o.amount = (SELECT MAX(amount) FROM Orders);