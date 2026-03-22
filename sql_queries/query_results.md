# Bank Customer Analysis — SQL Query Results
**Author:** Christopher John  
**Database:** bank_analysis.db  
**Total Records:** 2,000 customers  

---

## Query 1 — Total Customers by Region

| Region | Total Customers |
|--------|----------------|
| Nairobi | 758 |
| Mombasa | 423 |
| Nakuru | 325 |
| Kisumu | 299 |
| Eldoret | 195 |

**Insight:** Nairobi holds the largest customer base at 38% of total customers.

---

## Query 2 — Default Rate by Region

| Region | Total Loans | Defaults | Default Rate |
|--------|-------------|----------|--------------|
| Kisumu | 299 | 107 | 35.8% |
| Eldoret | 195 | 68 | 34.9% |
| Mombasa | 423 | 144 | 34.0% |
| Nairobi | 758 | 236 | 31.1% |
| Nakuru | 325 | 99 | 30.5% |

**Insight:** Kisumu has the highest default rate. However the narrow 6% spread across regions confirms default risk is customer-driven not geography-driven.

---

## Query 3 — Average and Total Balance by Account Type

| Account Type | Customers | Avg Balance (KES) | Total Balance (KES) |
|-------------|-----------|-------------------|---------------------|
| Fixed Deposit | 330 | 264,510 | 87,288,454 |
| Current | 574 | 103,622 | 59,479,295 |
| Salary | 416 | 80,325 | 33,415,159 |
| Savings | 680 | 51,239 | 34,842,484 |

**Insight:** Fixed Deposit holds the highest average balance and total deposits at KES 87.3M despite having the second fewest customers.

---

## Query 4 — Churn Rate by Customer Value Segment

| Customer Value | Total Customers | Churned | Churn Rate |
|---------------|----------------|---------|------------|
| Premium | 389 | 60 | 15.4% |
| High Value | 1,054 | 159 | 15.1% |
| Mid Value | 474 | 69 | 14.6% |
| Low Value | 83 | 11 | 13.3% |

**Insight:** Churn rate is consistent at ~15% across all segments, indicating churn is service-driven not balance-driven. Overall 15% churn exceeds the industry benchmark of 5–10%.

---

## Query 5 — High Risk Defaulted Customers

| Credit Risk | Loan Status | Customers | Avg Balance (KES) | Avg Credit Score |
|------------|-------------|-----------|-------------------|-----------------|
| High Risk | Defaulted | 500 | 102,990 | 402.6 |

**Insight:** 500 High Risk customers defaulted with an average credit score of 402.6 — confirming the credit scoring model accurately identifies default-prone customers. Notably, these customers hold an average balance of KES 102,990 despite defaulting.

---

## Query 6 — Top 10 Highest Balance Customers

| CustomerID | Region | Account Type | Balance (KES) | Credit Risk | Loan Status |
|-----------|--------|-------------|---------------|-------------|-------------|
| CUS0437 | Kisumu | Fixed Deposit | 494,247 | Medium Risk | Fully Paid |
| CUS0703 | Nairobi | Fixed Deposit | 494,187 | Very Low Risk | Active |
| CUS1137 | Nairobi | Fixed Deposit | 493,901 | Medium Risk | Active |
| CUS0378 | Mombasa | Fixed Deposit | 493,730 | Low Risk | Active |
| CUS0371 | Nakuru | Fixed Deposit | 491,509 | Very Low Risk | Fully Paid |
| CUS1715 | Mombasa | Fixed Deposit | 489,953 | High Risk | Active |
| CUS1081 | Nairobi | Fixed Deposit | 489,816 | Medium Risk | Defaulted |
| CUS1031 | Nakuru | Fixed Deposit | 489,426 | High Risk | Active |
| CUS0672 | Mombasa | Fixed Deposit | 488,605 | Very Low Risk | Active |
| CUS0147 | Nairobi | Fixed Deposit | 486,301 | Medium Risk | Fully Paid |

**Insight:** All top 10 customers hold Fixed Deposit accounts. Two High Risk customers appear in the top 10 — CUS1081 holds KES 489,816 yet has defaulted, suggesting wilful default rather than financial inability.

---

## Query 7 — Default Rate by Employment Status

