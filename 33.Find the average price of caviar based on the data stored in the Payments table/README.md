# 33

Find the average price of caviar based on the data stored in the Payments table.  
The database stores data on purchases of red caviar and black caviar.  
The query result should contain one line with the average price of all caviar ever bought.

Fields in the resulting table: **cost**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT AVG(p.unit_price) cost
FROM Goods g
LEFT JOIN Payments p ON p.good = g.good_id
WHERE g.good_name LIKE '%caviar'
```