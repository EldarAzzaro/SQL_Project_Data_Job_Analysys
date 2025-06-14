SELECT 
job_schedule_type,
AVG (salary_year_avg) AS avg_salary_year,
AVG (salary_hour_avg) AS avg_salary_hour
FROM job_postings_fact
WHERE 
  job_posted_date :: DATE > '2023-06-01'  
  /*AND salary_hour_avg IS NOT NULL*/
 AND salary_year_avg IS NOT NULL
 AND 
GROUP BY
    job_schedule_type


