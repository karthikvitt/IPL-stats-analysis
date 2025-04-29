USE cricket ;
SELECT * FROM matches;

/* IPL winners for each year */
SELECT m.winner,m.season AS season FROM matches m
JOIN(
SELECT season,max(id) AS final_match_id FROM matches m
GROUP BY season) AS finals
ON m.season=finals.season AND m.id=finals.final_match_id;