WITH combined_records AS (
    SELECT sr.payment_id, sr.cost, sr.payment_date, si.company_name AS entity_name
    FROM supplier_record sr
    JOIN supplier si ON sr.company_id = si.company_id
    UNION ALL
    SELECT gr.payment_id, gr.cost, gr.payment_date, gi.govt_name AS entity_name
    FROM govt_record gr
    JOIN government gi ON gr.govt_id = gi.govt_id
)

SELECT payment_id, entity_name, SUM(cost) AS total_amount
FROM combined_records 
GROUP BY payment_id, entity_name;