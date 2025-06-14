CREATE TABLE january_jobs AS 
	SELECT *
	FROM job_postings_fact
	WHERE
		EXTRACT(MONTH FROM job_posted_date) = 1 AND
		EXTRACT(YEAR FROM job_posted_date) = 2023;
		

CREATE TABLE february_jobs AS
	SELECT *
	FROM job_postings_fact
	WHERE
		EXTRACT(MONTH FROM job_posted_date) = 2 AND
		EXTRACT(YEAR FROM job_posted_date) = 2023;
		

CREATE TABLE march_jobs AS
	SELECT *
	FROM job_postings_fact
	WHERE
		EXTRACT(MONTH FROM job_posted_date) = 3 AND
		EXTRACT(YEAR FROM job_posted_date) = 2023;



SELECT 
job_title_short,
company_id,
job_location
FROM january_jobs

UNION

SELECT
job_title_short,
company_id,
job_location
FROM february_jobs

/*SELECT
job_title_short,
company_id,
job_location
FROM march_jobs;*/




/*CREATE TABLE job_posting_Q1 AS 
	SELECT *
	FROM job_postings_fact
	WHERE
		EXTRACT(QUARTER FROM job_posted_date) = 1 AND
		EXTRACT(YEAR FROM job_posted_date) = 2023;





DROP TABLE job_posting_Q1;*/


WITH job_posting_Q1 AS
(	
   SELECT 
	job_postings.job_id,
	skills_dim.skill_id,
	job_postings.job_title_short,
	skills_dim.skills AS skill_name,
	job_postings.job_posted_date

	FROM job_postings_fact job_postings
	JOIN skills_job_dim ON job_postings.job_id = skills_job_dim.job_id
	JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
	WHERE
		salary_year_avg > 70000
)

SELECT 
job_id,
skill_id,
skill_name,
job_posted_date
FROM job_posting_Q1

UNION

SELECT
job_id,
company_id,
job_location
FROM february_jobs

UNION

SELECT
job_id,
company_id,
job_location
FROM march_jobs;


--chatGPT

WITH q1_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(QUARTER FROM job_posted_date) = 1
      AND salary_year_avg > 70000
)
SELECT
    q1.job_id,
    sd.skill_id,
    sd.skills AS skill_name,
    q1.job_posted_date
FROM
    q1_jobs q1
JOIN
    skills_job_dim sjd ON q1.job_id = sjd.job_id
JOIN
    skills_dim sd ON sjd.skill_id = sd.skill_id

UNION ALL

SELECT
    q1.job_id,
    NULL AS skill_id,
    NULL AS skill_name,
    q1.job_posted_date
FROM
    q1_jobs q1
LEFT JOIN
    skills_job_dim sjd ON q1.job_id = sjd.job_id
WHERE
    sjd.job_id IS NULL;



