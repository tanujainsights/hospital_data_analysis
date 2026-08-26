CREATE TABLE hospital_admissions (
    age INTEGER,
    gender VARCHAR(20),
    blood_type VARCHAR(5),
    medical_condition VARCHAR(100),
    date_of_admission DATE,
    hospital VARCHAR(200),
    billing_amount NUMERIC(12,2),
    admission_type VARCHAR(30),
    discharge_date DATE,
    medication VARCHAR(100),
    test_results VARCHAR(50),
    length_of_stay INTEGER
);

SELECT *
FROM hospital_admissions
LIMIT 10;

SELECT COUNT(*) AS total_records
FROM hospital_admissions;

SELECT
    COUNT(*) AS total_records,
    COUNT(age) AS age_present,
    COUNT(gender) AS gender_present,
    COUNT(blood_type) AS blood_type_present,
    COUNT(medical_condition) AS condition_present,
    COUNT(date_of_admission) AS admission_date_present,
    COUNT(hospital) AS hospital_present,
    COUNT(billing_amount) AS billing_present,
    COUNT(admission_type) AS admission_type_present,
    COUNT(discharge_date) AS discharge_date_present,
    COUNT(medication) AS medication_present,
    COUNT(test_results) AS test_results_present,
    COUNT(length_of_stay) AS stay_present
FROM hospital_admissions;

-- ============================================
-- HOSPITAL OPERATIONS ANALYSIS
-- ============================================

-- 1. DATA VALIDATION
SELECT COUNT(*) AS total_records
FROM hospital_admissions;

SELECT *
FROM hospital_admissions
LIMIT 10;

SELECT
    COUNT(*) - COUNT(age) AS missing_age,
    COUNT(*) - COUNT(gender) AS missing_gender,
    COUNT(*) - COUNT(billing_amount) AS missing_billing,
    COUNT(*) - COUNT(length_of_stay) AS missing_length_of_stay
FROM hospital_admissions;

--Q1.  What is the total no.of admissions?
SELECT COUNT(*) AS total_admissions
FROM hospital_admissions;

--Q2. Which medical conditions have the highest no.of admissions?
SELECT
    medical_condition,
    COUNT(*) AS total_admissions
FROM hospital_admissions
GROUP BY medical_condition
ORDER BY total_admissions DESC;

--Q3. Which hospitals have the highest no.of admissions?
SELECT
    hospital,
    COUNT(*) AS total_admissions
FROM hospital_admissions
GROUP BY hospital
ORDER BY total_admissions DESC
LIMIT 10;

---Q4. What is the distribution of distribution types?
SELECT
    admission_type,
    COUNT(*) AS total_admissions,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2
    ) AS admission_percentage
FROM hospital_admissions
GROUP BY admission_type
ORDER BY total_admissions DESC;

---Q5. What is the average patient age?
SELECT
    ROUND(AVG(age), 2) AS average_patient_age
FROM hospital_admissions;

--Q6. Which age groups account for the most admissions?
SELECT
    CASE
        WHEN age < 18 THEN 'Under 18'
        WHEN age BETWEEN 18 AND 30 THEN '18-30'
        WHEN age BETWEEN 31 AND 45 THEN '31-45'
        WHEN age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '61+'
    END AS age_group,
    COUNT(*) AS total_admissions
FROM hospital_admissions
GROUP BY age_group
ORDER BY total_admissions DESC;

--Q7. What is the gender distribution of admissions?
SELECT
    gender,
    COUNT(*) AS total_admissions,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2
    ) AS percentage
FROM hospital_admissions
GROUP BY gender
ORDER BY total_admissions DESC;

--Q8. Which medical conditions have the longest average length of stay?
SELECT
    medical_condition,
    ROUND(AVG(length_of_stay), 2) AS avg_length_of_stay
FROM hospital_admissions
GROUP BY medical_condition
ORDER BY avg_length_of_stay DESC;

--Q9. Which hospitals have the longest average length of stay?
SELECT
    hospital,
    COUNT(*) AS admissions,
    ROUND(AVG(length_of_stay), 2) AS avg_length_of_stay
FROM hospital_admissions
GROUP BY hospital
HAVING COUNT(*) >= 10
ORDER BY avg_length_of_stay DESC
LIMIT 10;

--Q10. Which medical conditions generate the highest revenue?
SELECT
    medical_condition,
    COUNT(*) AS admissions,
    ROUND(SUM(billing_amount), 2) AS total_revenue
FROM hospital_admissions
GROUP BY medical_condition
ORDER BY total_revenue DESC;

--Q11. Which hospitals generate the highest revenue?
SELECT
    hospital,
    COUNT(*) AS admissions,
    ROUND(SUM(billing_amount), 2) AS total_revenue
FROM hospital_admissions
GROUP BY hospital
ORDER BY total_revenue DESC
LIMIT 10;

--Q12. What is the average billing amount by admission type?
SELECT
    admission_type,
    COUNT(*) AS admissions,
    ROUND(AVG(billing_amount), 2) AS average_bill
FROM hospital_admissions
GROUP BY admission_type
ORDER BY average_bill DESC;

--Q13. Which medical conditions have the highest average billing?
SELECT
    medical_condition,
    COUNT(*) AS admissions,
    ROUND(AVG(billing_amount), 2) AS average_bill
FROM hospital_admissions
GROUP BY medical_condition
ORDER BY average_bill DESC;

--Q14.What is total hospital revenue?
SELECT
    ROUND(SUM(billing_amount), 2) AS total_revenue
FROM hospital_admissions;

--Q15. What is the average bill per admission?
SELECT
    ROUND(AVG(billing_amount), 2) AS average_bill
FROM hospital_admissions;

--Q16. Which medications are prescribed most frequently?
SELECT
    medication,
    COUNT(*) AS prescription_count
FROM hospital_admissions
GROUP BY medication
ORDER BY prescription_count DESC;

--Q17. What are the test-result distributions?
SELECT
    test_results,
    COUNT(*) AS patients,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2
    ) AS percentage
FROM hospital_admissions
GROUP BY test_results
ORDER BY patients DESC;

--Q18. How do admissions change month by month?
SELECT
    DATE_TRUNC('month', date_of_admission)::DATE AS admission_month,
    COUNT(*) AS total_admissions
FROM hospital_admissions
GROUP BY admission_month
ORDER BY admission_month;

--Q19. How does hospital revenue change month by month?
SELECT
    DATE_TRUNC('month', date_of_admission)::DATE AS admission_month,
    ROUND(SUM(billing_amount), 2) AS total_revenue
FROM hospital_admissions
GROUP BY admission_month
ORDER BY admission_month;

--Q20. Which medical conditions have both high admissions and high revenue?
SELECT
    medical_condition,
    COUNT(*) AS total_admissions,
    ROUND(SUM(billing_amount), 2) AS total_revenue,
    ROUND(AVG(billing_amount), 2) AS average_bill
FROM hospital_admissions
GROUP BY medical_condition
ORDER BY total_revenue DESC;