# poa-irradiance-forecasting-R
Ranked 2nd in class for forecasting Plane-of-Array (POA) irradiance using R. Achieved an R-squared of 0.967 (Linear Regression) and MAE of 29.5 (Random Forest). Features detailed analysis of daily solar irradiance patterns.

# POA Irradiance Forecasting

This repository contains the POA irradiance forecasting project, developed using R. The project achieved a second-place rank in class and demonstrated strong predictive accuracy using Linear Regression and Random Forest models.

## Key Achievements
- **Linear Regression**:
  - R-squared: 0.967
  - RMSE: 139.65
- **Random Forest**:
  - MAE: 29.5

## Insights
- Daily irradiance pattern peaks at midday, reflecting natural daylight cycles.
- Accurate peak and drop-off irradiance predictions aligned with sunrise and sunset.
- Limitations include potential overfitting and difficulty in handling data anomalies.

## Technologies and Tools
- R (ggplot2, caret, randomForest)
- RStudio for development
- Visualization with ggplot2

## Repository Structure
```plaintext
poa-irradiance-forecasting-r/
├── data/                  # Raw and cleaned datasets
├── scripts/               # R scripts for data processing and modeling
├── visualizations/        # Plots of model performance and patterns
├── reports/               # Detailed project reports (PDF/Word)
├── README.md              # Project overview
└── LICENSE                # License file
