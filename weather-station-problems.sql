## HackerRank MySQL weather station Problems ##

######## 1. 
/* 
Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes 
first when ordered alphabetically.
The STATION table is described as follows:
Field  | Type
ID     | NUMBER
CITY   | VARCHAR2(21)
STATE  | VARCHAR2(2)
LAT_N  | NUMBER
LONG_W | NUMBER
where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

# First, a little practice
use 311_data;

SELECT *
FROM cases;

SELECT dept_division, name_length
FROM (
	SELECT DISTINCT dept_division, LENGTH(dept_division) as name_length
	FROM cases
	WHERE (length(dept_division))= 
		(
		SELECT min(length(dept_division))
		FROM cases
		)
	ORDER BY dept_division
	LIMIT 1
	) as t
    UNION
SELECT dept_division, name_length
FROM (
	SELECT DISTINCT dept_division, LENGTH(dept_division) as name_length
	FROM cases
	WHERE (length(dept_division))= 
		(
		SELECT max(length(dept_division))
		FROM cases
		)
	ORDER BY dept_division
	LIMIT 1
    ) as u
;

/* HERE IS THE ACTUAL HACKER RANK SOLUTION:
   There is probably an easier way, maybe using a CASE statement */
/*

SELECT CITY, name_length
FROM (
    SELECT DISTINCT CITY, LENGTH(CITY) as name_length
    FROM STATION
    WHERE (length(CITY))= 
        (
        SELECT min(length(CITY))
        FROM STATION
        )
    ORDER BY CITY
    LIMIT 1
    ) as t
    UNION
SELECT CITY, name_length
FROM (
    SELECT DISTINCT CITY, LENGTH(CITY) as name_length
    FROM STATION
    WHERE (length(CITY))= 
        (
        SELECT max(length(CITY))
        FROM STATION
        )
    ORDER BY CITY
    LIMIT 1
    ) as u
;
*/

######## 2. 
/* Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.
*/
# try to solve this with the students table in capstones db first
USE capstones;
SELECT * FROM students;

SELECT student_name
FROM students
WHERE 
	student_name LIKE 'a%'
    OR student_name LIKE 'e%' 
	OR student_name LIKE 'i%' 
    OR student_name LIKE 'o%' 
    OR student_name LIKE 'u%'
;
# That query will have duplicates I'm afraid. Check with 311_data
use 311_data;
SELECT * FROM cases;

SELECT DISTINCT service_request_type
FROM cases
WHERE 
	service_request_type LIKE 'a%'
    OR service_request_type LIKE 'e%' 
	OR service_request_type LIKE 'i%' 
    OR service_request_type LIKE 'o%' 
    OR service_request_type LIKE 'u%'
;

/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/*
SELECT DISTINCT CITY
FROM STATION
WHERE 
    CITY LIKE 'a%'
    OR CITY LIKE 'e%' 
    OR CITY LIKE 'i%' 
    OR CITY LIKE 'o%' 
    OR CITY LIKE 'u%'
ORDER BY CITY
;
*/

####### 3.
/* Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
as both their first and last characters. Your result cannot contain duplicates.*/
SELECT DISTINCT service_request_type
FROM cases
WHERE 
	service_request_type REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$'
;
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/*
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[AEIOUaeiou].*[AEIOUaeiou]$'
;
*/

######## 4. 
/* Query the list of CITY names from STATION that do not start with vowels. 
Your result cannot contain duplicates. */
SELECT DISTINCT service_request_type
FROM cases
WHERE 
	service_request_type REGEXP '^[^aeiouAEIOU].*'
;
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/*
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^AEIOUaeiou]'
;
*/

######## 5. 
/* Query the list of CITY names from STATION that do not end with vowels. 
Your result cannot contain duplicates. */

SELECT DISTINCT service_request_type
FROM cases
WHERE 
	service_request_type REGEXP '^[^aeiouAEIOU].*'
;
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/*
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[^aeiouAEIOU]$'
;
*/

####### 6. 
/* Query the list of CITY names from STATION that either do not start with vowels 
or do not end with vowels.  Your result cannot contain duplicates.
*/
SELECT DISTINCT service_request_type
FROM cases
WHERE 
	service_request_type REGEXP '^[^aeiouAEIOU]'
    OR service_request_type REGEXP '[^aeiouAEIOU]$'
;

/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiouAEIOU]'
    OR CITY REGEXP '[^aeiouAEIOU]$'
    ;
*/

######## 7.
/* Query the list of CITY names from STATION that do not start with vowels 
and do not end with vowels. Your result cannot contain duplicates. */
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM 
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[^aeiouAEIOU].*[^aeiouAEIOU]$'
;
*/




