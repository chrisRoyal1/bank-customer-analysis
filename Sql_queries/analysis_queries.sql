-- ============================================
-- Bank Customer Analysis - SQL Queries
-- Author: Christopher John
-- Database: bank_analysis.db
-- Table: bank_customers
-- ============================================


-- Query 1: Total Customers by Region
-- Shows customer distribution across all regions

SELECT Region, 
       COUNT(CustomerID) AS TotalCustomers
FROM bank_customers
GROUP BY Region
ORDER BY TotalCustomers DESC;


-- Query 2: Default Rate by Region
-- Calculates loan default rate per region

SELECT Region,
       COUNT(CustomerID) AS TotalLoans,
       SUM(CASE WHEN LoanStatus = 'Defaulted' THEN 1 ELSE 0 END) AS Defaults,
       ROUND(SUM(CASE WHEN LoanStatus = 'Defaulted' THEN 1 ELSE 0 END) * 100.0 / COUNT(CustomerID), 1) AS DefaultRate
FROM bank_customers
GROUP BY Region
ORDER BY DefaultRate DESC;


-- Query 3: Average and Total Balance by Account Type
-- Identifies most valuable account products

SELECT AccountType,
       COUNT(CustomerID) AS Customers,
       ROUND(AVG(AccountBalance), 2) AS AvgBalance,
       ROUND(SUM(AccountBalance), 2) AS TotalBalance
FROM bank_customers
GROUP BY AccountType
ORDER BY AvgBalance DESC;


-- Query 4: Churn Rate by Customer Value Segment
-- Identifies which segments are leaving the bank

SELECT "Customer Value",
       COUNT(CustomerID) AS TotalCustomers,
       SUM(CASE WHEN Churned = 'Yes' THEN 1 ELSE 0 END) AS Churned,
       ROUND(SUM(CASE WHEN Churned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(CustomerID), 1) AS ChurnRate
FROM bank_customers
GROUP BY "Customer Value"
ORDER BY ChurnRate DESC;


-- Query 5: High Risk Customers Who Have Defaulted
-- Validates credit risk model against actual default behaviour

SELECT "Credit Risk",
       LoanStatus,
       COUNT(CustomerID) AS Customers,
       ROUND(AVG(AccountBalance), 2) AS AvgBalance,
       ROUND(AVG(CreditScore), 1) AS AvgCreditScore
FROM bank_customers
WHERE "Credit Risk" = 'High Risk' AND LoanStatus = 'Defaulted'
GROUP BY "Credit Risk", LoanStatus;


-- Query 6: Top 10 Highest Balance Customers
-- Profiles the bank's most valuable customers by account balance

SELECT CustomerID,
       Region,
       AccountType,
       AccountBalance,
       "Credit Risk",
       LoanStatus
FROM bank_customers
ORDER BY AccountBalance DESC
LIMIT 10;


-- Query 7: Default Rate by Employment Status
-- Determines whether employment type predicts loan default

SELECT EmploymentStatus,
       COUNT(CustomerID) AS TotalCustomers,
       SUM(CASE WHEN LoanStatus = 'Defaulted' THEN 1 ELSE 0 END) AS Defaults,
       ROUND(SUM(CASE WHEN LoanStatus = 'Defaulted' THEN 1 ELSE 0 END) * 100.0 / COUNT(CustomerID), 1) AS DefaultRate
FROM bank_customers
GROUP BY EmploymentStatus
ORDER BY DefaultRate DESC;


-- Query 8: Top 10 Premium Customers Who Have Churned
-- Identifies highest value customers lost to churn

SELECT CustomerID,
       Region,
       AccountType,
       AccountBalance,
       MonthlyIncome,
       "Credit Risk",
       LoanStatus
FROM bank_customers
WHERE "Customer Value" = 'Premium' AND Churned = 'Yes'
ORDER BY AccountBalance DESC
LIMIT 10;


-- Query 9: Average Credit Score and Loan Amount by Loan Status
-- Validates whether credit score predicts repayment behaviour

SELECT LoanStatus,
       COUNT(CustomerID) AS Customers,
       ROUND(AVG(CreditScore), 1) AS AvgCreditScore,
       ROUND(AVG(LoanAmount), 2) AS AvgLoanAmount
FROM bank_customers
GROUP BY LoanStatus
ORDER BY AvgCreditScore DESC;


-- Query 10: Most Valuable Customer Profile
-- Identifies the highest balance retained premium customers
-- by region, account type, employment and credit risk

SELECT Region,
       AccountType,
       EmploymentStatus,
       "Credit Risk",
       COUNT(CustomerID) AS Customers,
       ROUND(AVG(AccountBalance), 2) AS AvgBalance,
       ROUND(AVG(MonthlyIncome), 2) AS AvgIncome
FROM bank_customers
WHERE "Customer Value" = 'Premium' AND Churned = 'No'
GROUP BY Region, AccountType, EmploymentStatus, "Credit Risk"
ORDER BY AvgBalance DESC
LIMIT 10;