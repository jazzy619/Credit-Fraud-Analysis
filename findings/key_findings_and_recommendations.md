# Key Findings & Recommendations

## Overview
Analysis of 1.29 million credit card transactions to identify the merchant 
categories, times of day, and customer profiles most associated with fraud.

## Key Findings

1. Overall fraud rate is low at 0.57%, but the average fraudulent transaction 
   is nearly 8 times higher in value than a legitimate one ($530 vs $68).

2. Online shopping (1.76%) and miscellaneous online (1.45%) categories have 
   the highest fraud rates — consistent with card not present fraud where no 
   physical card or ID verification is required.

3. Grocery in store transactions are a surprising exception with elevated 
   fraud rates (1.41%), most likely driven by card skimming devices installed 
   on physical payment terminals.

4. Fraud peaks sharply between 10pm and 11pm at nearly 3% — far higher than 
   the midnight to 3am window and roughly 25 times higher than daytime hours. 
   This suggests fraudsters exploit the end of day banking settlement period.

5. The combination of grocery in store transactions at 10pm and 11pm shows a 
   fraud rate exceeding 44% — 76 times above the overall baseline.

6. Two distinct repeat fraud victim profiles were identified: "ghost cards" 
   where every transaction is fraudulent, and "compromised active cards" where 
   fraud hides within a busy legitimate transaction history.

## Recommendations

1. Apply step up authentication (e.g. one time passcodes) automatically for 
   online transactions occurring between 10pm and 4am.

2. Deploy physical inspection routines for grocery store payment terminals, 
   prioritising late night hours when staff oversight is lowest.

3. Proactively reissue cards for customers showing two or more fraud incidents 
   and contact them directly.

4. Flag transactions significantly above a customer's average spend for manual 
   review, given fraud transactions are typically much higher value.

## Limitations

- The dataset is simulated, so specific percentages may differ from live data.
- Geographic distance between customer and merchant was not analysed — a 
  strong avenue for future work.
- Causation cannot be inferred; high fraud rates indicate where to investigate, 
  not why fraud is occurring with certainty.
