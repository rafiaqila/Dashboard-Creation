# COVID-19 Worldwide Data Dashboard

This project is a data dashboard for visualizing COVID-19 statistics across various countries and continents. It uses data from multiple sources to provide insightful metrics on global health. The dashboard utilizes SQL queries to aggregate and process data, and then visualizes this data in an interactive format.

## Dashboard Overview
### 1. Global Data Metrics: Displays the total number of COVID-19 cases, deaths, infection rates, and vaccination percentages worldwide.
### 2. Country-Specific Insights: Provides detailed statistics on COVID-19 cases, deaths, and vaccination rates per country.
### 3. Visual Analytics: Utilizes interactive charts and maps to show data such as infection percentages, fatality rates, and the spread of the disease globally.
### 4. Continent-Wise Data: View statistics by continents and compare them visually.

<img width="1680" alt="Screenshot 2025-02-09 at 21 00 43" src="https://github.com/user-attachments/assets/94316c2d-f6b9-49be-a42c-589ab4e9bd6a" />
For full-version dashboard: https://public.tableau.com/app/profile/rafi.aqila.hidayat/viz/COVID-19WorldwideDataDashboard/Dashboard

## SQL Overview
I use SQL to do an exploratory data analysis and also create views to be used in Tableau for visualizations. Below are the SQL queries I wrote in this project:
- Fatality Rate Percentage: This query calculates the global fatality rate based on the number of new deaths and cases
- Population Infected Percentage: Determines the percentage of the population that has been infected by calculating the ratio of infected people to total population.
- Country with the Highest Infection Rate: Finds the country with the highest infection rate by analyzing the ratio of total cases to population.
- Country with the Highest Fatality Rate After Total Cases Hit 1000: A detailed query calculating the fatality percentage for countries where the total number of cases exceeds 1000.
- Continent with the Highest Death Count: Identifies the continent with the highest total deaths.
- Daily Hospitalized Rate, ICU Rate, and Bed Occupancy Rate: Monitors hospital usage by calculating the rates of hospitalization, ICU patients, and the bed occupancy rate based on the available data.
- Vaccination Progress: Tracks vaccination progress by showing the percentage of people vaccinated in different countries and regions.

### Acknowledgement
The materials and data used in this project were obtained from the following YouTube tutorial:
https://www.youtube.com/watch?v=QILNlRvJlfQ || Alex The Analyst on YouTube.
