SELECT
    COUNT(DISTINCT contact_id) as number_of_contact_requests,
    EXTRACT(MONTH from creation) as month_request
FROM fact_contacts
GROUP BY month_request