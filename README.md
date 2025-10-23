# sales-analytics-portfolio
Portfolio of data analytics projects using SQL, Python, and Tableau

# Project 1: Superstore Sales Analysis (SQL + Tableau)
### Overview
This project analyzes Superstore sales data to uncover performance trends, profitability insights, and regional patterns.

### Tools Used
- SQL (creating tables, writing queries, building a summary view)
- Tableau (Creating dashboards and visualizing KPIs (sales, profit, top customers, etc.)
- Python (Cleaning and preprocessing data, generating the cleaned summary table for analysis)

### Key Dashboards
- Sales by Region
- Profit by Category
- Top 10 Customers by Sales
- Sales by Year
View the live Tableau dashboard here:  
🔗 [Superstore Dashboard](https://public.tableau.com/views/SuperstoreSalesAnalysisDash/SuperstoreSalesAnalysis)

### Folder Structure

Project-1-sql-tableau/
- data/
  - superstore.csv                # Original dataset
  - processed/                    # Cleaned / processed CSVs
    - customers.csv
    - order_summary.csv
    - order_summary_cleaned.csv
    - orders.csv
    - products.csv
    - superstore_cleaned.csv
- python/
  - superstore_python_code.ipynb  # Data cleaning and preprocessing
- sql/
  - create_view.sql                # CREATE VIEW statements
  - queries.sql                    # SQL queries for KPIs
  - schema.sql                     # CREATE TABLE statements
  - superstore_sql_db.db           # SQLite database file
- tableau/
  - Superstore Sales Analysis Dash.twbx  # Tableau workbook
  - dashboard_screenshots/
    - Dashboard_Screenshot.png
- README.md                        # Project documentation

