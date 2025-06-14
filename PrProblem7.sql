--my solution to Problem 7


/*WITH skill_count AS (
	 SELECT
		  sd.skill_id,
		  COUNT(sd.skill_id) AS skill_count
	 FROM
		  skills_dim sd
	 JOIN
		  skills_job_dim sjd ON sd.skill_id = sjd.skill_id
	 GROUP BY
		  sd.skill_id
)

SELECT

skill_count.skill_id,
sd.skills AS skill_name,
skill_count.skill_count

FROM job_postings_fact jpf

JOIN skills_job_dim sjd ON jpf.job_id = sjd.job_id
JOIN skills_dim sd ON sjd.skill_id = sd.skill_id
JOIN skill_count ON sd.skill_id = skill_count.skill_id

WHERE jpf.job_work_from_home = TRUE

GROUP BY

sd.skills,
skill_count.skill_id,
skill_count.skill_count

ORDER BY
skill_count.skill_id ASC */



--chatGPT

WITH remote_skill_counts AS (
    SELECT
        sd.skill_id,
        sd.skills AS skill_name,
        COUNT(*) AS remote_job_count
    FROM
        job_postings_fact jpf
    JOIN
        skills_job_dim sjd ON jpf.job_id = sjd.job_id
    JOIN
        skills_dim sd ON sjd.skill_id = sd.skill_id
    WHERE
        jpf.job_work_from_home = TRUE
    GROUP BY
        sd.skill_id,
        sd.skills
)
SELECT
    skill_id,
    skill_name,
    remote_job_count
FROM
    remote_skill_counts
ORDER BY
    remote_job_count DESC
LIMIT 5;


-- Luke Solution

