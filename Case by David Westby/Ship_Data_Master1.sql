CREATE DATABASE ship_data_master; --Creating ship_data_master database
USE ship_data_master; --Using ship_data_master database


--Creating "start_dates" table

CREATE TABLE start_dates (
    id_number VARCHAR(10),
    date_of_birth DATE,
    employment_start_date DATE,
    employed_or_departed VARCHAR(10)
);


-- Inserting data into "start_dates" table

INSERT INTO start_dates (id_number, date_of_birth, employment_start_date, employed_or_departed) 
VALUES
('G12345', '1985-02-14', '2019-12-07', 'Employed'), 
('R23456', '1990-06-21', '2015-12-08', 'Departed'),
('T34567', '1995-09-03', '2017-12-09', 'Employed'),
('E45678', '1988-12-07', '2015-12-10', 'Departed'),
('W56789', '1993-04-28', '2020-12-11', 'Departed'),
('E67890', '1987-10-17', '2005-12-12', 'Departed'),
('R78901', '1992-03-02', '2022-12-13', 'Departed'),
('E89012', '1997-05-12', '2020-12-14', 'Employed'),
('Q90123', '1991-08-30', '2015-12-15', 'Employed'),
('W1234',  '1996-11-23', '2013-12-16', 'Employed'),
('R23401', '1984-07-15', '2009-12-17', 'Departed'),
('T34012', '1989-02-01', '2017-12-09', 'Employed'),
('Y45670', '1994-06-09', '2015-12-10', 'Departed'),
('Y56780', '1983-11-07', '2020-12-11', 'Departed'),
('E67809', '1988-03-24', '2005-12-12', 'Employed'),
('W79012', '1993-09-18', '2022-12-13', 'Departed'),
('Q90123', '1986-12-02', '2020-12-14', 'Employed'),
('W12345', '1991-04-19', '2015-12-15', 'Departed'),
('R23456', '1996-08-13', '2013-12-16', 'Employed'),
('Y34567', '1985-01-05', '2009-12-17', 'Employed'),
('T45678', '1990-05-31', '2007-12-09', 'Departed'),
('Y56789', '1995-09-21', '2004-12-10', 'Employed'),
('U67890', '1988-11-25', '2013-12-11', 'Employed'),
('I78901', '1993-02-16', '2001-12-12', 'Employed'),
('I89012', '1997-06-29', '2022-12-13', 'Employed'),
('V12345', '1989-06-01', '2015-12-14', 'Employed'),
('G23456', '1994-08-16', '2009-12-15', 'Departed'),
('F34567', '1985-01-25', '2013-12-16', 'Employed'),
('R45678', '1990-04-09', '2015-12-14', 'Employed'),
('R56789', '1995-07-02', '2015-12-14', 'Departed'),
('D67890', '1988-11-27', '2015-12-14', 'Departed');


--Creating "new_database" table

CREATE TABLE new_database (
    full_name VARCHAR(100),
    id_number VARCHAR(20),
    date_of_birth DATE,
    occupation VARCHAR(50)
);

--Inserting data into "new_database" table

