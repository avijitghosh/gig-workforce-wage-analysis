<div align="center">
  <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=24&pause=1000&color=2E86C1&center=true&vCenter=true&width=550&lines=Gig+Economy+Workforce+Analysis;Exploratory+Data+Analysis+in+R;Outlier+Detection+%26+Wage+Metrics" alt="Typing SVG" />
</div>
# 📊 Gig Economy Workforce & Wage Disparity Analysis

An end-to-end exploratory data analysis (EDA) examining wage structures, demographic patterns, and industry-specific distributions across gig workers using **R**.

---

## 📌 Project Overview
The gig economy represents an increasingly flexible segment of the modern labor market. This project audits survey-level worker records to examine:
- **Data Quality:** Systematic identification and extraction of missing records.
- **Wage Disparities:** Variation in compensation across different gig industries and job classifications.
- **Outlier Dynamics:** Quantifying extreme wage observations via interquartile range (IQR) detection.
- **Statistical Moments:** Computing skewness, kurtosis, and dispersion metrics.

---

## 🗂 Project Structure
```text
├── GigWorkers.csv                # Raw survey dataset
├── rows_with_na.csv              # Extracted incomplete records (Audit Trail)
├── gig_workforce_analysis.R      # Primary end-to-end R script
└── README.md                     # Project documentation
