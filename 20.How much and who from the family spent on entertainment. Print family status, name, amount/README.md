# 20

How much and who from the family spent on entertainment. 
Print family status, name, amount

Fields in the resulting table: **status member_name costs**

Scheme:  
![family.png](..%2Fschemes%2Ffamily.png)

Solution:  
```sql
SELECT
    fm.status,
    fm.member_name,
    SUM(amount * unit_price) as costs
FROM
    FamilyMembers fm
INNER JOIN
    Payments p
    ON p.family_member = fm.member_id
WHERE
    p.good IN (
        SELECT g.good_id
        FROM Goods g
        INNER JOIN GoodTypes gt
            ON gt.good_type_id = g.type
        WHERE gt.good_type_name = 'entertainment'
    )
GROUP BY
    fm.status,
    fm.member_name
```