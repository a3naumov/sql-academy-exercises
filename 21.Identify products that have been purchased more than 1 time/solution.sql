SELECT good_name
FROM Goods
WHERE good_id IN (
    SELECT good
    FROM Payments
    GROUP BY good
    HAVING COUNT(good) > 1
)