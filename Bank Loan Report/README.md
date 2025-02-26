# Bank Loan Report Dashboard

This project is a Bank Loan Dashboard built using Tableau and integrated with SQL for cross-validation of the values displayed in the dashboard. The dashboard is designed to provide insights into various loan metrics, trends, and key performance indicators (KPIs) across three different views: Summary, Overview, and Details.

## Dashboard Overview
The dashboard leverages the bank loan data stored in the bank_loan table, which includes various loan information such as loan status, loan amounts, payment history, interest rates, and more. The project features the following three dashboards:

### 1. Summary Dashboard
<img width="1366" alt="Screenshot 2025-02-26 at 13 29 27" src="https://github.com/user-attachments/assets/556ffc44-1aed-46e8-a57a-09f5bef695c0" />
The Summary Dashboard provides high-level KPIs for loan applications, funded amounts, and received amounts, as well as the average interest rate and Debt-to-Income (DTI) ratio. It also compares the performance of "Good Loans" (Fully Paid or Current) versus "Bad Loans" (Charged Off). Key Metrics: Total Loan Applications, Total Funded Amount, Total Amount Received, Average Interest Rate, Average DTI, and Good Loan vs Bad Loan metrics (Applications, Funded Amount, Received Amount)

### 2. Overview Dashboard
<img width="1364" alt="Screenshot 2025-02-26 at 13 29 43" src="https://github.com/user-attachments/assets/e7a5eff7-0a09-468c-ac78-5bfbac7a9b9e" />
The Overview Dashboard provides monthly trends, regional analysis by state, loan term analysis, employment length analysis, loan purpose breakdown, and home ownership analysis.
Key Features: Monthly Trends by Issue Date, Regional Analysis by State, Long Term Analysis, Employee Length Analysis, Loan Purpose Breakdown, and Home Ownership Analysis

### 3. Details Dashboard
<img width="1364" alt="Screenshot 2025-02-26 at 13 29 59" src="https://github.com/user-attachments/assets/43934edc-dc9b-40fc-991b-dd39ce488b9d" />
The Details Dashboard provides a granular view of individual loan applications, showing detailed information about each loan, including the loan ID, purpose, home ownership, grade, sub-grade, issue date, and the total loan amount.

#### For the full-version dashboard, please visit my Tableau Public page: https://public.tableau.com/app/profile/rafi.aqila.hidayat/viz/bank_loan_17405490577190/SUMMARY

## SQL Queries for Data Validation
### 1. dashboard1_summary.sql
The SQL code for the Summary dashboard validates and calculates the following:
- Total Loan Applications (Month-to-date, Year-over-Year)
- Total Funded Amount (Month-to-date, Year-over-Year)
- Total Amount Received (Month-to-date, Year-over-Year)
- Average Interest Rate (Month-to-date, Year-over-Year)
- Average Debt-to-Income Ratio (DTI)
- Good Loan vs Bad Loan Metrics (Good loan percentage, funded amount, received amount, bad loan percentage, etc.)
- Loan Status Grid View (Counts and sums by loan status)

### 2. dashboard2_overview.sql
The SQL code for the Overview dashboard calculates:
- Monthly Trends (Loan applications, funded amounts, and received amounts)
- Regional Analysis (Loans by state)
- Loan Term Analysis (Loans by term length)
- Employee Length Analysis (Loans by employment length)
- Loan Purpose Breakdown (Loans by purpose)
- Home Ownership Analysis (Loans by home ownership)
  
### 3. dashboard3_details.sql
The SQL code for the Details dashboard extracts all loan details, providing a granular dataset for the dashboard's table view.

### Acknowledgment
The materials and data used in this project were obtained from the following YouTube tutorial:
https://www.youtube.com/watch?v=7S5vkJVuaHc&t=11724s || Data Tutorials


