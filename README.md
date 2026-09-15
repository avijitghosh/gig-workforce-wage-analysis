<div align="center">
  <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=24&pause=1000&color=2E86C1&center=true&vCenter=true&width=600&lines=Gig+Economy+Workforce+Analysis;Exploratory+Data+Analysis+in+R;Wage+Disparities+%26+Outlier+Detection" alt="Typing SVG" />

  <p>
    <img src="https://img.shields.io/badge/Language-R-blue?style=flat-square&logo=R" alt="R" />
    <img src="https://img.shields.io/badge/Focus-EDA%20%26%20Outliers-success?style=flat-square" alt="EDA" />
    <img src="https://img.shields.io/badge/Status-Completed-brightgreen?style=flat-square" alt="Status" />
  </p>
</div>

---

## 📌 Executive Summary
This project analyzes wage structures, demographics, and compensation disparities across gig economy workers using **R**. It processes raw survey data to audit data hygiene, isolate missing values, evaluate wage skewness, and detect anomalies.

---

## 🔄 Analytical Pipeline

```mermaid
graph TD
    A[Raw Survey Data: GigWorkers.csv] --> B[Data Audit & na.omit]
    B --> C[Cleaned Set: gigDataComplete]
    B --> D[Audit Log: rows_with_na.csv]
    C --> E[Statistical Moments & Skewness]
    C --> F[Visualizations & Outlier Detection]
    F --> G[Boxplots: Industry Wage Spread]
    F --> H[Histogram: Wage Frequency]
