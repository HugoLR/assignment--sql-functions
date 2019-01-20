-- How many days are between the current date and the f_bday column?
SELECT
  DATEDIFF(CURDATE(), Birthday)  AS "Days" FROM Friends
  WHERE Birthday IS NOT NULL;

-- How old are our friends?
SELECT
  FLOOR(DATEDIFF(CURDATE(), Birthday) / 365 ) AS "Years" FROM Friends
  WHERE Birthday IS NOT NULL;

-- Write a query to know the day of the week a friends’ birthday is on.
SELECT
  DAYNAME(Birthday) AS "Day of the week" FROM Friends
  WHERE Birthday IS NOT NULL;

-- How many birthdays do we have in each month?
SELECT
  MONTHNAME(Birthday) AS "Month of Birthday",
  COUNT(Birthday)
  FROM Friends
  WHERE Birthday IS NOT NULL
  GROUP BY MONTHNAME(Birthday);
