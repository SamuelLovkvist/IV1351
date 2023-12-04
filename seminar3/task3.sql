SELECT
    i.instructor_id,
    pe.first_name,
    pe.last_name,
    COUNT(l.lesson_id) AS lessons_given
FROM
    instructor i
JOIN
    person pe ON i.person_id = pe.person_id
JOIN
    lesson l ON i.instructor_id = l.instructor_id
WHERE
    EXTRACT(MONTH FROM l.time_slot) = EXTRACT(MONTH FROM CURRENT_DATE)
    AND EXTRACT(YEAR FROM l.time_slot) = EXTRACT(YEAR FROM CURRENT_DATE)
GROUP BY
    i.instructor_id,
    pe.first_name,
    pe.last_name
ORDER BY
    lessons_given;
