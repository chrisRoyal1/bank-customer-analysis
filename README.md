# bank_customer_analysis
This Analysis covers 2000 Customers with 18 variables across their transactions and details. It is an end to end analysis of clients' behavior, transaction history, and credit analysis in different geographical settings.

## Executive Summary
Risk: Validated that credit scores below 500 account for 70% of defaults.
Leakage: Identified KES 13.8M in lost deposits from Premium churn, primarily in Nakuru.
Liquidity: Confirmed Fixed Deposits as the primary asset driver (KES 87.3M).

# tools used
Excel for data cleaning, pivot tables and formulation, SQLite via DB Browser for data cleaning and querying, and Tableau for Visualization.

# Dataset
2000 customers,18 variables, bank transactions

# Business questions
  ## Risk & Loans
1. What is the loan default rate overall and by region?
2. Is there a relationship between credit score and loan default?
3. Which employment type has the highest default rate?

  ## Customer Value
4. Which account type holds the highest average balance?
5. Which region has the most valuable customers by average balance?
6. What is the relationship between monthly income and account balance?
  ## Churn Analysis
7. What is the overall churn rate, and which segment churns most?
8. Is there a relationship between credit score and churn?
9. Do customers with lower balances churn more?
  ## Operational
10. Which customer profile represents the highest risk to the bank?

 # Data Cleaning Process
   ## Perfomed check:
    Check      Findings   Action Taken
  Null checks - 0 _   None  taken
  Duplicates -  0 -    None taken
  Text abnormalities- None - None taken
  Data consistency- okay - None taken
  ## Additional columns
  1. Loyalty -- using monthly transactions
    Below 15 monthly transactions -Low engagement 
    15-34 transactions - Active 
    35-60 transactions - Highly Active 
    Above 60 transactions - Powerhouse user
  2. Age group -- Using Age
     Age range 18-25, 26-35, 36-50,51-70
     Assigned: Youths, Young-adults, Adults, and Seniors categories respectively
  3. Customer Value Segment -- using bank balance
     Below 10000 - Low value
     10000-50000 - Mid Value
     50001-150000 - High Value
     Above 150000 - Premium Customers
  4. Credit  Risk -- Using credit score
     Below 500 - Very High risk
     5001 - 650 - High Risk
     651 - 750 - Low Risk
     Above 750 - Very Low Risk customers

# Key Findings
  ## Risk & Credit Management
The 33% Default Gap: 1 in 3 loans is currently in default. A critical audit of lending "Hard Stops" is required to stabilize the portfolio.
The "Danger Zone" (Scores 350-500): This segment defaults at a staggering 70%. Immediate recommendation: Suspend uncollateralized lending to this bracket.
Model Validation: "Very Low Risk" customers show a 0% default rate, proving the credit scoring logic is highly effective for top-tier clients.
Income is a Distraction: Monthly income is a weak predictor of default. Credit Score remains the primary reliable metric for loan approval.
The Student Outlier: At 36%, students hold the highest default rate by employment type. Recommend "Guarantor-backed" products only.

  ## Revenue & Growth Strategy
The KES 13.8M "Leak": 60 Premium customers churned, taking massive liquidity with them. This represents a high-priority "White Glove" retention crisis.
Regional Crisis (Nairobi/Nakuru): 60% of all churned premium value is concentrated in these two hubs. Investigate branch-level service satisfaction immediately.
Fixed Deposit Dominance: Holding KES 87.3M, Fixed Deposits are the bank’s primary asset driver. Strategy: Incentivize "Savings-to-Fixed" migrations.
Mombasa Opportunity: Mombasa has the highest average balances but lower customer volume. This is the #1 target for affluent market expansion.
The "Churn-Debt" Link: 60% of churned Premium users also defaulted. Churn is often used as a debt-avoidance tactic; tighter coordination between CRM and Collections is needed.
# Business Recomendations
  **Executive Summary**: An end-to-end data project identifying a 33% default rate and KES 13.8M in churned deposits. This analysis provides the "Credit Floor" and "Regional Rescue" strategies to protect bank liquidity.

  ## Strategic Insights & Recommendations
1. The "Credit Floor" (Risk Mitigation)
Insight: Credit scores below 500 account for 70% of all defaults, regardless of high monthly income.
Recommendation: Implement a hard stop on all uncollateralized lending for scores < 500. Income-based lending is failing; score-based lending is the only path to safety. Bank 

2. The "Regional Rescue" (Retention)
Insight: 60% of the KES 13.8M lost in churned premium deposits is concentrated in Nairobi and Nakuru.
Recommendation: Deploy a targeted Retention Task Force to these hubs. An introduction of incentives like an interest bonus on Fixed Deposit renewals for high-value clients.

3. The "Mombasa Pivot" (Growth)
Insight: Mombasa holds the highest average balances but the lowest volume, representing a massive untapped affluent market.
Recommendation: Shift some marketing budget to a Mombasa premium customers campaign, leading with Fixed Deposits (the bank's most stable asset at KES 87.3M).

# Dashboard
https://public.tableau.com/app/profile/christopher.john7582/viz/BankRiskCustomerValuePerformanceDashboard/BankcustomersAnalysi?publish=yes


  
