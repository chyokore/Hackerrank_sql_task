/*Query the list of CITY names starting with vowels
(i.e., a, e, i, o, or u) from STATION.
Your result cannot contain duplicates.*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU]';

/*Find the difference between the total number of CITY entries in 
the table and the number of distinct CITY entries in the table.*/

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS Difference
FROM STATION;

/* Query the list of CITY names from STATION that do not 
start with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU]';

/*Query the list of CITY names from STATION which have vowels
(i.e., a, e, i, o, and u) as both their first and last
characters. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$';

/*Query the list of CITY names ending with vowels (a, e, i, o, u)
from STATION. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiouAEIOU]$'

/*Query the list of CITY names from STATION that do not end with vowels. 
Your result cannot contain duplicates.*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '[aeiouAEIOU]$';

/*Query the list of CITY names from STATION that either do not start with
vowels or do not end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$';

/*Query the list of CITY names from STATION that do not start with
vowels and do not end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$'
   AND CITY NOT REGEXP '^[aeiouAEIOU]'
   AND CITY NOT REGEXP '[aeiouAEIOU]$';

/*Query the Name of any student in STUDENTS who scored higher than  Marks.
Order your output by the last three characters of each name.
If two or more students both have names ending in the same last 
three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.*/

SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID ASC;

/*Write a query that prints a list of employee names
(i.e.: the name attribute) from the Employee table in alphabetical order.*/

SELECT NAME
FROM EMPLOYEE
ORDER BY NAME ASC;

/* Write a query that prints a list of employee names (i.e.: the name attribute)
for employees in Employee having a salary greater than  per month who 
have been employees for less than 10 months.
Sort your result by ascending employee_id.*/

SELECT name
FROM Employee
WHERE salary > 2000
  AND MONTHS < 10
ORDER BY employee_id ASC;

/* Query a count of the number of cities in CITY having a Population larger than .*/

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;

/*Query the total population of all cities in CITY where District is California.*/

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'CALIFORNIA'

/* Query the average population of all cities in CITY where District is California.*/

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'CALIFORNIA'

/* Query the average population for all cities in CITY, rounded down to the nearest integer.*/

SELECT FLOOR(AVG(POPULATION))
FROM CITY

/* Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.*/
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN'

/* Query the difference between the maximum and minimum populations in CITY.*/

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;
