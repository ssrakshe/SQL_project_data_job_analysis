select skills,
       ROUND(avg(salary_year_avg),2) as Average_Salary
 from  job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id=skills_dim.skill_id
where job_titLe_short='Data Analyst' and salary_year_avg is not null
group by skills 
order by Average_Salary
LIMIT 5