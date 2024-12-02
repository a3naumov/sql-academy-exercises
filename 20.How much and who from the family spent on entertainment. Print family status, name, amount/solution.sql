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