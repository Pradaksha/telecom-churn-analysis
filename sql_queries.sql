-- Total customers
SELECT COUNT(*) AS total_customers FROM telco_cleaned;

-- Churned customers
SELECT COUNT(*) AS churned_customers
FROM telco_cleaned
WHERE Churn = 'Yes';

-- Churn rate
SELECT 
COUNT(*) * 100.0 / (SELECT COUNT(*) FROM telco_cleaned)
AS churn_rate
FROM telco_cleaned
WHERE Churn = 'Yes';

-- Total revenue
SELECT SUM(Revenue) AS total_revenue FROM telco_cleaned;

-- Revenue lost due to churn
SELECT SUM(Revenue) AS revenue_lost
FROM telco_cleaned
WHERE Churn = 'Yes';
