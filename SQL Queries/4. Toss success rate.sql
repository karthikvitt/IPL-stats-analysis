/* Toss success rate */
SELECT 
    toss_decision, 
    COUNT(*) AS decision_count, 
    SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) AS toss_impact,
    ROUND((SUM(CASE WHEN toss_winner = winner THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS success_rate
FROM matches
GROUP BY toss_decision;