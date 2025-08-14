-- GROUP BY / task 2
SELECT
  item,
  COUNT(*)                              AS count,
  ROUND(AVG(amount)::numeric, 2)        AS avg_amount
FROM Orders
GROUP BY item
ORDER BY item;