# 31

Print all family members with the last name Quincey.

Fields in the resulting table: *

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT *
FROM FamilyMembers
WHERE member_name LIKE '%Quincey'
```