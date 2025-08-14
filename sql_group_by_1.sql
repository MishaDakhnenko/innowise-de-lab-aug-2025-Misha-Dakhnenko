-- GROUP BY / task 1
SELECT country, COUNT(*) AS count
FROM Customers
GROUP BY country
ORDER BY country;