INSERT INTO new_database (full_name, id_number, date_of_birth, occupation) 
VALUES
('John Smith', 'G12345', '1985-02-14', 'Captain'),
('John Smith', 'R23998', '1983-04-06', 'Deckhand'),
('Emily Johnson', 'R23456', '1990-06-21', 'First Mate'),
('William Brown', 'T34567', '1995-09-03', 'First Mate'),
('Olivia Davis', 'E45678', '1988-12-07', 'Deckhand'),
('James Wilson', 'W56789', '1993-04-28', 'Cook'),
('Benjamin Garcia', 'E67890', '1987-10-17', 'Electrician'),
('Sophia Martinez', 'R78901', '1992-03-02', 'Fisheries Observer'),
('Michael Robinson', 'E89012', '1997-05-12', 'Mechanic'),
('Elizabeth Clark', 'Q90123', '1991-08-30', 'Stewardess'),
('Matthew Rodriguez', 'W1234', '1996-11-23', 'Deck Officer'),
('Sarah Lewis', 'R23401', '1984-07-15', 'Bosun'),
('Christopher Lee', 'T34012', '1989-02-01', 'Navigation Officer'),
('Samantha Walker', 'Y45670', '1994-06-09', 'Stewardess'),
('Jason Hall', 'Y56780', '1983-11-07', 'Safety Officer'),
('Rachel Young', 'E67809', '1988-03-24', 'Purser'),
('Justin Allen', 'W79012', '1993-09-18', 'Purser'),
('Lauren King', 'Q90123', '1986-12-02', 'Safety Officer'),
('Anthony Wright', 'W12345', '1991-04-19', 'Quartermaster'),
('Tiffany Scott', 'R23456', '1996-08-13', 'Messman'),
('Brandon Green', 'Y34567', '1985-01-05', 'Welder'),
('Ashley Baker', 'T45678', '1990-05-31', 'Laundryman'),
('Kevin Nelson', 'Y56789', '1995-09-21', 'Refrigeration Engineer'),
('Alexandra Carter', 'U67890', '1988-11-25', 'Carpenter'),
('Jeremy Mitchell', 'I78901', '1993-02-16', 'Diver'),
('Madison Perez', 'I89012', '1997-06-29', 'Fisheries Observer'),
('Matthew Davis', 'V12345', '1989-06-01', 'Captain'),
('Emily Brown', 'G23456', '1994-08-16', 'First Mate'),
('William Garcia', 'F34567', '1985-01-25', 'Engineer'),
('Olivia Rodriguez', 'R45678', '1990-04-09', 'Quartermaster'),
('James Martinez', 'R56789', '1995-07-02', 'Quartermaster'),
('Benjamin Clark', 'D67890', '1988-11-27', 'Quartermaster'),
('Sophia Robinson', 'C78901', '1993-02-18', 'Quartermaster'),
('Michael Lee', 'V89012', '1998-04-22', 'Quartermaster'),
('Elizabeth Walker', 'P90123', '1992-07-15', 'Stewardess');


--Creating "old_database" table

CREATE TABLE old_database (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    id_number INT,
    date_of_birth DATE,
    occupation VARCHAR(50)
);

--Inserting data into "old_database" table

INSERT INTO old_database (first_name, last_name, id_number, date_of_birth, occupation) 
VALUES
('John', 'Smith', 12345, '1985-02-14', 'Captain'),
('Emily', 'Johnson', 23456, '1990-06-21', 'First Mate'),
('William', 'Brown', 34567, '1995-09-03', 'Engineer'),
('Olivia', 'Davis', 45678, '1988-12-07', 'Deckhand'),
('James', 'Wilson', 56789, '1993-04-28', 'Cook'),
('Benjamin', 'Garcia', 67890, '1987-10-17', 'Electrician'),
('Sophia', 'Martinez', 78901, '1992-03-02', 'Radio Operator'),
('Michael', 'Robinson', 89012, '1997-05-12', 'Mechanic'),
('Elizabeth', 'Clark', 90123, '1991-08-30', 'Stewardess'),
('Matthew', 'Rodriguez', 1234, '1996-11-23', 'Deck Officer'),
('Sarah', 'Lewis', 23401, '1984-07-15', 'Bosun'),
('Christopher', 'Lee', 34012, '1989-02-01', 'Navigation Officer'),
('Samantha', 'Walker', 45670, '1994-06-09', 'Environmental Officer'),
('Jason', 'Hall', 56780, '1983-11-07', 'Safety Officer'),
('Rachel', 'Young', 67809, '1988-03-24', 'Purser'),
('Justin', 'Allen', 79012, '1993-09-18', 'Able Seaman'),
('Lauren', 'King', 90123, '1986-12-02', 'Deck Engineer'),
('Anthony', 'Wright', 12345, '1991-04-19', 'Quartermaster'),
('Tiffany', 'Scott', 23456, '1996-08-13', 'Messman'),
('Brandon', 'Green', 34567, '1985-01-05', 'Welder'),
('Ashley', 'Baker', 45678, '1990-05-31', 'Laundryman'),
('Kevin', 'Nelson', 56789, '1995-09-21', 'Refrigeration');

SELECT * FROM start_dates;
SELECT * FROM new_database;
SELECT * FROM old_database;

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