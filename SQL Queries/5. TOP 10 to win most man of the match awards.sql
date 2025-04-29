/* TOP 10 to win most man of the match awards */
SELECT player_of_match,COUNT(player_of_match) AS no_of_times FROM matches
GROUP BY player_of_match
ORDER BY no_of_times DESC
LIMIT 10;