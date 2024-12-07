# 35

How many different classrooms of the school were used on September 2, 2019 for classes?

Fields in the resulting table: **count**

Scheme:  
![schedule.png](..%2Fschemes%2Fschedule.png)

Solution:  
```sql
SELECT COUNT(DISTINCT classroom) count
FROM Schedule
WHERE date = '2019-09-02'
```