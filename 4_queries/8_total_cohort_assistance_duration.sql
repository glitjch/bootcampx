SELECT cohorts.name, SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
FROM assistance_requests
JOIN students
ON student_id = students.id
JOIN cohorts
ON cohort_id = cohorts.id
GROUP BY cohorts.id
ORDER BY total_duration;