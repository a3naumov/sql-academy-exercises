# 25

Determine which products were not purchased in 2005

Fields in the resulting table: **good_name**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT good_name
FROM Goods
WHERE good_id NOT IN (
    SELECT good
    FROM Payments
    WHERE YEAR(date) = 2005
)
```