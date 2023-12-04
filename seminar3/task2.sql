SELECT
    COALESCE(num_siblings, 0) AS num_siblings,
    COUNT(*) AS num_students
FROM (
    SELECT student_id, COUNT(*) AS num_siblings
    FROM (
        SELECT student1_id AS student_id FROM sibling
        UNION ALL
        SELECT student2_id AS student_id FROM sibling
    )
    GROUP BY student_id
) student_siblings
RIGHT JOIN student ON student_siblings.student_id = student.student_id
GROUP BY num_siblings
ORDER BY num_siblings;
