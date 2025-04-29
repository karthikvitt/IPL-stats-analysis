/* Head to head (CSK VS RCB) */
 SELECT winner AS team,COUNT(winner) AS most_times_win 
FROM matches 
WHERE (team1 = 'Chennai Super Kings' AND team2 = 'Royal Challengers Bangalore') 
   OR (team1 = 'Royal Challengers Bangalore' AND team2 = 'Chennai Super Kings') 
   GROUP BY winner
   ORDER BY most_times_win DESC;