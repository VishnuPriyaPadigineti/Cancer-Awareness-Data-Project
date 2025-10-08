# Cancer-Awareness-Data-Project
Analyzing U.S. cancer mortality trends (2010–2022) by gender, race, and city to support targeted awareness initiatives.
# 🎗️ Cancer Awareness Program – Cancer Mortality Analytics

![Cancer Awareness Dashboard](https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/cancer%20awarness.webp)


## 🩺 Project Objective
The objective of this project is to analyze cancer mortality data across major U.S. cities to identify **high-risk demographic groups** based on **gender, race, and region**.  
This analysis helps design **targeted cancer awareness programs** that focus on the most affected populations.

---

## 🏢 Industry
**Healthcare**

---

## 📂 Dataset Information
**Dataset Name:** `Cancer_Mortality_Data.xlsx`  
**Dataset Source:** [Big Cities Health Inventory Data Platform](https://www.bigcitieshealthdata.org/)  
**Time Frame:** 2010–2022  
**Cities Covered:** 35 major U.S. cities including New York, Los Angeles, Chicago, Dallas, and Houston.  
**Key Attributes:**
- `Geo_label` – City and state  
- `Date_label` – Year  
- `Strata_race_label` – Race  
- `Strata_sex_label` – Gender  
- `Value` – Cancer mortality rate  

<a href="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/BigCitiesHealth-All-Cancer-Deaths-final-csv.csv" target="_blank">
  📂 <b>View Dataset File</b>
</a>

---

## 📋 Topics Covered
| S.No | Topic Name |
|------|-------------|
| 1 | Problem Statement |
| 2 | Business Understanding |
| 3 | Data Understanding |
| 4 | Data Preparation |
| 5 | SQL Queries |
| 6 | Visualization |

---

## 🧩 Problem Statement
The goal of this project is to analyze **cancer-related mortality data** collected from U.S. cities.  
By examining **gender and racial demographics**, we can identify the **most vulnerable populations** and design awareness programs tailored to them.

---

## 💼 Business Understanding
A healthcare organization, **Medicaid Inc.**, with 88,000 employees and $45.9B in annual revenue, plans to launch a **Cancer Awareness Program**.  
This project identifies high-risk demographic groups by studying cancer death rates by **gender**, **race**, and **location**.

Key objectives:
- Identify cities and demographics with the highest cancer death rates  
- Support targeted awareness campaigns and early detection initiatives  

---

## 🧠 Data Understanding
- Data spans from **2010 to 2022** across 35 large urban cities.  
- Focuses on **demographic and location-based mortality factors**.  
- Each record represents mortality rates segmented by **race** and **gender**.  

Understanding the dataset ensures accurate cleaning and reliable analysis before performing any transformations.

---

## 🧹 Data Preparation & Cleansing
Performed in **OpenRefine** and **Google Cloud Platform**:

- Removed missing and duplicate values.  
- Fixed inconsistent city–state names (e.g., *New York, NY*; *Dallas, TX*).  
- Standardized categorical variables (`race_label`, `sex_label`).  
- Converted numerical columns (`value`, `value_95_ci_low`, `value_95_ci_high`) to numeric format.  
- Extracted state names using transformations like `value.split(',')[1]`.  

After cleaning, the dataset contained **6,057 valid rows**.

---

## 🧮 SQL Queries Summary
All SQL queries were executed in **Google BigQuery**.

| Query | Description | Key Output |
|-------|--------------|------------|
| Q1 | Total Female Deaths | 1,952 |
| Q2 | Total Male Deaths | 1,987 |
| Q3 | Average Death Rate by City & Race | Milwaukee, WI (White): 256.9 |
| Q4 | Yearly Trend of Cancer Deaths | Highest: 2010 (173), Lowest: 2022 (148) |
| Q5 | Average Deaths per City | Highest: Louisville, KY (194), Lowest: Phoenix, AZ (128) |
| Q6 | Gender-wise Deaths by Year | Females: 159 (2016), Males: 158 (2017) |

<a href="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/Queries.sql" target="_blank">
  💾 <b>View Full SQL Queries</b>
</a>

---

## 📊 Data Visualization
Visualization performed in **Google Data Studio** and **Power BI**:

- **Bar Chart:** Average deaths per city
- **Line Graph:** Year-wise cancer mortality trend (2010–2022)  
- **Pie Chart:** Race vs. average cancer deaths  
- **Pyramid Chart:** Gender vs. total deaths  
- **Dot Graph:** Gender distribution per year  

<a href="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/tree/main/visualizations" target="_blank">
  📊 <b>View Dashboard</b>
</a>
## 📊 Visualizations

---

### 🔹 Average Death Rate in Each City
<a href="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20015927.png" target="_blank">
  <img src="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20015927.png" alt="Average Death Rate in Each City" width="80%">
</a>


### 🔹 Average Death Rate by Each Year
<a href="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20015808.png" target="_blank">
  <img src="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20015808.png" alt="Average Death Rate by Year" width="80%">
</a>

---

### 🔹 Average Death Rate by Race
<a href="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20015848.png" target="_blank">
  <img src="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20015848.png" alt="Average Death Rate by Race" width="80%">
</a>

---

### 🔹 Total Deaths Over the Years by Gender
<a href="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20015951.png" target="_blank">
  <img src="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20015951.png" alt="Total Deaths Over the Years by Gender" width="80%">
</a>

---

### 🔹 Total Deaths Funnel
<a href="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20021046.png" target="_blank">
  <img src="https://github.com/VishnuPriyaPadigineti/Cancer-Awareness-Data-Project/blob/main/visualizations/Screenshot%202025-10-08%20021046.png" alt="Total Deaths Funnel" width="80%">
</a>

---



## 💡 Key Insights
- **Male deaths** are consistently higher than female deaths.  
- The **Black population** shows the highest mortality rates.  
- **Louisville, KY** reports the highest average death rate.  
- **2010–2012** recorded the most severe cancer mortality across all groups.  

---

## 🩸 Conclusion
The analysis indicates that **Black male populations in Louisville, KY** face the highest risk of cancer mortality.  
Targeted awareness campaigns and early-screening programs should prioritize these high-risk groups to improve health outcomes.

---

## 🛠️ Tools Used
- **Google Cloud Console**  
- **Google BigQuery**  
- **OpenRefine**  
- **Google Data Studio / Power BI**

---

## 📚 References
- Dataset Source: [Big Cities Health Inventory Data Platform](https://www.bigcitieshealthdata.org/)
- Organization: *Medicaid Inc.*

---

## 🏷️ Tags
`#HealthcareAnalytics` `#CancerAwareness` `#DataVisualization` `#BigQuery` `#SQL` `#PowerBI` `#OpenRefine` `#GoogleDataStudio`
