SELECT
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS total_fraud,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 3) AS fraud_rate_pct,
    ROUND(SUM(CASE WHEN is_fraud = 1 THEN amt ELSE 0 END), 2) AS total_fraud_value,
    ROUND(AVG(CASE WHEN is_fraud = 1 THEN amt END), 2) AS avg_fraud_transaction,
    ROUND(AVG(CASE WHEN is_fraud = 0 THEN amt END), 2) AS avg_legit_transaction
FROM transactions;
