# 🏥 Hospital Data Analysis

## 📌 Project Overview

This project focuses on analyzing hospital data to understand patient admissions, hospital stays, financial performance, and patient experience.

The analysis was performed using **Python, SQL, and Power BI** to clean the data, answer important business questions, identify trends, and create interactive dashboards.

The main goal of this project is to transform raw hospital data into meaningful insights that can help healthcare organizations understand their operational and patient-related performance.

---

## 🎯 Business Objective

The objective of this project is to analyze hospital operations and answer questions such as:

- How many patients were admitted?
- What are the major admission trends?
- Which departments/services have the highest number of patients?
- What is the average length of hospital stay?
- Which services generate higher revenue?
- How does patient satisfaction vary across services?
- What are the major patient and hospital performance indicators?
- Which areas require operational improvement?

---

## 📂 Datasets

The project uses two datasets:

### 1. Hospital Admissions

**File:** `hospital_admissions.csv`

This dataset contains information related to hospital admissions and patient admission patterns.

### 2. Patient Stays

**File:** `patients_stays.csv`

This dataset contains information related to patient hospital stays, services, financial information, and patient experience.

---

## 🛠️ Tools & Technologies

- **Python**
  - Pandas
  - NumPy
  - Matplotlib
  - Seaborn

- **SQL**
  - PostgreSQL
  - Data analysis and business queries

- **Power BI**
  - Data visualization
  - Interactive dashboards
  - KPI cards
  - Charts and filters

- **Jupyter Notebook**
  - Data cleaning
  - Exploratory Data Analysis
  - Visualization

---

## 🔄 Project Workflow

### Step 1: Data Collection

Imported the hospital admission and patient stay datasets into the analysis environment.

### Step 2: Data Cleaning

Cleaned and prepared the datasets using Python.

The cleaning process included:

- Checking missing values
- Removing duplicate records
- Checking data types
- Handling inconsistent values
- Validating numerical columns
- Preparing data for analysis

### Step 3: Exploratory Data Analysis

Performed exploratory analysis using Python to identify:

- Admission patterns
- Patient distribution
- Service-wise performance
- Length of stay
- Financial trends
- Patient satisfaction

### Step 4: SQL Analysis

Loaded the cleaned data into PostgreSQL and created SQL queries to answer important business questions.

Examples include:

- Patient count by service
- Average satisfaction by service
- Average length of stay
- Revenue analysis
- Admission trends
- Service performance

### Step 5: Power BI Dashboard

Created interactive Power BI dashboards to present the key findings in an easy-to-understand format.

---

# 📊 Dashboard

The project dashboard focuses on three major areas:

## 🏥 1. Hospital Overview

Key metrics include:

- Total Patients
- Total Admissions
- Average Length of Stay
- Admission Trends
- Service-wise Patient Distribution

## 💰 2. Financial Analysis

The financial analysis focuses on:

- Total Revenue
- Revenue by Service
- Average Revenue per Patient
- Revenue Trends
- Service-wise Financial Performance

## 😊 3. Patient Experience

The patient experience analysis includes:

- Average Patient Satisfaction
- Satisfaction by Service
- Patient Experience Trends
- Service-wise Satisfaction Comparison

---

# 📈 Key Business Questions

Some of the major questions explored in this project are:

### Hospital Admissions

1. What is the total number of hospital admissions?
2. How do admissions change over time?
3. Which services have the highest patient volume?
4. What is the distribution of patients across different services?

### Patient Stays

1. What is the average length of stay?
2. Which services have longer patient stays?
3. Which services handle the highest number of patients?
4. How does patient satisfaction differ between services?

### Financial Performance

1. What is the total revenue generated?
2. Which services generate the highest revenue?
3. What is the average revenue per patient?
4. Which services have strong patient volume and financial performance?

### Patient Experience

1. What is the overall patient satisfaction score?
2. Which services have the highest satisfaction?
3. Which services have lower satisfaction?
4. Are there services that require improvement in patient experience?

---

# 🔍 Sample SQL Analysis

Example query used to analyze patient count and satisfaction by service:

```sql
SELECT
    service,
    COUNT(*) AS patient_count,
    ROUND(AVG(satisfaction), 2) AS avg_satisfaction
FROM patients_stays
GROUP BY service
ORDER BY patient_count DESC;

💡 Insights

The analysis helps identify:

High-volume hospital services
Services with longer patient stays
Differences in patient satisfaction
Financial performance across services
Operational areas that may require attention
Relationships between patient volume, hospital stay, and satisfaction

The final dashboard converts these findings into visual insights that can be used for better hospital performance monitoring.

📁 Project Structure
hospital_data_analysis/
│
├── data/
│   ├── hospital_admissions.csv
│   └── patients_stays.csv
│
├── notebooks/
│   └── hospital_analysis.ipynb
│
├── sql/
│   └── hospital_analysis.sql
│
├── dashboard/
│   └── hospital_analysis.pbix
│
├── screenshots/
│   └── dashboard.png
│
└── README.md
🚀 Skills Demonstrated

This project demonstrates practical skills in:

Data Cleaning
Exploratory Data Analysis
Data Visualization
SQL
PostgreSQL
Python
Pandas
Business Analysis
Power BI
Dashboard Development
KPI Analysis
Healthcare Analytics
📌 Conclusion

This project demonstrates how healthcare data can be transformed from raw datasets into actionable business insights using Python, SQL, and Power BI.

The combination of data cleaning, SQL analysis, exploratory analysis, and interactive dashboards provides a complete end-to-end data analytics workflow.

👩‍💻 Author

Tanuja

Data Analyst | Python | SQL | Power BI
