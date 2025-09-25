-- #####################################################         $$ SCENARIO $$        #################################################################
-- Get a table with the columns Full_Name, employment_start_date, latest_occupation, and previous_occupation. 
-- It should be filtered to just crew members who have a different role in new_database than they do in old_database AND who are still employed.
-- #####################################################################################################################################################


-- Testing SUBSTRING function to remove first character from id_number in start_dates table
-- RESULT: new_id_number = 12345

SELECT SUBSTRING(id_number, 2) AS new_id_number
FROM start_dates;


-- #### THIS QUERY IS FINAL VERSION (IN SQLITE) VER-1 ####

SELECT 
    nd.full_name AS Full_Name,
    sd.employment_start_date,
    nd.occupation AS latest_occupation,
    od.occupation AS previous_occupation
FROM new_database nd
JOIN start_dates sd 
    ON TRIM(nd.id_number) = TRIM(sd.id_number)
JOIN old_database od 
    ON TRIM(SUBSTR(nd.id_number, 2)) = TRIM(CAST(od.id_number AS TEXT))
   AND od.date_of_birth = (
       CASE
           WHEN INSTR(nd.date_of_birth, '/') > 0
           THEN SUBSTR(nd.date_of_birth, 7, 4) || '-' ||
                SUBSTR(nd.date_of_birth, 4, 2) || '-' ||
                SUBSTR(nd.date_of_birth, 1, 2)
           ELSE nd.date_of_birth
       END
   )
WHERE TRIM(sd.employed_or_departed) = 'Employed'
  AND nd.occupation <> od.occupation
  AND sd.employment_start_date = (
      SELECT MAX(sd2.employment_start_date)
      FROM start_dates sd2
      WHERE sd2.id_number = sd.id_number
  )
ORDER BY nd.full_name;  


-- #### THIS QUERY IS FINAL VERSION (IN MYSQL) VER-1 ####

-- In the below query, we are converting the date format from 'DD/MM/YYYY' to 'YYYY-MM-DD' using string functions like "SUBSTR" and "CONCAT".
-- We are also converting the id_number from new_database to match the id_number format in old_database by removing the first character using SUBSTR.
-- In addition, we are using CAST to convert the id_number in old_database from INT to CHAR for comparison.
-- We are also ensuring that we only consider the most recent employment_start_date for each crew member.

SELECT 
    nd.full_name AS Full_Name,
    sd.employment_start_date,
    nd.occupation AS latest_occupation,
    od.occupation AS previous_occupation
FROM new_database nd
JOIN start_dates sd 
    ON nd.id_number = sd.id_number
JOIN old_database od 
    ON SUBSTR(nd.id_number, 2) = CAST(od.id_number AS CHAR)
   AND od.date_of_birth = (
       CASE
           WHEN INSTR(nd.date_of_birth, '/') > 0
           THEN CONCAT(SUBSTR(nd.date_of_birth, 7, 4), '-', SUBSTR(nd.date_of_birth, 4, 2), '-', SUBSTR(nd.date_of_birth, 1, 2))  -- YYYY-MM-DD ('YYYY' is positioned at 7 and we need to select 4 characters from there. This will be done for 'DD' and 'MM' too.)
           ELSE nd.date_of_birth
       END
   )
WHERE sd.employed_or_departed = 'Employed'
  AND nd.occupation <> od.occupation
  AND sd.employment_start_date = (
      SELECT MAX(sd2.employment_start_date)
      FROM start_dates sd2
      WHERE sd2.id_number = sd.id_number
  )
ORDER BY nd.full_name;


-- #### THIS QUERY IS FINAL VERSION (IN MYSQL) VER-2 ####

-- In the below query, we are converting the date format from 'DD/MM/YYYY' to 'YYYY-MM-DD' using "STR_TO_DATE ()" and "DATE_FORMAT()" functions.
-- "Coalesce" function is used to handle NULL values in date_of_birth columns.

SELECT 
    nd.full_name AS Full_Name,
    sd.employment_start_date,
    nd.occupation AS latest_occupation,
    od.occupation AS previous_occupation
FROM new_database nd
JOIN start_dates sd 
    ON nd.id_number = sd.id_number
JOIN old_database od 
    ON od.id_number = SUBSTR(nd.id_number, 2)
   AND COALESCE(od.date_of_birth, '') = COALESCE(
       DATE_FORMAT(STR_TO_DATE(nd.date_of_birth, '%d/%m/%Y'), '%Y-%m-%d'),
       nd.date_of_birth
   )
WHERE sd.employed_or_departed = 'Employed'
  AND TRIM(nd.occupation) <> TRIM(od.occupation)
  AND sd.employment_start_date = (
      SELECT MAX(sd2.employment_start_date)
      FROM start_dates sd2
      WHERE sd2.id_number = sd.id_number
  )
ORDER BY nd.full_name;