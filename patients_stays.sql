CREATE TABLE patients_stays (
    patient_id VARCHAR(30) PRIMARY KEY,
    name VARCHAR(150),
    age INTEGER,
    arrival_date DATE,
    departure_date DATE,
    service VARCHAR(100),
    satisfaction INTEGER
);

SELECT *
FROM patients_stays
LIMIT 10;

SELECT COUNT(*) AS total_patients
FROM patients_stays;

SELECT
    MIN(satisfaction) AS min_satisfaction,
    MAX(satisfaction) AS max_satisfaction,
    ROUND(AVG(satisfaction), 2) AS avg_satisfaction
FROM patients_stays;

--Q1. What is the average patient satisfaction?
SELECT
    ROUND(AVG(satisfaction), 2) AS avg_satisfaction
FROM patients_stays;

--Q2. Which services have the highest satisfaction?
SELECT
    service,
    COUNT(*) AS patient_count,
    ROUND(AVG(satisfaction), 2) AS avg_satisfaction
FROM patients_stays
GROUP BY service
ORDER BY avg_satisfaction DESC;

--Q3. Which services have the lowest satisfaction?
SELECT
    service,
    COUNT(*) AS patient_count,
    ROUND(AVG(satisfaction), 2) AS avg_satisfaction
FROM patients_stays
GROUP BY service
ORDER BY avg_satisfaction ASC;

--Q4. How many patients use each service?
SELECT
    service,
    COUNT(*) AS patient_count
FROM patients_stays
GROUP BY service
ORDER BY patient_count DESC;

--Q5. What is the average length of stay?
SELECT
    ROUND(AVG(departure_date - arrival_date), 2)
        AS avg_length_of_stay
FROM patients_stays;

--Q6. Which services have the longest stays?
SELECT
    service,
    COUNT(*) AS patient_count,
    ROUND(AVG(departure_date - arrival_date), 2)
        AS avg_length_of_stay
FROM patients_stays
GROUP BY service
ORDER BY avg_length_of_stay DESC;

--Q7. What is the satisfaction distribution?
SELECT
    satisfaction,
    COUNT(*) AS patient_count,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2
    ) AS percentage
FROM patients_stays
GROUP BY satisfaction
ORDER BY satisfaction;


--Q8.  Which services have the most dissatisfied partients?
SELECT
    service,
    COUNT(*) AS dissatisfied_patients
FROM patients_stays
WHERE satisfaction <= 2
GROUP BY service
ORDER BY dissatisfied_patients DESC;

--A9. How many patients arrive each month?
SELECT
     DATE_TRUNC('month', arrival_date)::DATE AS month,
	 COUNT(*) AS patient_count
FROM patients_stays
GROUP BY month 
ORDER BY month;

--Q10. How does satisfication change month by month?
SELECT
    DATE_TRUNC('month', arrival_date)::DATE AS month,
    ROUND(AVG(satisfaction), 2) AS avg_satisfaction
FROM patients_stays
GROUP BY month
ORDER BY month;

--Q11. Which hospital services have the highest patient volume, and what is the average patient satisfaction for each service?
SELECT
    service,
    COUNT(*) AS patient_count,
    ROUND(AVG(satisfaction), 2) AS avg_satisfaction
FROM patients_stays
GROUP BY service
ORDER BY patient_count DESC;