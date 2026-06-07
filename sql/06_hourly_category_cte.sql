WITH hourly_category_fraud AS (
    SELECT
        category,
        DATEPART(HOUR, trans_date_trans_time) AS trans_hour,
        COUNT(*) AS total_transactions,
        SUM(is_fraud) AS fraud_count,
        ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_rate_pct,
        ROUND(SUM(CASE WHEN is_fraud = 1 THEN amt ELSE 0 END), 2) AS fraud_value
    FROM transactions
    GROUP BY category, DATEPART(HOUR, trans_date_trans_time)
)

SELECT
    category,
    trans_hour,
    total_transactions,
    fraud_count,
    fraud_rate_pct,
    fraud_value
FROM hourly_category_fraud
WHERE total_transactions > 200
  AND fraud_rate_pct > 1.5
ORDER BY fraud_value DESC;
