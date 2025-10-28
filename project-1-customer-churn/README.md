# Customer Churn & Retention Analysis

## Project Overview
This project analyzes customer churn and retention patterns for a telecom/subscription-based company. Using SQL, Python, and Power BI, the project identifies drivers of churn, builds actionable insights, and visualizes key metrics in an interactive dashboard.

The goal is to help stakeholders understand which customer segments are most at risk of leaving, enabling proactive retention strategies.

### Key Skills Demonstrated
- **SQL:** Data cleaning, aggregation, and creating views for analysis  
- **Python:** Exploratory Data Analysis (EDA), feature engineering, summary table creation, correlation and trend analysis  
- **Power BI:** Interactive dashboards, DAX measures, KPIs, slicers, conditional formatting, business storytelling  
- **Data Analysis & Visualization:** Churn trends, customer segmentation, high-risk identification  
- **Business Insights:** Translating data patterns into actionable recommendations  

---

## Project Workflow / Steps

### 1️⃣ Data Import & Cleaning (SQL)
- Loaded the Telco Customer Churn dataset into a SQL database  
- Inspected data types, null values, and inconsistencies  
- Created a cleaned view (`telco_cleaned`) with numeric conversions for `MonthlyCharges` and `TotalCharges`  
- Saved final cleaned version as `telco_cleaned_updated.csv` for use in Python and Power BI  

### 2️⃣ Exploratory Data Analysis (Python)
- Explored churn distribution across demographics, contract type, and services  
- Generated visualizations: churn by numeric features, correlation heatmap  
- Created summary tables for Contract, PaymentMethod, and Tenure buckets to facilitate dashboard development  

### 3️⃣ Feature Engineering (Python)
- Added Tenure buckets (0–12, 13–24, 25–48, 49+ months)  
- Created `HighRisk` flag for month-to-month customers who churned  
- Prepared summary tables (`contract_churn_summary.csv`, `payment_churn_summary.csv`, `tenure_churn_summary.csv`) for Power BI  

### 4️⃣ Power BI Dashboard Development
- **Page 1 – Overview:** KPI cards (Churn %, Retention %, Avg Tenure, Avg Monthly Charges), Churn Rate by Contract (clustered bar chart)  
- **Page 2 – Customer Segments:** Count of customers by Internet Service & Churn (stacked bar), Churn Heatmap by Internet Service × TenureBucket, High-Risk Customers Table  
- **Page 3 – Retention Analysis:** Churn by TenureBucket, Contract × TenureBucket Heatmap, High-Risk Customers Table  
- Implemented slicers for interactive exploration (Contract, PaymentMethod, Gender, InternetService)  
- Applied conditional formatting, tooltips, and cross-filtering for actionable insights  

### 5️⃣ Business Insights & Recommendations
- Month-to-month customers with short tenure are the highest risk segment  
- Fiber optic customers show higher churn than DSL or no service  
- Electronic payment methods correlate with slightly lower churn  
- Recommended targeted retention campaigns and incentives for high-risk groups  

---

## Folder Structure

Project-2-Customer-Churn/
- data/
  - telco_customer_churn.csv # Raw dataset
  - processed/                    # Cleaned / processed CSVs
    - telco_cleaned_view.csv     # Cleaned table from SQL
    - telco_cleaned_updated.csv # Cleaned table from Python with engineered features
    - contract_churn_summary.csv # Summary by contract type
    - payment_churn_summary.csv # Summary by payment method
    - tenure_churn_summary.csv # Summary by tenure buckets
- python/
  - churn_analysis.ipynb # Python notebook with EDA and feature engineering
  - churn_summary.py # Optional helper functions
- sql/
  - schema_customerchurn.sql # Table creation scripts
  - create_view_customerchurn.sql # Cleaned view creation
  - queries_customerchurn.sql # Data exploration and aggregation queries
- powerbi/
  - Customer_Churn_Dashboard.pbix # Full Power BI dashboard
  - screenshots/
    - Customer Churn Overview.png
    - Customer Segments.png
    - Retention Analysis Tenure Impact.png
- README.md                        # Project overview & instructions
