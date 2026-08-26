# 🏥 Hospital Data Analysis

## 📌 Project Overview

Hospital Data Analysis is an end-to-end data analytics project focused on understanding hospital admissions, patient stays, service performance, financial performance, and patient experience. The project uses **Python, SQL, PostgreSQL, and Power BI** to transform raw healthcare data into meaningful business insights and interactive dashboards.

## 🎯 Project Objective

The main objective of this project is to analyze hospital data and answer important business questions related to:

* Hospital admissions and patient volume
* Patient stay duration
* Service-wise performance
* Revenue and financial performance
* Patient satisfaction
* Operational and patient-experience trends

## 📊 Datasets

The project uses two datasets:

### 1. Hospital Admissions

Contains information related to hospital admissions and patient admission patterns.

### 2. Patient Stays

Contains information related to patient stays, hospital services, financial metrics, and patient satisfaction.

## 🛠️ Tools & Technologies

* **Python**
* **Pandas**
* **NumPy**
* **Matplotlib**
* **Seaborn**
* **SQL**
* **PostgreSQL**
* **Power BI**
* **Jupyter Notebook**

## 🔄 Project Workflow

### 1. Data Cleaning with Python

The raw datasets were cleaned and prepared using Python and Pandas.

The process included:

* Checking missing values
* Identifying duplicate records
* Checking data types
* Handling inconsistent data
* Validating important columns
* Preparing datasets for further analysis

### 2. Exploratory Data Analysis

Python was used to explore the datasets and identify important patterns related to:

* Patient admissions
* Patient stays
* Hospital services
* Revenue
* Patient satisfaction
* Length of stay

### 3. SQL Analysis

The cleaned datasets were analyzed using PostgreSQL and SQL queries.

Business questions included:

* What is the total number of patients?
* Which services have the highest patient volume?
* What is the average length of stay?
* Which services generate the highest revenue?
* What is the average patient satisfaction by service?
* Which services perform best based on patient volume and satisfaction?

### 4. Power BI Dashboard

The analyzed data was used to create interactive dashboards for easier business reporting and decision-making.

The dashboards cover:

**🏥 Hospital Overview**

* Total patients
* Total admissions
* Patient distribution
* Admission trends
* Service performance

**💰 Financial Analysis**

* Revenue performance
* Revenue by service
* Financial trends
* Average revenue metrics

**😊 Patient Experience**

* Patient satisfaction
* Satisfaction by service
* Service-wise patient experience
* Patient experience trends

## 📈 Key Business Questions

### Hospital Admissions

* How many patients were admitted?
* What are the major admission trends?
* Which services have the highest patient volume?
* How is patient volume distributed across services?

### Patient Stays

* What is the average length of stay?
* Which services have longer stays?
* Which services handle the highest number of patients?
* How does satisfaction vary across services?

### Financial Performance

* What is the total revenue?
* Which services generate the highest revenue?
* What is the average revenue per patient?
* Which services show strong financial performance?

### Patient Experience

* What is the overall patient satisfaction?
* Which services have the highest satisfaction?
* Which services have lower satisfaction?
* Which areas may require improvement?

## 💻 Sample SQL Query

```sql
SELECT
    service,
    COUNT(*) AS patient_count,
    ROUND(AVG(satisfaction), 2) AS avg_satisfaction
FROM patients_stays
GROUP BY service
ORDER BY patient_count DESC;
```

This query compares patient volume and average satisfaction across different hospital services.

## 💡 Key Insights

The analysis helps identify:

* High-volume hospital services
* Differences in patient satisfaction
* Services with longer patient stays
* Revenue performance across services
* Areas that may require operational improvement
* Patterns that can support better healthcare decision-making

## 📊 Dashboard

The project includes separate dashboard reports covering:

* **Hospital Overview**
* **Financial Analysis**
* **Patient Experience**

These dashboards convert the analysis into clear visual reports that can be used by management to monitor hospital performance.

## 📁 Project Files

The repository contains:

* Hospital admissions dataset
* Patient stays dataset
* Python/Jupyter Notebook analysis
* SQL analysis queries
* Hospital Overview dashboard
* Financial Analysis dashboard
* Patient Experience dashboard
* Project documentation

## 🚀 Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis
* Python
* Pandas
* SQL
* PostgreSQL
* Power BI
* Data Visualization
* Business Analysis
* KPI Analysis
* Dashboard Development
* Healthcare Analytics

## 📌 Conclusion

This project demonstrates a complete data analytics workflow, starting from raw hospital data and progressing through **data cleaning, exploratory analysis, SQL-based business analysis, and Power BI dashboard development**.

The final analysis provides a clear view of hospital operations, financial performance, patient stays, and patient experience, helping convert healthcare data into actionable business insights.

## 👩‍💻 Author

**Tanuja**

Data Analyst | Python | SQL | Power BI

GitHub: **@tanujainsights**
