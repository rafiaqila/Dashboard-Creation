# London Bike Sharing Analysis Dashboard

## Overview
This repository contains a data analysis and visualization project focused on London bike sharing data from https://www.kaggle.com/datasets/hmavrodiev/london-bike-sharing-dataset/data. The interactive dashboard was created using Tableau, with data preprocessing performed using Python in Jupyter Notebook.

## Data Preprocessing
Before visualization, the raw dataset was cleaned and prepared in a Jupyter Notebook (data_cleaning.ipynb). Key steps included:
- Renaming columns
- Transforming column data types

The resulting clean dataset was exported and imported into Tableau for visualization.

## Tableau Dashboard Features
- Total Bike Rides: Displays the total number of rides recorded during the analysis period.
- Moving Average: Visualizes bike rides trends periodically with a selectable time range.
- Temperature vs. Wind Speed Heatmap: Shows ride frequency under various temperature and wind conditions. Darker shades represent higher ride counts.

![london_bike_sharing_dashboard_preview](https://github.com/user-attachments/assets/f33d3795-c37b-4aa0-9e81-1bbf6424fd24)
For full-version dashboard: https://public.tableau.com/app/profile/rafi.aqila.hidayat/viz/LondonBikeRidesDashboard_17438361501870/Dashboard1

## Insights
- Bike rides peak at moderate temperatures (14°C to 22°C) and low-to-medium wind speeds.
- Extreme temperatures and high wind speeds correlate with fewer rides.
- There is a noticeable seasonal trend in riding activity, with summer months showing higher moving averages.

## Tools Used
- Python (Pandas, NumPy, Matplotlib) for data processing and exploration
- Jupyter Notebook for developing and documenting the data cleaning process
- Tableau for building the interactive dashboard

### Acknowledgments
The materials and data used in this project were obtained from the following YouTube tutorial: https://www.youtube.com/watch?v=nl9eZl1IOKI || Mo Chen
