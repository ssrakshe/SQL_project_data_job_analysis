select  job_titLe_short,
        job_location,
        job_schedule_type,
        job_posted_date,
        salary_year_avg,
        company_dim.name

from job_postings_fact LEFT JOIN company_dim ON job_postings_fact.company_id=company_dim.company_id
where job_title_short='Data Analyst' and job_location='Anywhere' and salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;
