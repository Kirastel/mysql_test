SELECT client_number, 
        SUM(outcome = "win") as Побед, 
        SUM(outcome = "lose") AS Поражений 
FROM bid
JOIN event_value
ON bid.play_id = event_value.play_id
GROUP BY client_number; 



SELECT least(home_team, away_team) AS A, 
        greatest(home_team, away_team) AS B, 
        COUNT(*)
FROM event_entity
GROUP BY A, B
HAVING COUNT(*) >= 1
ORDER BY A, B; 