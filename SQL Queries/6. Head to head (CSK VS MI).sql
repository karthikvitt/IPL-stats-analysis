/* Head to head (CSK VS MI) */
SELECT winner AS team,COUNT(winner) AS most_times_win 
FROM matches 
WHERE (team1 = 'Chennai Super Kings' AND team2 = 'Mumbai Indians') 
   OR (team1 = 'Mumbai Indians' AND team2 = 'Chennai Super Kings') 
   GROUP BY winner
   ORDER BY most_times_win DESC;