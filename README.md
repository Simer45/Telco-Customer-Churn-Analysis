# 📉 Telco Customer Churn Analysis

An end-to-end data analysis project identifying key drivers of customer churn for a telecom company. Built using **Python** for exploratory data analysis and visualization, and **MySQL** for structured querying and business insights.

---

## 📊 Key Results

| Metric | Value |
|--------|-------|
| Total Customers | 7,032 |
| Churned Customers | 1,869 |
| Overall Churn Rate | 26.58% |
| Highest Risk Group | Month-to-month + Fiber optic customers |

---

## 🎯 Business Questions Answered

1. What is the overall churn rate?
2. Which contract types have the highest churn?
3. Which internet service type is most associated with churn?
4. How does tenure affect churn probability?
5. Do higher monthly charges lead to more churn?
6. Who are the highest risk customers?

---

## 🔍 Key Insights

- **26.58% churn rate** — roughly 1 in 4 customers is leaving
- **Month-to-month contracts** have a 42.71% churn rate vs just 2.85% for two-year contracts
- **Fiber optic customers** churn at 41.89% despite paying premium prices — suggesting a service quality or pricing issue
- **New customers (0-5 months tenure)** are at the highest risk of churning
- **Churned customers pay $13 more per month** on average but stay only half as long as retained customers
- **High risk profile identified:** Fiber optic + Month-to-month + tenure under 12 months

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| Python (Pandas, Matplotlib, Seaborn) | Data cleaning, EDA, and visualization |
| MySQL | Database creation, data storage, and business queries |
| Jupyter Notebook | Interactive analysis environment |

---

## 📁 Project Structure

```
Telco-Customer-Churn-Analysis/
│
├── Telco_Churn.csv                  # Raw dataset
├── Telco_Churn_Analysis.ipynb       # Python EDA and visualizations
├── Churn_Analysis_Queries.sql       # MySQL queries for business insights
└── README.md                        # Project documentation
```

---

## 📌 Dataset

- **Source:** [Telco Customer Churn - Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- **Records:** 7,043 rows (7,032 after cleaning)
- **Columns:** 21 (Customer demographics, services, contract info, charges, churn status)

---

## 🧹 Data Cleaning Steps

- Converted TotalCharges from text to numeric (was stored incorrectly as object type)
- Removed 11 rows with blank TotalCharges values
- Converted Churn column from Yes/No to 1/0 for analysis
- Verified no duplicate rows or other missing values

---

## 📈 Visualizations

- **Churn Distribution** — Overall breakdown of churned vs retained customers
- **Churn by Contract Type** — Bar chart showing churn rate across contract types
- **Churn by Internet Service** — Comparison across DSL, Fiber optic, and No service
- **Tenure Distribution by Churn** — Histogram showing when customers are most likely to leave
- **Monthly Charges by Churn** — Box plot comparing charges between churned and retained
- **Correlation Heatmap** — Relationships between tenure, charges, and churn

---

## 🗄️ SQL Queries

Five business queries written in MySQL:
1. Overall churn rate calculation
2. Churn rate by contract type
3. Churn rate by internet service type
4. Average monthly charges and tenure by churn status
5. High risk customer identification

---

## 💡 Business Recommendations

1. **Incentivize long-term contracts** — Two-year contract customers churn 15x less than month-to-month customers. Offer discounts or perks to encourage commitment
2. **Investigate fiber optic service quality** — 41.89% churn rate on premium service is unacceptable and needs urgent attention
3. **Focus retention efforts on new customers** — The first 6 months are the most critical window for churn prevention
4. **Review pricing strategy** — Churned customers are paying more but leaving faster, indicating poor perceived value

---

## 👤 Author

Simerpreet Kaur
Data Analyst | Python • SQL • Power BI • Excel  
https://www.linkedin.com/in/simer-preet-kaur/ https://github.com/Simer45
