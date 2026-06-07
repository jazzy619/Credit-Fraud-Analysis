WITH repeat_fraud_cards AS (
    SELECT cc_num
    FROM transactions
    WHERE is_fraud = 1
    GROUP BY cc_num
    HAVING COUNT(*) >= 2
),

customer_fraud_summary AS (
    SELECT
        t.cc_num,
        t.first,
        t.last,
        t.gender,
        t.job,
        t.state,
        COUNT(*) AS total_transactions,
        SUM(t.is_fraud) AS fraud_incidents,
        ROUND(SUM(CASE WHEN t.is_fraud = 1 THEN t.amt ELSE 0 END), 2) AS total_fraud_loss,
        ROUND(SUM(t.amt), 2) AS total_spend
    FROM transactions t
    JOIN repeat_fraud_cards r ON t.cc_num = r.cc_num
    GROUP BY t.cc_num, t.first, t.last, t.gender, t.job, t.state
)

SELECT TOP 20 *
FROM customer_fraud_summary
ORDER BY total_fraud_loss DESC;
