SELECT
	skills,
   ROUND(AVG(salary_year_avg),2) AS avg_salary
FROM job_postings_fact
 JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
 JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
 	job_title_short = 'Data Analyst' 
	AND salary_year_avg IS NOT NULL 
	AND job_location = 'Anywhere'
GROUP BY
	skills
ORDER BY
	avg_salary DESC
LIMIT 10;




/*• High Demand for Big Data & ML Skills: Top salaries are commanded by analysts skilled in big data technologies (PySpark, Couchbase), machine learning tools (DataRobot, Jupyter), and Python libraries (Pandas, NumPy), reflecting the industry's high valuation of data processing and predictive modeling capabilities.
Software Development & Deployment Proficiency: Knowledge in development and deployment tools (GitLab, Kubernetes, Airflow) indicates a lucrative crossover between data analysis and engineering, with a premium on skills that facilitate automation and efficient data pipeline management.
• Cloud Computing Expertise: Familiarity with cloud and data engineering tools (Elasticsearch, Databricks, GCP) underscores the growing importance of cloud-based analytics environments, suggesting that cloud proficiency significantly boosts earning potential in data analytics.
*/

/*
[
  {
    "skills": "svn",
    "avg_salary": "400000.00"
  },
  {
    "skills": "solidity",
    "avg_salary": "179000.00"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515.00"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155485.50"
  },
  {
    "skills": "golang",
    "avg_salary": "155000.00"
  },
  {
    "skills": "mxnet",
    "avg_salary": "149000.00"
  },
  {
    "skills": "dplyr",
    "avg_salary": "147633.33"
  },
  {
    "skills": "vmware",
    "avg_salary": "147500.00"
  },
  {
    "skills": "terraform",
    "avg_salary": "146733.83"
  },
  {
    "skills": "twilio",
    "avg_salary": "138500.00"
  },
  {
    "skills": "gitlab",
    "avg_salary": "134126.00"
  },
  {
    "skills": "kafka",
    "avg_salary": "129999.16"
  },
  {
    "skills": "puppet",
    "avg_salary": "129820.00"
  },
  {
    "skills": "keras",
    "avg_salary": "127013.33"
  },
  {
    "skills": "pytorch",
    "avg_salary": "125226.20"
  },
  {
    "skills": "perl",
    "avg_salary": "124685.75"
  },
  {
    "skills": "ansible",
    "avg_salary": "124370.00"
  },
  {
    "skills": "hugging face",
    "avg_salary": "123950.00"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120646.83"
  },
  {
    "skills": "cassandra",
    "avg_salary": "118406.68"
  },
  {
    "skills": "notion",
    "avg_salary": "118091.67"
  },
  {
    "skills": "atlassian",
    "avg_salary": "117965.60"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "116711.75"
  },
  {
    "skills": "airflow",
    "avg_salary": "116387.26"
  },
  {
    "skills": "scala",
    "avg_salary": "115479.53"
  },
  {
    "skills": "linux",
    "avg_salary": "114883.20"
  },
  {
    "skills": "confluence",
    "avg_salary": "114153.12"
  },
  {
    "skills": "pyspark",
    "avg_salary": "114057.87"
  },
  {
    "skills": "mongodb",
    "avg_salary": "113607.71"
  },
  {
    "skills": "aurora",
    "avg_salary": "113393.90"
  },
  {
    "skills": "cordova",
    "avg_salary": "113269.50"
  },
  {
    "skills": "gcp",
    "avg_salary": "113065.48"
  },
  {
    "skills": "spark",
    "avg_salary": "113001.94"
  },
  {
    "skills": "splunk",
    "avg_salary": "112927.60"
  },
  {
    "skills": "databricks",
    "avg_salary": "112880.74"
  },
  {
    "skills": "unify",
    "avg_salary": "112317.44"
  },
  {
    "skills": "git",
    "avg_salary": "112249.64"
  },
  {
    "skills": "dynamodb",
    "avg_salary": "111840.00"
  },
  {
    "skills": "snowflake",
    "avg_salary": "111577.72"
  },
  {
    "skills": "shell",
    "avg_salary": "111496.45"
  },
  {
    "skills": "electron",
    "avg_salary": "111175.00"
  },
  {
    "skills": "unix",
    "avg_salary": "111123.32"
  },
  {
    "skills": "hadoop",
    "avg_salary": "110888.27"
  },
  {
    "skills": "pandas",
    "avg_salary": "110767.07"
  },
  {
    "skills": "node.js",
    "avg_salary": "110230.38"
  },
  {
    "skills": "phoenix",
    "avg_salary": "109259.09"
  },
  {
    "skills": "php",
    "avg_salary": "109051.51"
  },
  {
    "skills": "neo4j",
    "avg_salary": "108646.42"
  },
  {
    "skills": "nosql",
    "avg_salary": "108331.04"
  },
  {
    "skills": "express",
    "avg_salary": "108221.35"
  }
]
*/