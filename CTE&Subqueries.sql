
/*SELECT
    sd.skills,
    sjd.skill_id,
    skill_count
FROM (
    SELECT
        skill_id,
        COUNT(*) AS skill_count
    FROM skills_job_dim
    GROUP BY skill_id
    ORDER BY skill_count DESC
    LIMIT 5
) AS sjd
JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
ORDER BY skill_count DESC;*/

/*SELECT
        skill_id,
        COUNT(*) AS skill_count
    FROM skills_job_dim
    GROUP BY skill_id
    ORDER BY skill_count DESC
    LIMIT 5*/


/*SELECT
cd.name AS company_name,
company_info.job_id,
size_category
FROM (

SELECT
job_id,
company_id,

CASE
	 WHEN job_id < 10 THEN 'Small'
	 WHEN job_id BETWEEN 10 AND 50 THEN 'Medium'
	 ELSE 'Large'
	 END AS size_category

FROM job_postings_fact


) AS company_info

JOIN company_dim cd ON company_info.company_id = cd.company_id; */



SELECT
    cd.name AS company_name,
    company_info.job_count,
    company_info.size_category
FROM (
    SELECT
        company_id,
        COUNT(*) AS job_count,
        CASE
            WHEN COUNT(*) < 10 THEN 'Small'
            WHEN COUNT(*) BETWEEN 10 AND 50 THEN 'Medium'
            ELSE 'Large'
        END AS size_category
    FROM job_postings_fact
    GROUP BY company_id
) AS company_info
JOIN company_dim cd ON company_info.company_id = cd.company_id;