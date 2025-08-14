-- WHERE / task 2
SELECT order_id, item, amount, customer_id
FROM Orders
WHERE amount > 1000
ORDER BY order_id;