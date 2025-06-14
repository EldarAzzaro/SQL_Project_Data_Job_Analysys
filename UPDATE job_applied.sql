UPDATE job_applied
SET contact = 'john.doe@example.com'
WHERE job_id = 1;
UPDATE job_applied
SET contact = 'jane.doe@example.com'
WHERE job_id = 2;
UPDATE job_applied
SET contact = 'jane.smith@example.com'
WHERE job_id = 3;
UPDATE job_applied
SET contact = 'john.smith@example.com'
WHERE job_id = 4;
UPDATE job_applied
SET contact = 'alex.doe@example.com'
WHERE job_id = 5;



ALTER TABLE job_applied
RENAME COLUMN contact TO contact_email;

ALTER TABLE job_applied
ALTER COLUMN contact_email TYPE TEXT;

SELECT * FROM job_applied;