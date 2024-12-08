# 36

Print information about students living on Pushkin street (ul. Pushkina)?

Fields in the resulting table: *

Scheme:  
![schedule.png](..%2Fschemes%2Fschedule.png)

Solution:  
```sql
SELECT *
FROM Student
WHERE address LIKE 'ul. Pushkina%'
```