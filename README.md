# Credit Card Fraud Analysis

## Overview
Credit card fraud costs the financial industry over $33 billion annually.This project analyses 1.29 million real world credit card transactions to identify which merchant categories, times of day, and customer profiles are most associated with fraudulent activity, and translates those findings into actionable recommendations a bank could implement.

## Tools Used
- **SQL (Microsoft SQL Server)** — data exploration, quality checks, and fraud pattern analysis
- **Excel** — data cleaning, pivot analysis, and an interactive dashboard with KPIs
- **Tableau** — an interactive dashboard published to Tableau Public

## Key Findings
- Overall fraud rate is 0.57%, but the average fraud transaction is nearly 8x higher in value than a legitimate one ($530 vs $68)
- Online shopping (1.76%) and miscellaneous online categories have the highest fraud rates — consistent with card not present fraud
- Grocery in store transactions are a surprising exception (1.41%) — likely driven by card skimming at physical terminals
- Fraud peaks sharply at 10pm and 11pm — roughly 25x higher than daytime hours
- Grocery in store at 10pm shows a fraud rate exceeding 44% — 76x above baseline
- Two distinct repeat fraud profiles identified: "ghost cards" and "compromised active cards"

## Interactive Tableau Dashboard
[https://public.tableau.com/app/profile/james.udoh/viz/CreditCardFraudAnalysis_17821803169300/FraudAnalysisDashboard](https://public.tableau.com/views/CreditCardFraudAnalysis_17821803169300/FraudAnalysisDashboard?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Repository Structure
- `/sql` — all SQL queries with comments explaining each step
- `/excel` — Excel workbook with pivot tables, charts, and dashboard
- `/tableau` — link to the published Tableau dashboard
- `/data` — data dictionary explaining all columns
- `/findings` — written summary of findings and recommendations

## Dataset
Credit Card Fraud Detection Dataset (Kaggle): 
https://www.kaggle.com/datasets/kartik2112/fraud-detection

## Methodology
The analysis began in SQL by establishing baseline fraud statistics and validating data quality, followed by segmentation across merchant category, time of day, geography, and customer behaviour. Findings were then visualised in Excel for accessibility and in Tableau for interactive exploration. Each finding was connected to a real world fraud mechanism and a corresponding operational recommendation.
