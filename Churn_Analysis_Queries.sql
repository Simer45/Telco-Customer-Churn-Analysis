CREATE DATABASE churn_analysis;
USE churn_analysis;
CREATE TABLE telco_churn (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(30),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(5)
);
SELECT COUNT(*) FROM telco_churn;

-- Overall Churn Rate:
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_churn;

-- Churn Rate by Contract Type:
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_churn
GROUP BY Contract
ORDER BY churn_rate_percent DESC;

-- Churn Rate by Internet Service:
SELECT 
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM telco_churn
GROUP BY InternetService
ORDER BY churn_rate_percent DESC;

-- Average Monthly Charges for Churned vs Stayed customers:
SELECT 
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    ROUND(AVG(tenure), 2) AS avg_tenure_months,
    COUNT(*) AS total_customers
FROM telco_churn
GROUP BY Churn;

-- Top 5 High Risk Customers (High charges, Month-to-month, Short tenure):
SELECT 
    customerID,
    Contract,
    InternetService,
    MonthlyCharges,
    tenure,
    Churn
FROM telco_churn
WHERE Contract = 'Month-to-month'
AND tenure < 12
AND MonthlyCharges > 70
AND Churn = 'Yes'
ORDER BY MonthlyCharges DESC
LIMIT 10;