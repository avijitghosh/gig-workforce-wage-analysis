# ==============================================================================
# Title: Gig Economy Workforce & Wage Analysis
# Description: Exploratory Data Analysis, Outlier Detection, and Wage Disparities
# Author: [Your Name]
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. Setup & Data Ingestion
# ------------------------------------------------------------------------------
# Load required libraries
if (!require("psych")) install.packages("psych")
if (!require("e1071")) install.packages("e1071")

library(psych)
library(e1071)

# Import raw dataset
gigData <- read.csv("GigWorkers.csv")

# Inspect initial schema & structure
str(gigData)
names(gigData)
head(gigData, 3)
tail(gigData, 5)

# ------------------------------------------------------------------------------
# 2. Data Auditing & Missing Value Handling
# ------------------------------------------------------------------------------
# Total missing elements across dataset
sum(is.na(gigData))

# Isolate incomplete records for data quality audit
rows_with_na <- gigData[!complete.cases(gigData), ]
nrow(rows_with_na)
write.csv(rows_with_na, "rows_with_na.csv", row.names = FALSE)

# Check missing values per column
colSums(is.na(gigData)) |>
  t() |>
  t()

# Missing values specific to HourlyWage
sum(is.na(gigData$HourlyWage))

# Clean dataset by dropping incomplete cases
gigDataComplete <- na.omit(gigData)
dim(gigDataComplete)

# ------------------------------------------------------------------------------
# 3. Exploratory Data Analysis & Outlier Detection
# ------------------------------------------------------------------------------
# Boxplot for overall wage distribution
boxplot(gigDataComplete$HourlyWage,
        horizontal = TRUE,
        main = "Distribution of Hourly Wages in the Gig Economy",
        xlab = "Hourly Wage (USD)",
        col = "wheat")

# Identify statistical outliers using 1.5 * IQR rule
wage_outliers <- boxplot(gigDataComplete$HourlyWage, plot = FALSE)$out
length(wage_outliers)
table(wage_outliers)

# Industry-wise Wage Comparison
boxplot(HourlyWage ~ Industry,
        data = gigDataComplete,
        main = "Hourly Wage Distribution Across Industries",
        xlab = "Industry",
        ylab = "Hourly Wage (USD)",
        col = "skyblue")

# Categorical Breakdown: Industry Representation
table(gigDataComplete$Industry)
round(proportions(table(gigDataComplete$Industry)), 2)

# Cross-tabulation: Job Type vs Gender Proportions
table(gigDataComplete$JobType, gigDataComplete$Gender)
round(proportions(table(gigDataComplete$JobType, gigDataComplete$Gender)), 2)

# ------------------------------------------------------------------------------
# 4. Statistical Summary & Distribution Shape
# ------------------------------------------------------------------------------
# Summary measures of central tendency and dispersion
min(gigDataComplete$HourlyWage)
max(gigDataComplete$HourlyWage)
mean(gigDataComplete$HourlyWage)
var(gigDataComplete$HourlyWage)
sd(gigDataComplete$HourlyWage)

# Descriptive metrics grouped by Job Type
describeBy(gigDataComplete$HourlyWage, gigDataComplete$JobType)

# Skewness & Kurtosis assessment
skewness(gigDataComplete$HourlyWage)
kurtosis(gigDataComplete$HourlyWage)

# Histogram: Wage Frequency Distribution
hist(gigDataComplete$HourlyWage,
     main = "Histogram of Hourly Wages",
     xlab = "Hourly Wage (USD)",
     ylab = "Frequency",
     col = "lightblue",
     labels = TRUE)