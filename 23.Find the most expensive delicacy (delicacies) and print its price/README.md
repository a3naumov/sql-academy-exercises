# 23

Find the most expensive delicacy (delicacies) and print its price

Fields in the resulting table: **good_name unit_price**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT 
    good_name,
    unit_price
FROM Payments p
INNER JOIN Goods g
    ON g.good_id = p.good
INNER JOIN GoodTypes gt
    ON gt.good_type_id = g.type
WHERE gt.good_type_name = 'delicacies'
ORDER BY unit_price DESC
LIMIT 1
```