# 21

Identify products that have been purchased more than 1 time

Fields in the resulting table: **good_name**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT good_name
FROM Goods
WHERE good_id IN (
    SELECT good
    FROM Payments
    GROUP BY good
    HAVING COUNT(good) > 1
)
```