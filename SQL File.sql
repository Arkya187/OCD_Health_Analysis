use arkya_health_analytics;


-- 1.Collecting count of patients based on gender
-- 2.Collecting avg of obsession Score based on Gender


select 
gender,
count(`patient id`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as average
from ocd_patient_dataset
group by 1
order by 2;


-- 1.Collecting count of patients based on Ethnicity
-- 2.Collecting avg of obsession Score based on Ethnicity


select 
Ethnicity,
count(`patient id`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as average
from ocd_patient_dataset
group by 1
order by 2;


-- 1.In given dataset Diagnosis Date is given as string
-- 2.Converting the colum to date type


alter table ocd_patient_dataset
modify `OCD Diagnosis Date` date;


-- 1.Collecting count of patients based on Specific Date
-- 2.Collecting avg of obsession Score based on Specific Date


select 
date_format(`OCD Diagnosis Date`, '%Y-%m-01 00:00:00') as month,
count(`Patient ID`)  as patient_count
from ocd_patient_dataset
group by 1
order by 1;


-- 1.Collecting count of patients based on Obsession type
-- 2.Collecting avg of obsession Score based on Obsession type


select
`Obsession Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from ocd_patient_dataset
group by 1
order by 2;


-- 1.Collecting count of patients based on Compulsion Type
-- 2.Collecting avg of obsession Score based on Compulsion Type


select
`Compulsion Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from ocd_patient_dataset
group by 1
order by 2;


