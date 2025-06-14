INSERT INTO job_applied (
    job_id,
    application_sent_date,
    custom_resume,
    resume_file_name,
    cover_letter_sent,
    cover_letter_file_name,
    status
)
VALUES
    (1, '2023-10-01', TRUE,  'resume_john_doe.pdf',  FALSE, NULL, 'applied'),
    (2, '2023-10-02', FALSE, NULL,                  TRUE,  'cover_letter_jane_doe.pdf', 'applied'),
    (3, '2023-10-03', TRUE,  'resume_jane_smith.pdf', FALSE, NULL, 'applied'),
    (4, '2023-10-04', FALSE, NULL,                  TRUE,  'cover_letter_john_smith.pdf', 'applied'),
    (5, '2023-10-05', TRUE, 'resume_alex_doe.pdf', TRUE, 'cover_letter_alex_doe.pdf', 'applied');
	
SELECT * FROM job_applied;
