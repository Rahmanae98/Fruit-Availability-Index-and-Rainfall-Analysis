# Author: [Arif Rahman]
# Rainfall and Fruit Availability Index (FAI) Analysis in R
# Description: This script performs statistical analysis and visualization 
# of the relationship between rainfall and fruit availability index (FAI),
# including normality testing (Shapiro-Wilk), non-parametric correlation 
# (Spearman), and scatter plot visualization.

# =======================
# Load Required Libraries
# =======================
library(ggplot2)
library(readxl)
library(dplyr)
library(scales)

# =======================
# Load and Explore the Data
# =======================
file_path <- "your_path/.xlsx"
data <- read_excel(file_path)

str(data)
head(data)

# =======================
# Shapiro-Wilk Normality Test
# =======================
shapiro_fai <- shapiro.test(data$FAI)
cat("\nShapiro-Wilk Test for FAI:\n")
print(shapiro_fai)

shapiro_rain <- shapiro.test(data$`Curah Hujan (mm)`)
cat("\nShapiro-Wilk Test for Rainfall:\n")
print(shapiro_rain)

# Interpretation:
# If p > 0.05 → data is normally distributed
# If p < 0.05 → data is not normally distributed

# =======================
# Spearman Correlation Test (Non-Parametric)
# =======================
spearman_result <- cor.test(data$FAI, data$`Curah Hujan (mm)`, method = "spearman")
cat("\nSpearman Correlation Result:\n")
print(spearman_result)

# =======================
# Scatter Plot with Regression Line
# =======================
plot_correlation <- ggplot(data, aes(x = `Rainfall (mm)`, y = FAI)) +
  geom_point(color = "blue", size = 3, alpha = 0.7) +
  geom_smooth(method = "lm", color = "red", se = TRUE, size = 1) +
  labs(
    title = "Relationship between Rainfall and Fruit Availability Index (FAI)",
    x = "Rainfall (mm)",
    y = "FAI (Fruit Availability Index)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16),
    axis.title = element_text(size = 14)
  )

print(plot_correlation)
ggsave("FAI_vs_Rainfall_Plot.png", plot = plot_correlation, width = 8, height = 6, dpi = 300)

