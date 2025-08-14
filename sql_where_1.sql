-- WHERE / task 1
SELECT first_name, last_name, age, country
FROM Customers
WHERE country = 'USA' AND age > 25
ORDER BY first_name, last_name;