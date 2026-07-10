# Loan-Default-Analysis

An interactive Business Intelligence dashboard developed using Microsoft Power BI to analyze loan default patterns, borrower demographics, financial risk metrics, and lending trends. The project follows an enterprise-style BI workflow by connecting Power BI to Microsoft SQL Server, transforming data with Power Query, and creating advanced DAX measures for business insights.

## 📌 Project Overview

The Loan Default Analysis Dashboard is an end-to-end Business Intelligence project that analyzes more than 255,000 loan records to uncover borrower behavior, lending patterns, financial risk indicators, and default trends.

The project demonstrates a complete BI workflow by connecting Microsoft SQL Server to Power BI, performing data transformation using Power Query, building analytical measures with DAX, and designing an interactive multi-page dashboard for business decision-making.

The dashboard enables financial institutions to monitor portfolio performance, identify high-risk customer segments, and support data-driven lending decisions.

## Dataset
The dataset used in this project is available here: [Loan_default.csv]https://drive.google.com/file/d/1IPu-5BD_UuvVRO2XxjJpAM8lsmYsbUAw/view?usp=sharing
## 🎯 Business Objectives

- Analyze borrower demographics and financial profiles
- Monitor loan default trends across multiple years
- Identify customer segments with higher default risk
- Evaluate lending performance using interactive KPIs
- Support data-driven decision-making for financial institutions
- Demonstrate an enterprise Business Intelligence workflow using SQL Server and Power BI

## 📊 Dashboard Overview

The dashboard consists of three interactive report pages, each focusing on a different aspect of loan portfolio analysis.

### 📍 1. Loan Default Overview

Provides an executive summary of the loan portfolio.

**Key Performance Indicators (KPIs)**
- Total Number of Loans
- Total Loan Amount
- Total Number of Default Loans

**Visualizations**
- Loan Amount by Purpose
- Average Income by Employment Type
- Default Rate by Employment Type
- Average Loan Amount by Age Group
- Default Rate by Year
- Year Filter (Interactive Slicer)

### 👥 2. Applicants Demographics & Financial Profile

Provides detailed demographic and financial insights about borrowers.

**Visualizations**
- Median Loan Amount by Credit Score Category
- Average Loan Amount by Age Group & Marital Status
- Loan Amount by Credit Score Bins
- Loan Amount by Mortgage & Dependents
- Loan Distribution by Education Level

### 📈 3. Financial Risk Metrics

Focuses on trend analysis and financial performance.

**Visualizations**
- Year-over-Year Loan Amount Growth
- Year-over-Year Default Loan Growth
- YTD Loan Amount by Credit Score Bins
- Loan Amount Flow by Income Bracket & Employment Type (Sankey Diagram)

## 🗂 Dataset Information

The dataset contains 255K+ loan application records with customer demographics, financial information, credit history, and loan details.

**Features Included**
- Age
- Income
- Employment Type
- Education
- Marital Status
- Number of Dependents
- Mortgage Status
- Loan Amount
- Interest Rate
- Loan Purpose
- Loan Term
- Credit Score
- Number of Credit Lines
- Debt-to-Income Ratio
- Default Status

## 🏗️ Project Architecture

```
Loan Dataset (CSV)
        │
        ▼
Microsoft SQL Server Database
        │
        ▼
SQL Server Connection (Power BI)
        │
        ▼
Power Query (Data Transformation)
        │
        ▼
Data Modeling
        │
        ▼
DAX Measures & KPIs
        │
        ▼
Interactive Power BI Dashboard
        │
        ▼
Business Insights & Decision Support
```

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Microsoft Power BI | Dashboard Development |
| Microsoft SQL Server | Database & Data Source |
| Power Query | Data Cleaning & Transformation |
| DAX | Business Calculations |
| Data Modeling | Relationship Management |
| Microsoft Excel/CSV | Initial Dataset |

## 📊 Key Business Insights

The dashboard helps answer several business-critical questions:

- Which employment category has the highest loan default rate?
- Which loan purpose receives the highest funding?
- Which borrower age group receives the highest average loan amount?
- How have default rates changed over time?
- How do credit scores influence loan distribution?
- Which education level receives higher loan amounts?
- How does income relate to employment type and lending patterns?

## ⚙️ ETL Process

The data preparation process includes:

1. Importing the dataset into Microsoft SQL Server
2. Connecting SQL Server with Power BI
3. Data Cleaning
4. Handling Missing Values
5. Data Type Conversion
6. Feature Engineering
7. Data Validation
8. Data Modeling

## 📐 DAX Measures

Several custom DAX measures were created, including:

- Total Loans
- Total Loan Amount
- Total Default Loans
- Default Rate (%)
- Average Income
- Average Loan Amount
- Median Loan Amount
- Year-over-Year Loan Growth
- Year-over-Year Default Growth
- Age Groups
- Income Brackets
- Credit Score Categories

