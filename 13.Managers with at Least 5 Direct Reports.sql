SELECT e.name
FROM Employee AS e
JOIN Employee AS m ON e.id = m.managerId
GROUP BY e.id
HAVING COUNT(m.id) >= 5;
