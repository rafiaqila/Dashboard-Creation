# London Bike Sharing Analysis Dashboard

## Overview
This repository contains a data analysis and visualization project focused on London bike sharing data from https://www.kaggle.com/datasets/hmavrodiev/london-bike-sharing-dataset/data. The interactive dashboard was created using Tableau, with data preprocessing performed using Python in Jupyter Notebook.

## Project Structure
.
├── data/
│   └── london_bike_data.csv        # Cleaned dataset after preprocessing
├── notebooks/
│   └── data_cleaning.ipynb         # Jupyter Notebook used to preprocess the raw dataset
├── tableau/
│   └── london_bike_sharing.twb  # Tableau workbook file
├── images/
│   └── london_bike_sharing_dashboard_preview.png       # Screenshot of the Tableau dashboard
└── README.md                       # Project documentation

## Data Preprocessing
Before visualization, the raw dataset was cleaned and prepared in a Jupyter Notebook (data_cleaning.ipynb). Key steps included:
- Renaming columns
- Transforming column data types

The resulting clean dataset was exported and imported into Tableau for visualization.

## Tableau Dashboard Features
- Total Bike Rides: Displays the total number of rides recorded during the analysis period.
- Moving Average: Visualizes bike rides trends periodically with a selectable time range.
- Temperature vs. Wind Speed Heatmap: Shows ride frequency under various temperature and wind conditions. Darker shades represent higher ride counts.

<div class='tableauPlaceholder' id='viz1744965226097' style='position: relative'><noscript><a href='#'><img alt='Dashboard 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Lo&#47;LondonBikeRidesDashboard_17438361501870&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='LondonBikeRidesDashboard_17438361501870&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Lo&#47;LondonBikeRidesDashboard_17438361501870&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1744965226097');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='1366px';vizElement.style.height='795px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='1366px';vizElement.style.height='795px';} else { vizElement.style.width='100%';vizElement.style.height='1177px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>
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
