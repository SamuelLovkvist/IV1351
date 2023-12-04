SELECT
    TO_CHAR(l.time_slot, 'Mon') AS Month,
    COUNT(*) AS Total,
    SUM(CASE WHEN il.lesson_id IS NOT NULL THEN 1 ELSE 0 END) AS Individual,
    SUM(CASE WHEN gl.lesson_id IS NOT NULL THEN 1 ELSE 0 END) AS Group,
    SUM(CASE WHEN e.lesson_id IS NOT NULL THEN 1 ELSE 0 END) AS Ensemble
FROM
    lesson l
LEFT JOIN individual_lesson il ON l.lesson_id = il.lesson_id
LEFT JOIN group_lesson gl ON l.lesson_id = gl.lesson_id
LEFT JOIN ensemble e ON l.lesson_id = e.lesson_id
WHERE
    EXTRACT(YEAR FROM l.time_slot) = 2023
GROUP BY
    EXTRACT(MONTH FROM l.time_slot),
    TO_CHAR(l.time_slot, 'Mon')
ORDER BY
    EXTRACT(MONTH FROM l.time_slot);
