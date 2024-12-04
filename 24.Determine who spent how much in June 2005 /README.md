# 24

Determine who spent how much in June 2005

Fields in the resulting table: **member_name costs**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT 
    member_name,
    SUM(amount * unit_price) as costs
FROM FamilyMembers fm
INNER JOIN Payments p
    ON p.family_member = fm.member_id
WHERE
    YEAR(p.date) = '2005'
    AND MONTH(p.date) = '6'
GROUP by member_name
```