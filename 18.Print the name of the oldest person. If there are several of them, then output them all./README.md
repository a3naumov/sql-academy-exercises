# 18

Print the name of the oldest person. 
If there are several of them, then output them all.

Fields in the resulting table: **member_name**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT
    member_name
FROM
    FamilyMembers
WHERE birthday = (
    SELECT MIN(birthday)
    FROM FamilyMembers
)
```