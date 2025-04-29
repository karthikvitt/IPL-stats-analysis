/* total toss wins of each team */
SELECT COUNT(toss_winner) AS toss_wins,winner FROM matches 
GROUP BY winner
ORDER BY toss_wins DESC;