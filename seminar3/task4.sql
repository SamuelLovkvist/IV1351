SELECT
    TO_CHAR(l.time_slot, 'Dy') AS Day,
    e.genre AS Genre,
    CASE
        WHEN e.max_students - e.num_of_students <= 0 THEN 'No Seats'
        WHEN e.max_students - e.num_of_students <= 2 THEN '1 or 2 Seats'
        ELSE 'Many Seats'
    END AS "No of Free Seats"
FROM
    ensemble e
JOIN
    lesson l ON e.lesson_id = l.lesson_id
WHERE
    EXTRACT(WEEK FROM l.time_slot) = EXTRACT(WEEK FROM CURRENT_DATE) + 1
GROUP BY
    TO_CHAR(l.time_slot, 'Dy'),
    e.genre,
    e.max_students,
    e.num_of_students,
    EXTRACT(DAY FROM l.time_slot)
ORDER BY
    EXTRACT(DAY FROM l.time_slot),
    e.genre;
