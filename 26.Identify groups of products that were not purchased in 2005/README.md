# 26

Identify groups of products that were not purchased in 2005

Fields in the resulting table: **good_type_name**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT good_type_name
FROM GoodTypes
WHERE good_type_id NOT IN (
    SELECT g.type
    FROM Goods g
    INNER JOIN Payments p
        ON p.good = g.good_id
    WHERE YEAR(p.date) = 2005
)
```