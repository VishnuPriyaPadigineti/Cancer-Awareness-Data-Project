/* ================================================================
   Project: Cancer Awareness Program – Cancer Mortality Analytics
   Author: Vishnu Priya Padigineti
   Description: SQL queries executed in Google BigQuery
   Objective: Analyze cancer deaths by gender, race, and city 
              (Data Source: Big Cities Health Inventory Data Platform)
================================================================ */

/* -----------------------------------------------------------------
   Q1. View all records (preview of dataset)
----------------------------------------------------------------- */
SELECT *
FROM `neon-effect-443806-a8.BigCitiesHealthallcancerdeaths.Cancerpatients`
LIMIT 1000;


/* -----------------------------------------------------------------
   Q2. Total Female Deaths
   Purpose: Count total number of deaths among female patients
----------------------------------------------------------------- */
SELECT COUNT(*) AS total_female_deaths
FROM `neon-effect-443806-a8.BigCitiesHealthallcancerdeaths.Cancerpatients`
WHERE gender = 'Female';


/* -----------------------------------------------------------------
   Q3. Total Male Deaths
   Purpose: Count total number of deaths among male patients
----------------------------------------------------------------- */
SELECT COUNT(*) AS total_male_deaths
FROM `neon-effect-443806-a8.BigCitiesHealthallcancerdeaths.Cancerpatients`
WHERE gender = 'Male';


/* -----------------------------------------------------------------
   Q4. Average Death Rate by City and Race
   Purpose: Compare average cancer death rate grouped by city and race
----------------------------------------------------------------- */
SELECT 
  geo_label_citystate AS city,
  race,
  AVG(value) AS avg_cancer_death_rate
FROM `neon-effect-443806-a8.BigCitiesHealthallcancerdeaths.Cancerpatients`
GROUP BY city, race
ORDER BY avg_cancer_death_rate DESC;


/* -----------------------------------------------------------------
   Q5. Cancer Death Rate vs. Year
   Purpose: Analyze yearly cancer death rate trend
----------------------------------------------------------------- */
SELECT  
  year1,
  AVG(value) AS avg_cancer_death_rate
FROM `neon-effect-443806-a8.BigCitiesHealthallcancerdeaths.Cancerpatients`
GROUP BY year1
ORDER BY year1;

-- 🔹 Insight:
-- Highest average cancer death rate: Year 2010 (~173)
-- Lowest average cancer death rate: Year 2022 (~148)


/* -----------------------------------------------------------------
   Q6. Average Cancer Deaths by City
   Purpose: Find cities with the highest and lowest average deaths
----------------------------------------------------------------- */
SELECT 
  geo_label_citystate AS city,
  AVG(value) AS avg_cancer_death_rate
FROM `neon-effect-443806-a8.BigCitiesHealthallcancerdeaths.Cancerpatients`
GROUP BY city
ORDER BY avg_cancer_death_rate DESC;

-- 🔹 Insight:
-- Highest: Louisville, KY (~194)
-- Lowest: Phoenix, AZ (~128)


/* -----------------------------------------------------------------
   Q7. Average Cancer Deaths of Male and Female by Year
   Purpose: Compare gender-based cancer deaths per year
----------------------------------------------------------------- */
SELECT 
  year1,
  gender,
  COUNT(*) AS total_deaths
FROM `neon-effect-443806-a8.BigCitiesHealthallcancerdeaths.Cancerpatients`
WHERE gender IN ('Female', 'Male')
GROUP BY year1, gender
ORDER BY year1, gender;

-- 🔹 Insight:
-- Highest female deaths: 159 (Year 2016)
-- Highest male deaths: 158 (Year 2017)


/* -----------------------------------------------------------------
   Q8. Race-wise Cancer Death Distribution
   Purpose: Identify racial groups with the highest mortality
----------------------------------------------------------------- */
SELECT 
  race,
  AVG(value) AS avg_death_rate
FROM `neon-effect-443806-a8.BigCitiesHealthallcancerdeaths.Cancerpatients`
GROUP BY race
ORDER BY avg_death_rate DESC;

-- 🔹 Insight:
-- Black population records the highest mortality rate,
-- followed by White and Hispanic populations.


/* -----------------------------------------------------------------
   Q9. Top 10 Cities with Highest Cancer Death Rate
----------------------------------------------------------------- */
SELECT 
  geo_label_citystate AS city,
  AVG(value) AS avg_cancer_death_rate
FROM `neon-effect-443806-a8.BigCitiesHealthallcancerdeaths.Cancerpatients`
GROUP BY city
ORDER BY avg_cancer_death_rate DESC
LIMIT 10;

-- 🔹 Insight:
-- Louisville, KY tops the list among 35 U.S. cities.


/* -----------------------------------------------------------------
   End of SQL Script
----------------------------------------------------------------- */
