# 32

Display the average age of people (in years) stored in the database.  
The result is rounded down to the nearest integer.

Fields in the resulting table: **age**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT FLOOR(AVG(YEAR(CURDATE()) - YEAR(birthday))) age
FROM FamilyMembers
```