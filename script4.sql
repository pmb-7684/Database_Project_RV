
SELECT *
FROM customer C
LEFT JOIN vehicle ON C.customer_id = vehicle.customer_id;


SELECT *
FROM customer C
LEFT JOIN vehicle ON C.customer_id = vehicle.customer_id
LEFT JOIN maintenance ON vehicle.VIN= maintenance.VIN
WHERE maintenance.record_id IS NOT NULL;

SELECT C.customer_id, vehicle.VIN,make,model,YEAR, Maintenance_date, cost
FROM customer C
LEFT JOIN vehicle ON C.customer_id = vehicle.customer_id
LEFT JOIN maintenance ON vehicle.VIN= maintenance.VIN
WHERE maintenance.record_id IS NOT NULL;

SELECT frst_name, last_name, email, job_title, salary
FROM employee;


SELECT C.customer_id, c.last_name, SUM(maintenance.cost), SUM(reservation.parking_cost), SUM(rentaloptions.cost)
FROM customer C
LEFT JOIN vehicle ON C.customer_id = vehicle.customer_id
LEFT JOIN maintenance ON vehicle.VIN= maintenance.VIN
LEFT JOIN reservation ON C.customer_id = reservation.customer_id
LEFT JOIN reservation_options ON reservation.reservation_id = reservation_options.reservation_id
LEFT JOIN rentaloptions ON reservation_options.option_id = rentaloptions.option_id
GROUP BY C.customer_id;
