# 29

Print the names of passengers who flew to Moscow on TU-134

Fields in the resulting table: **name**

Scheme:  
![air_travels.png](..%2Fschemes%2Fair_travels.png)

Solution:  
```sql
SELECT DISTINCT name
FROM Passenger
WHERE id IN (
    SELECT pt.passenger
    FROM Pass_in_trip pt
    INNER JOIN Trip t
        ON t.id = pt.trip
    WHERE
        town_to = 'Moscow'
        AND plane = 'TU-134'
)
```