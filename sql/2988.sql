SELECT
    t.name AS name,
    COUNT(m.id) AS matches,
    SUM(CASE WHEN m.team_1_goals > m.team_2_goals AND m.team_1 = t.id THEN 1 ELSE 0 END) +
    SUM(CASE WHEN m.team_1_goals < m.team_2_goals AND m.team_2 = t.id THEN 1 ELSE 0 END) AS victories,
    SUM(CASE WHEN m.team_1_goals < m.team_2_goals AND m.team_1 = t.id THEN 1 ELSE 0 END) +
    SUM(CASE WHEN m.team_1_goals > m.team_2_goals AND m.team_2 = t.id THEN 1 ELSE 0 END) AS defeats,
    SUM(CASE WHEN m.team_1_goals = m.team_2_goals AND (m.team_1 = t.id OR m.team_2 = t.id) THEN 1 ELSE 0 END) AS draws,
    SUM((CASE WHEN m.team_1_goals > m.team_2_goals AND m.team_1 = t.id THEN 1 ELSE 0 END +
         CASE WHEN m.team_1_goals < m.team_2_goals AND m.team_2 = t.id THEN 1 ELSE 0 END) * 3 +
        CASE WHEN m.team_1_goals = m.team_2_goals AND (m.team_1 = t.id OR m.team_2 = t.id) THEN 1 ELSE 0 END) AS score
FROM
    teams t
LEFT JOIN
    matches m ON t.id = m.team_1 OR t.id = m.team_2
GROUP BY
    t.name
ORDER BY
    score DESC;