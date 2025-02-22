select skills,
       count(skills_job_dim.skill_id) as demand_count
 from  job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id=skills_dim.skill_id
where job_titLe_short='Data Analyst'
group by skills 
LIMIT 5