## 🗄️ SQL Server Integration

Instead of directly importing the CSV into Power BI, the dataset was first stored in Microsoft SQL Server and then connected using the SQL Server connector.

**Benefits**
- Simulates an enterprise Business Intelligence environment
- Uses a centralized database as the data source
- Enables easy data refresh after database updates
- Demonstrates database connectivity in Power BI



## 🔍 Data Validation (SQL Server)

Before building the Power BI dashboard, the dataset was validated directly against the SQL Server table to confirm data integrity and consistency. All queries are available in validation_queries.sql.

1. Row Count Check

Confirms the full dataset loaded correctly into SQL Server.

MetricResultTotal Records255,347

This matches the "Total Number of Loan" KPI (255.35K) shown in the Power BI dashboard.
<img width="692" height="387" alt="image" src="https://github.com/user-attachments/assets/19cb9c5b-d49e-4e37-ae58-8e3932aa57bb" />



2. Null / Data Quality Audit

Checked key columns (LoanID, Age, Income, CreditScore, Default) for missing values.



No missing values found across critical fields.
<img width="676" height="244" alt="image" src="https://github.com/user-attachments/assets/40f6f71f-84b0-4762-90f0-ecdeb9738b12" />





3. Duplicate Record Check

Verified no LoanID appears more than once in the dataset.

Result: 0 duplicate records found.
<img width="686" height="402" alt="image" src="https://github.com/user-attachments/assets/cf841428-40c1-47a5-b10b-be9c3258b1d8" />





4. Default Rate by Year

Cross-validated year-over-year default rates against the dashboard's "Default Rate (%) By Year" visual.
YearTotal LoansDefaultsDefault 


<img width="680" height="350" alt="image" src="https://github.com/user-attachments/assets/6f3c7d33-b965-4fae-8b56-91a3fa433727" />









## 📸 Dashboard Preview

### 📍 Loan Default Overview
<img width="648" height="374" alt="Loan Default Overview" src="https://github.com/user-attachments/assets/4e620668-57d8-402e-85ba-f2f7016b9f12" />

### 👥 Applicants Demographics & Financial Profile
<img width="644" height="369" alt="Applicants Demographics" src="https://github.com/user-attachments/assets/36c56be1-9fdb-4e73-8920-04318ac3c423" />

### 📈 Financial Risk Metrics
<img width="649" height="370" alt="Financial Risk Metrics" src="https://github.com/user-attachments/assets/270509e6-5049-4e92-9f9c-f1be83e59f56" />









Loan-Default-Analysis/
│
├── README.md
├── Loan Analysis.pbix
├── Loan_default.csv
│
├── SQL/
│   ├── Database_Setup.sql          ← cleaned schema (CREATE TABLE, conflict markers removed)
│   └── Validation_Queries.sql      ← row count, null audit, duplicate check, default rate by year
│
└── Images/
    ├── Loan_Default_Overview.png
    ├── Applicants_Demographics.png
    ├── Financial_Risk_Metrics.png
    ├── SQL_Row_Count.png
    ├── SQL_Null_Audit.png
    ├── SQL_Duplicate_Check.png
    └── SQL_Default_Rate_By_Year.png


















    

## 🚀 Getting Started

**Clone the Repository**
```
git clone https://github.com/rishabhofficial005-alt/Loan-Default-Analysis.git
```

**Open the Project**
1. Install Microsoft Power BI Desktop
2. Open `Loan Analysis.pbix`
3. Connect to your SQL Server instance if prompted
4. Click **Refresh** to load the latest data
5. Explore the interactive dashboard using the filters and slicers

## 💡 Skills Demonstrated

- Business Intelligence
- Dashboard Design
- Microsoft Power BI
- Microsoft SQL Server
- SQL Server Connectivity
- Power Query (ETL)
- DAX
- Data Modeling
- Financial Analytics
- Interactive Reporting
- Data Visualization
- Data Analysis
- Business Storytelling

## 📈 Business Value

This dashboard enables financial organizations to:

- Identify high-risk borrowers
- Improve credit risk assessment
- Analyze borrower demographics
- Monitor lending performance
- Track loan portfolio trends
- Support strategic lending decisions
- Enhance operational reporting

## 📚 Learning Outcomes

This project helped strengthen my practical knowledge of:

- Building end-to-end Business Intelligence solutions
- Connecting Power BI with Microsoft SQL Server
- Performing ETL using Power Query
- Creating reusable DAX measures
- Designing professional multi-page dashboards
- Transforming raw financial data into actionable insights

## 🔮 Future Enhancements

- Deploy the dashboard to Power BI Service
- Implement scheduled data refresh
- Add Row-Level Security (RLS)
- Integrate predictive machine learning models for loan default prediction
- Create drill-through pages for customer-level analysis
- Develop executive KPI scorecards

## 👨‍💻 Author

**Rishabh Singh**
Computer Science Engineering Student
