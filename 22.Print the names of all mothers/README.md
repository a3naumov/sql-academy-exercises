# 22

Print the names of all mothers

Fields in the resulting table: **member_name**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT member_name
FROM FamilyMembers
WHERE status = 'mother'
```