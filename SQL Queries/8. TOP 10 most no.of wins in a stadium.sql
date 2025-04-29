/* TOP 10 most no.of wins in a stadium */   
SELECT venue,COUNT(winner) AS most_wins FROM matches
GROUP BY venue
LIMIT 10;