# 27

Find out how much was spent on each of the product groups in 2005.  
Print the name of the group and the total costs spent on it.  
If there was no spending on a particular product group, i.e.,   
goods from that group were not bought in 2005, do not include it in the report.

Fields in the resulting table: **good_type_name costs**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT
    gt.good_type_name,
    SUM(p.amount * p.unit_price) costs
FROM GoodTypes gt
INNER JOIN Goods g
    ON g.type = gt.good_type_id
INNER JOIN Payments p
    ON p.good = g.good_id
WHERE YEAR(p.date) = 2005
GROUP BY gt.good_type_name
```