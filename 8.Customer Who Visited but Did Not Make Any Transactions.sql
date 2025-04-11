SELECT v.customer_id,
COUNT(v.visit_id) as count_no_trans
FROM visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id ORDER BY v.customer_id