| Employment Status | Total Customers | Defaults | Default Rate |
|------------------|----------------|----------|--------------|
| Student | 180 | 65 | 36.1% |
| Employed | 933 | 310 | 33.2% |
| Self-Employed | 603 | 195 | 32.3% |
| Unemployed | 284 | 84 | 29.6% |

**Insight:** Employment status is a weak default predictor — only 6% spread across all categories. Credit score remains the bank's most reliable predictor of default behaviour.

---

## Query 8 — Top 10 Premium Customers Who Churned

| CustomerID | Region | Account Type | Balance (KES) | Monthly Income (KES) | Credit Risk | Loan Status |
|-----------|--------|-------------|---------------|---------------------|-------------|-------------|
| CUS0419 | Nakuru | Fixed Deposit | 469,004 | 23,912 | High Risk | Defaulted |
| CUS1413 | Nairobi | Fixed Deposit | 462,855 | 253,522 | Medium Risk | Active |
| CUS0157 | Nakuru | Fixed Deposit | 432,494 | 238,692 | High Risk | Defaulted |
| CUS0948 | Nakuru | Fixed Deposit | 429,430 | 12,733 | High Risk | Defaulted |
| CUS0721 | Nakuru | Fixed Deposit | 411,636 | 48,082 | High Risk | Active |
| CUS0302 | Nairobi | Fixed Deposit | 411,154 | 117,548 | High Risk | Defaulted |
| CUS0174 | Eldoret | Fixed Deposit | 385,652 | 198,786 | High Risk | Defaulted |
| CUS0579 | Nakuru | Fixed Deposit | 366,326 | 5,713 | Medium Risk | Fully Paid |
| CUS1983 | Eldoret | Fixed Deposit | 323,253 | 118,781 | High Risk | Active |
| CUS0137 | Mombasa | Fixed Deposit | 314,210 | 225,249 | High Risk | Defaulted |

**Insight:** Nakuru accounts for 5 of the top 10 churned Premium customers. 7 of 10 are High Risk and 6 of 10 have Defaulted — suggesting churn is strongly linked to debt-avoidance behaviour rather than service dissatisfaction.

---

## Query 9 — Average Credit Score by Loan Status

| Loan Status | Customers | Avg Credit Score | Avg Loan Amount (KES) |
|------------|-----------|-----------------|----------------------|
| Fully Paid | 636 | 690.2 | 192,775 |
| Active | 710 | 593.1 | 138,293 |
| Defaulted | 654 | 450.2 | 45,662 |

**Insight:** Credit score descends perfectly across loan repayment categories — Fully Paid (690) → Active (593) → Defaulted (450) — each falling within its corresponding risk band. This is the strongest validation of the credit scoring model in the entire analysis.

---

## Query 10 — Most Valuable Customer Profile

| Region | Account Type | Employment | Credit Risk | Customers | Avg Balance (KES) | Avg Income (KES) |
|--------|-------------|-----------|-------------|-----------|-------------------|-----------------|
| Mombasa | Fixed Deposit | Student | Low Risk | 1 | 493,730 | 29,748 |
| Nairobi | Fixed Deposit | Unemployed | Very Low Risk | 2 | 470,510 | 7,654 |
| Mombasa | Fixed Deposit | Self-Employed | Very Low Risk | 1 | 467,063 | 219,890 |
| Mombasa | Fixed Deposit | Self-Employed | Low Risk | 1 | 454,377 | 169,727 |
| Eldoret | Fixed Deposit | Employed | Very Low Risk | 1 | 425,888 | 171,271 |
| Mombasa | Fixed Deposit | Student | Very Low Risk | 1 | 424,707 | 20,174 |
| Kisumu | Fixed Deposit | Self-Employed | High Risk | 3 | 413,768 | 166,050 |
| Nairobi | Fixed Deposit | Student | Very Low Risk | 2 | 405,231 | 18,207 |
| Mombasa | Fixed Deposit | Unemployed | Medium Risk | 2 | 398,119 | 9,166 |
| Eldoret | Fixed Deposit | Unemployed | Low Risk | 1 | 388,768 | 8,311 |

**Insight:** The bank's most valuable retained customers are exclusively Fixed Deposit holders across all regions. Mombasa dominates with 5 of the top 10 profiles. Several top profiles show very low income relative to high balances — indicating a retiree and inherited wealth segment that standard income-based profiling would undervalue.

---

*Analysis performed using SQLite via DB Browser. All findings cross-validated against Microsoft Excel Pivot Tables.*
