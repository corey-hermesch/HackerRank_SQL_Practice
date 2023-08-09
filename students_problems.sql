## HackerRank MySQL STUDENTS Problems ##
use 311_data;

SELECT *
FROM cases;

######### 1. 
/* Query the Name of any student in STUDENTS who scored higher than Marks. 
Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three 
characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.*/

SELECT dept_division, council_district
FROM cases
WHERE council_district > 3
ORDER BY RIGHT (dept_division,3)
;

/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/*
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name,3), ID;
*/

######### 2. 
/*Write a query that prints a list of employee names (i.e.: the name attribute) 
from the Employee table in alphabetical order.*/

/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/*SELECT name
FROM Employee
ORDER BY name;
*/

######### 3. 
/* Write a query that prints a list of employee names (i.e.: the name attribute) 
for employees in Employee having a salary greater than per month who have been 
employees for less than months. Sort your result by ascending employee_id.*/

/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/*
SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id;
*/

######### 4.  HARD ONE!!!  ##########

/* Julia conducted a 15 days of learning SQL contest. The start date of the 
contest was March 01, 2016 and the end date was March 15, 2016.

Write a query to print total number of unique hackers who made at least 1
submission each day (starting on the first day of the contest), and find 
the hacker_id and name of the hacker who made maximum number of submissions 
each day. If more than one such hacker has a maximum number of submissions, 
print the lowest hacker_id. The query should print this information for 
each day of the contest, sorted by the date.*/

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_schema = '311_data' and table_name = 'cases'
;

SELECT COUNT(DISTINCT dept_division) as div_cnt
FROM cases;

SELECT case_late = 'NO' AS temp_bool
FROM cases;

SELECT 0 as n UNION ALL SELECT 1 UNION ALL SELECT 2;

/*
SELECT submission_date, temp.hacker_id, name, submsn_cnt
FROM (
    SELECT submission_date, hacker_id, COUNT(submission_id) AS submsn_cnt
    FROM Submissions
    GROUP BY submission_date, hacker_id
     ) as temp
    JOIN Hackers USING (hacker_id)
    ORDER BY submission_date, hacker_id
;
*/

/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */
/* HERE IS THE SOLUTION TO THE HACKER RANK PROBLEM */