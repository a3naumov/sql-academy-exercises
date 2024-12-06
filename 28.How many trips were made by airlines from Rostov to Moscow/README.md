# 28

How many trips were made by airlines from Rostov to Moscow ?

Fields in the resulting table: **count**

Scheme:  
![air_travels.png](..%2Fschemes%2Fair_travels.png)

Solution:  
```sql
SELECT COUNT(*) count
FROM Trip
WHERE 
    town_from = 'Rostov'
    AND town_to = 'Moscow'
```