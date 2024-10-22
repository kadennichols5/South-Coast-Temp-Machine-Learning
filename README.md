# South-Coast-Temp-Machine-Learning

# Predicting Water Temperature off the South Coast

## Overview
This project applies machine learning models to predict water temperatures in the Santa Barbara Channel using NOAA weather data. The analysis combines meteorological data with oceanographic insights to create predictive models that can help anticipate water conditions.

## Motivation
Growing up in Southern California, the Pacific Ocean has been a powerful influence on daily life. While the region enjoys beautiful sunny days, the water temperatures can be surprisingly cold. This project aims to predict water temperatures using observable beach conditions, helping beach-goers better prepare for their ocean activities.

## Data Source
- Data collected from [NOAA's National Data Buoy Center (NDBC)](https://www.ndbc.noaa.gov/download_data.php?filename=46053h2022.txt.gz&dir=data/historical/stdmet/)
- Specifically from Buoy LLNR 196, located 12 nautical miles southwest of Santa Barbara, CA
- Dataset contains meteorological measurements throughout 2022
- Over 50,000 initial observations across 13 weather-related measurements

## Data Description

### Raw Data 

The original dataset includes the following variables:
| **Field**   | **Description**                                                             |
|-------------|-----------------------------------------------------------------------------|
| X.YY        | Year                                                                        |
| MM          | Month                                                                       |
| DD          | Day                                                                         |
| hh          | Hour                                                                        |
| mm          | Minute                                                                      |
| WDI         | Wind direction (degrees clockwise from true N)                              |
| R.WSPD      | Wind speed (m/s)                                                            |
| D.GST       | Peak gust speed (m/s)                                                       |
| WVHT        | Significant wave height (m)                                                 |
| DPD         | Dominant wave period (s)                                                    |
| APD         | Average wave period (s) during period between observations                  |
| MWD         | Main wave direction of dominant wave period (degrees clockwise from true N) |
| PRES        | Sea level pressure (hPa)                                                    |
| ATMP        | Air temperature (Celsius)                                                   |
| WTMP        | Water temperature (Celsius)                                                 |
| DEWP        | Dewpoint temperature (Celsius)                                              |
| VIS         | Station visibility (NM)                                                     |
| TIDE        | Water level above or below Mean Lower Low Water (ft)                        |

### Cleaned Dataset 

After preprocessing, the cleaned dataset contains the following variables:
| **Field**       | **Description**                                                              |
|-----------------|------------------------------------------------------------------------------|
| date            | Date (YYYY-MM-DD)                                                            |
| airtemp         | Air temperature (°F)                                                         |
| watertemp       | Water temperature (°F)                                                       |
| wavedirection   | Main wave direction of dominant wave period (degrees clockwise from true N)  |
| waveperiod      | Dominant wave period (s)                                                     |
| waveheight      | Significant wave height (ft)                                                 |
| windspeed       | Wind speed (kts)                                                             |
| winddirection   | Wind direction (degrees clockwise from true N)                               |


## Methodology
1. **Data Preprocessing**
   - Cleaned missing values and outliers
   - Converted units to standard measurements
   - Aggregated hourly data to daily averages
   - Created seasonal variables

2. **Model Development**
   Four different models were developed and compared:
   - Linear Regression
   - k-Nearest Neighbors (kNN)
   - Polynomial Regression
   - Random Forest

3. **Model Evaluation**
   Models were evaluated using:
   - Root Mean Square Error (RMSE)
   - R-squared (R²)
   - Mean Absolute Error (MAE)
   - Cross-validation techniques

## Results
- Linear Regression emerged as the best performing model
- Achieved R² of 84.4%
- Mean Absolute Error of 0.684°F
- Air temperature and wave height were the most significant predictors

## Key Findings
- Water temperature shows strong seasonal patterns
- Linear relationships dominate the predictive factors
- Simpler models outperformed more complex approaches
- Air temperature is the strongest predictor of water temperature


## Future Work
- Develop models excluding seasonal indicators to focus on ocean-specific factors
- Incorporate data from multiple years to capture longer-term patterns
- Add real-time prediction capabilities
- Expand to multiple locations along the coast

## Author
Kaden Nichols

## Acknowledgments
- NOAA's National Data Buoy Center for providing the data
- Years of first-hand ocean experience informing the analysis

