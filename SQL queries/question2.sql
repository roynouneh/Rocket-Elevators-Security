SELECT
    COUNT(DISTINCT quote_id) as number_of_quote_requests,
    EXTRACT(MONTH from creation) as month_request
FROM fact_quotes
GROUP BY month_request