SELECT
    SUM(CASE WHEN trans_date_trans_time IS NULL THEN 1 ELSE 0 END) AS null_trans_date,
    SUM(CASE WHEN amt IS NULL THEN 1 ELSE 0 END) AS null_amt,
    SUM(CASE WHEN merchant IS NULL THEN 1 ELSE 0 END) AS null_merchant,
    SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS null_category,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS null_gender,
    SUM(CASE WHEN state IS NULL THEN 1 ELSE 0 END) AS null_state,
    SUM(CASE WHEN job IS NULL THEN 1 ELSE 0 END) AS null_job,
    SUM(CASE WHEN is_fraud IS NULL THEN 1 ELSE 0 END) AS null_is_fraud
FROM transactions;
