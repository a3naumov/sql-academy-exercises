# 30

Output the load (number of passengers) of each trip.  
Output the result in sorted form in descending order of load.

Fields in the resulting table: **trip count**

Scheme:  
![air_travels.png](..%2Fschemes%2Fair_travels.png)

Solution:  
```sql
SELECT
    trip,
    COUNT(passenger) count
FROM Pass_in_trip
GROUP BY trip
ORDER BY count DESC
```