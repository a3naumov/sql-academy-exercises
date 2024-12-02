SELECT DISTINCT status
FROM FamilyMembers fm
INNER JOIN Payments p
    ON p.family_member = fm.member_id
WHERE p.good = (
    SELECT good_id
    FROM Goods
    Where good_name = 'potato'
)