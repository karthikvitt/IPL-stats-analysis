USE cricket ;
SELECT * FROM matches;

/*No.of times champions*/
SELECT final_winner, COUNT(final_winner)AS most_wins
FROM (
SELECT m.winner AS final_winner FROM matches m
JOIN(
SELECT max(id) AS final_match_id ,season FROM matches m
GROUP BY season) AS finals
ON m.season=finals.season AND m.id=finals.final_match_id) AS final_matches
GROUP BY final_winner
ORDER BY most_wins DESC;