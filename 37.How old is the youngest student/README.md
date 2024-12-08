# 37

How old is the youngest student ?

Fields in the resulting table: **year**

Scheme:  
![schedule.png](..%2Fschemes%2Fschedule.png)

Solution:  
```sql
SELECT MIN(TIMESTAMPDIFF(YEAR, birthday, NOW())) year
FROM Student
```