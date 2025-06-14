SELECT
job_postings.job_posted_date,
job_postings.job_health_insurance,
companies.name
FROM job_postings_fact AS job_postings
LEFT JOIN company_dim AS companies
ON job_postings.company_id = companies.company_id
WHERE 
job_postings.job_health_insurance IS TRUE
    AND EXTRACT(YEAR FROM job_postings.job_posted_date) = 2023
    AND EXTRACT(QUARTER FROM job_postings.job_posted_date) = 2
ORDER BY job_postings.job_posted_date DESC
LIMIT 800;




