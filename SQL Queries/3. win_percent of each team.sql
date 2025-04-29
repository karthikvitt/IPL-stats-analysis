USE cricket ;
SELECT * FROM matches;

/* win_percent of each team */
SELECT team, SUM(wins) AS wins, SUM(total_matches) AS total_matches,
ROUND((SUM(wins)*100)/SUM(total_matches),2) AS win_perc
FROM ( 
    SELECT team, SUM(total_matches) AS total_matches, SUM(wins) AS wins
    FROM (
        SELECT team1 AS team, COUNT(*) AS total_matches, 0 AS wins
        FROM matches
        GROUP BY team1

        UNION ALL

        SELECT team2 AS team, COUNT(*) AS total_matches, 0 AS wins
        FROM matches
        GROUP BY team2
    ) AS combined_matches
    GROUP BY team

    UNION ALL

    SELECT winner AS team, 0 AS total_matches, COUNT(*) AS wins
    FROM matches
    GROUP BY winner
) AS final_combined
GROUP BY team;