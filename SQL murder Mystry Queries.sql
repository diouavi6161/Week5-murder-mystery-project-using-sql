
SELECT * FROM crime_scene_report WHERE type = 'murder' AND city = 'SQL City' AND date = 20180115;
SELECT * FROM person WHERE address_street_name = 'Northwestern Dr' ORDER BY address_number DESC LIMIT 1;
SELECT * FROM person WHERE name = 'Annabel Miller'AND address_street_name = 'Franklin Ave';
SELECT * FROM interview WHERE person_id in (14887,16371);

 SELECT p.*,gfn.membership_start_date,gfn.membership_status FROM person as p
 INNER JOIN drivers_license as dl on dl.id = p.license_id 
 INNER JOIN get_fit_now_member as gfn on p.id = gfn.person_id 
 INNER JOIN get_fit_now_check_in as gfc on gfc.membership_id = gfn.id 
 WHERE plate_number LIKE '%H42W%' AND gender = 'male' AND membership_status = 'gold' AND gfn.id LIKE "48Z%" AND check_in_date=20180109;
 
 
SELECT * FROM interview WHERE person_id = 67318;

SELECT p.*, dl.car_make, dl.car_model, dl.hair_color, dl.height, inc.annual_income FROM person as p 
INNER JOIN income as inc on inc.ssn = p.ssn 
INNER JOIN drivers_license as dl on dl.id = p.license_id 
INNER JOIN facebook_event_checkin as fec on p.id = fec.person_id 
WHERE car_make = 'Tesla' AND car_model = 'Model S' AND hair_color='red' AND height BETWEEN 65 AND 67;


INSERT INTO solution VALUES (1,'Miranda Priestly');
SELECT value FROM solution;


