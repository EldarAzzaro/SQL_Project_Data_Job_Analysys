SELECT
COUNT(job_id) AS number_of_jobs,

	-- Categorize the salary into Low, Medium, or High

CASE
	 WHEN salary_year_avg < 93875 THEN 'Low Salary'
	 WHEN salary_year_avg BETWEEN 93875 AND 187500 THEN 'Medium Salary'
	 ELSE 'High Salary'
	 END AS salary_category

FROM job_postings_fact

WHERE job_title_short = 'Data Analyst' AND salary_year_avg IS NOT NULL

GROUP BY
salary_category

ORDER BY
salary_category ASC