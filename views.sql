CREATE VIEW view_customers  AS
SELECT *
FROM Customer;

CREATE VIEW view_RV_maintenance  AS
SELECT C.customer_id, vehicle.VIN,make,model,YEAR, Maintenance_date, cost
FROM customer C
LEFT JOIN vehicle ON C.customer_id = vehicle.customer_id
LEFT JOIN maintenance ON vehicle.VIN= maintenance.VIN
WHERE maintenance.record_id IS NOT NULL;

CREATE VIEW view_Employee_Info AS
SELECT frst_name, last_name, email, job_title, salary
FROM employee;

CREATE VIEW view_Charges_Per_Customer AS
SELECT C.customer_id, c.last_name, SUM(maintenance.cost), SUM(reservation.parking_cost), SUM(rentaloptions.cost)
FROM customer C
LEFT JOIN vehicle ON C.customer_id = vehicle.customer_id
LEFT JOIN maintenance ON vehicle.VIN= maintenance.VIN
LEFT JOIN reservation ON C.customer_id = reservation.customer_id
LEFT JOIN reservation_options ON reservation.reservation_id = reservation_options.reservation_id
LEFT JOIN rentaloptions ON reservation_options.option_id = rentaloptions.option_id
GROUP BY C.customer_id;

CREATE VIEW view_Charges_Per_supplier AS
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