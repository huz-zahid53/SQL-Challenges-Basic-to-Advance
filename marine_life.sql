Create database marinelife; -- Create a database named 'marinelife'

use marinelife; -- Using to the 'marinelife' database

--- Creating a table named 'marine_life' with columns for species name, common name, length, weight, and habitat type

CREATE TABLE marine_life (
species_name   TEXT,
common_name    TEXT,
length         REAL,
weight         REAL,
habitat_type   TEXT
);

--- Inserting sample data into the 'marine_life' table

INSERT INTO marine_life (species_name, common_name, length, weight, habitat_type) VALUES
('clownfish', 'Nemo', 4.5, 0.3, 'coral reef'),
('clownfish', 'Marlin', 5, 0.4, 'coral reef'),
('clownfish', 'Dory', 6.5, 0.6, 'coral reef'),
('clownfish', 'Bubbles', 9, 0.3, 'coral reef'),
('clownfish', 'Bob', 3.2, 0.5, 'coral reef'),
('clownfish', 'Phil', 2.9, 0.7, 'rocky shore'),
('clownfish', 'John', 10, 0.9, 'rocky shore'),
('octopus', 'Ink', 17.7165, 18.7393, 'coastal marine waters'),
('octopus', 'Squishy', 7.87402, 8.81849, 'coastal marine waters'),
('octopus', 'Otto', 9.84252, 15.4324, 'coastal marine waters'),
('octopus', 'Henry', 12.9921, 24.2508, 'coastal marine waters'),
('octopus', 'George', 4.72441, 4.40925, 'coastal marine waters'),
('starfish', 'Patrick', 12, 4.5, 'kelp forest'),
('starfish', 'Sandy', 18, 6, 'kelp forest'),
('starfish', 'Larry', 30, 5.5, 'kelp forest'),
('starfish', 'Carl', 45, 6, 'kelp forest');

SELECT * FROM marine_life;


--- Query to identify imposters based on species-specific criteria for length, weight, and habitat type
-- I tried the below query but had not get the appropriate result...

SELECT 
species_name, 
common_name, 
length, 
weight, 
habitat_type,
CASE 
    WHEN species_name = 'clownfish' AND (
        length BETWEEN 3 AND 7) AND (
        weight BETWEEN 0.2 AND 0.8) AND (
        habitat_type LIKE '%coral%'
        )
    THEN 'Not Imposter'
    WHEN species_name = 'octopus' AND (
        length BETWEEN 12 AND 36) AND (
        weight BETWEEN 6.6 AND 23) AND (
        habitat_type LIKE '%coastal%'
        )
    THEN 'Not Imposter'
    WHEN species_name = 'starfish' AND (
        length BETWEEN 0.5 AND 40) AND (
        weight BETWEEN 3.3 AND 6.6) AND (
        habitat_type LIKE '%kelp%'
        )
    THEN 'Not Imposter'        
ELSE 'Imposter'    
END AS imposter_status
FROM marine_life;



-- Then I tried this below query and this got me the appropriate result...

-- -- #### THIS QUERY IS FINAL VERSION (IN MYSQL/SQLITE) ####

-- Now a creature is only flagged as an impostor if it fails ALL three criteria for its species:
-- Wrong length range AND wrong weight range AND wrong habitat
-- This means a creature must be outside the expected range for length AND weight AND be in the wrong habitat type to be considered an impostor. 
-- If it only fails one or two of these criteria, it's still considered legitimate.

SELECT 
    species_name,
    common_name,
    length,
    weight,
    habitat_type,
    CASE 
        WHEN species_name = 'clownfish' AND (
            (length < 3 OR length > 7) AND 
            (weight < 0.2 OR weight > 0.8) AND 
            habitat_type != 'coral reef'
        ) THEN 'impostor'
        
        WHEN species_name = 'octopus' AND (
            (length < 12 OR length > 36) AND 
            (weight < 6.6 OR weight > 23) AND 
            habitat_type != 'coastal marine waters'
        ) THEN 'impostor'
        
        WHEN species_name = 'starfish' AND (
            (length < 0.5 OR length > 40) AND 
            (weight < 3.3 OR weight > 6.6) AND 
            habitat_type != 'kelp forest'
        ) THEN 'impostor'
        
        ELSE 'not impostor'
    END AS impostor_status
FROM marine_life;