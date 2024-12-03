# 19

Determine which family member bought potatoes (potato)

Fields in the resulting table: **status**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT DISTINCT status
FROM FamilyMembers fm
INNER JOIN Payments p
    ON p.family_member = fm.member_id
WHERE p.good = (
    SELECT good_id
    FROM Goods
    Where good_name = 'potato'
)
```