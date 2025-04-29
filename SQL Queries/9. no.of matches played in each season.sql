/* no.of matches played in each season */
SELECT season,COUNT(id) AS no_of_matches FROM matches 
GROUP BY season;