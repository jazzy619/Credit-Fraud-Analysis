SELECT
    DATEPART(HOUR, trans_date_trans_time) AS trans_hour,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraud_count,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_rate_pct
FROM transactions
GROUP BY DATEPART(HOUR, trans_date_trans_time)
ORDER BY trans_hour;
