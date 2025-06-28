# Spearman Correlation Analysis between Rainfall and Fruit Availability Index (FAI)
This repository provides an R-based analytical workflow to assess the non-parametric relationship between monthly rainfall and the Fruit Availability Index (FAI), which reflects seasonal fruit productivity in a tropical ecosystem. The dataset was collected from a long-term ecological monitoring site, with the goal of identifying climatic drivers influencing fruit availability for wildlife.
## Background
Understanding the effect of climatic variables on food availability is critical for wildlife ecology and conservation. Rainfall is one of the key drivers influencing the phenology of tropical forests. This project explores the correlation between:
- **Rainfall (mm)** — Monthly rainfall data
- **FAI (Fruit Availability Index)** — A measure of available fruit, derived from phenology surveys
This study employs **Spearman’s rank correlation** to evaluate monotonic associations without assuming normality in the data.
## Analysis Overview
### 1. Normality Test
- **Method**: Shapiro-Wilk test  
- **Purpose**: To assess the distribution of FAI and rainfall values
### 2. Correlation Test
- **Method**: Spearman’s rank correlation (`cor.test(method = "spearman")`)  
- **Output**: Spearman’s rho, significance level (p-value), and 95% confidence interval
### 3. Visualization
- **Tool**: `ggplot2`  
- **Components**: Scatter plot of rainfall vs. FAI, including a linear trend line (for visualization only)

