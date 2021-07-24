SELECT
    COUNT(serial_num) as number_of_elevators,
    customer_id
FROM fact_elevators
GROUP BY customer_id
ORDER BY customer_id