-- Count the number of facilities
SELECT COUNT(DISTINCT FacilityId) FROM Bookings;

-- Count the number of expensive facilities
SELECT COUNT(*) FROM Facilities WHERE MonthlyMaintenance = (SELECT MAX(MonthlyMaintenance) FROM Facilities);

-- Count the number of recommendations each member makes.
SELECT Recommendedby, COUNT(*)
	FROM Members
	WHERE RecommendedBy IS NOT NULL
	Group By RecommendedBy;

-- List the total slots booked per facility
SELECT FacilityId, SUM(Slots)
	FROM Bookings
	GROUP BY FacilityId;

-- List the total slots booked per facility in a given month
SELECT MONTHNAME(StartTime),SUM(Slots) FROM Bookings
  WHERE MONTHNAME(StartTime) = "January"
  GROUP BY MONTHNAME(StartTime);

-- List the total slots booked per facility per month
SELECT MONTHNAME(StartTime),SUM(Slots)
  FROM Bookings
  GROUP BY MONTHNAME(StartTime);

-- Find the count of members who have made at least one booking
SELECT COUNT(DISTINCT MemberId) FROM Bookings;

-- List facilities with more than 1000 slots booked
SELECT FacilityId, SUM(Slots)
        FROM Bookings
        GROUP BY FacilityId
        HAVING SUM(Slots) > 1000;

-- Find the total revenue of each facility
SELECT Id, SUM(InitialOutlay - MonthlyMaintenance) FROM Facilities GROUP BY Id;

-- Find facilities with a total revenue less than 1000


-- Output the facility id that has the highest number of slots booked


-- List the total slots booked per facility per month, part 2


-- List the total hours booked per named facility


-- List each member's first booking after September 1st 2012


-- Produce a list of member names, with each row containing the total member count


-- Produce a numbered list of members


-- Output the facility id that has the highest number of slots booked, again


-- Rank members by (rounded) hours used


-- Find the top three revenue generating facilities


-- Classify facilities by value


-- Calculate the payback time for each facility


-- Calculate a rolling average of total revenue
