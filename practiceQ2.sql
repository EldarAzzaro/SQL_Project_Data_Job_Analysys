SELECT
EXTRACT (YEAR FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') AS job_posted_year,
EXTRACT (MONTH FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') AS job_posted_month,
COUNT (job_id) AS job_posted_count
FROM job_postings_fact
WHERE
EXTRACT (YEAR FROM job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST') = 2023 AND
job_title_short = 'Data Analyst'
GROUP BY job_posted_month, job_posted_year
ORDER BY job_posted_month DESC;

