# 34

How many 10th grades are there in total

Fields in the resulting table: **count**

Scheme:  
![schedule.png](..%2Fschemes%2Fschedule.png)

Solution:  
```sql
SELECT COUNT(*) count
FROM Class
WHERE name LIKE '10%'
```