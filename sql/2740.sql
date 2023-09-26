SELECT 'Podium: ' || team AS name
FROM (
    SELECT team
    FROM LEAGUE
    ORDER BY position
    LIMIT 3
) AS podium
UNION ALL
SELECT 'Demoted: ' || team AS name
FROM (
    SELECT team
    FROM LEAGUE
    OFFSET (SELECT COUNT(*) FROM LEAGUE) - 2 
    LIMIT 2
) AS demoted;