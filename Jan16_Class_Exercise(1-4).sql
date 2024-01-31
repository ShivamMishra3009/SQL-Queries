use pizzas;

#1
SELECT
    dvo.Day,
    dvo.Offer_at,
    ppi.Location,
    li.Other_spots
FROM
    day_vs_offer dvo
JOIN
    pizza_place_info ppi ON dvo.Offer_at = ppi.Pizza_place
JOIN
    location_info li ON ppi.Location = li.Location;


#2
SELECT
    ppi.Location,
    AVG(ppi.Average_price_for_1) / AVG(pi.Health_Index) AS health_price_metric
FROM
    pizza_place_info ppi
JOIN
    pizza_info pi ON ppi.Signature_Pizza = pi.Signature_Pizza
GROUP BY
    ppi.Location
ORDER BY
    health_price_metric DESC
LIMIT 5;


#3
CREATE TABLE new_locality (
    locality_name VARCHAR(50) NOT NULL,
    attraction_nearby VARCHAR(50) NOT NULL,
    added_date DATETIME DEFAULT NULL
);

CREATE TRIGGER after_insert
    After insert ON location_info
    FOR EACH ROW 
 INSERT INTO new_locality
 SET locality_name = new.location,
 attraction_nearby = new.other_spots,
 added_date  = now();
 
 # Insert something new into location_info and test if trigger works
 
 #4
 DELIMITER //

CREATE TRIGGER rectify_health_index
BEFORE INSERT ON pizza_info
FOR EACH ROW
BEGIN
    IF NEW.Health_Index < 0 THEN
        SET NEW.Health_Index = 0;
    ELSEIF NEW.Health_Index > 100 THEN
        SET NEW.Health_Index = 100;
    END IF;
END;

//

DELIMITER ;
