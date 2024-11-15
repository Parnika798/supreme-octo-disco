use NewProject;
-- Query Implementation
-- 1. Parties with more than 10 candidates (HAVING, COUNT)
SELECT Party.Party_Name, COUNT(Candidate.Candidate_ID) AS Number_Of_Candidates
FROM Party
JOIN Candidate ON Party.Party_ID = Candidate.Party_ID
GROUP BY Party.Party_Name
HAVING COUNT(Candidate.Candidate_ID) > 10;

-- 2. Candidates with votes greater than 100000 (HAVING and GROUP BY)
SELECT Candidate.Candidate_Name, SUM(Votes.TotalVotes) AS Total_Votes
FROM Votes
JOIN Candidate ON Votes.Candidate_ID = Candidate.Candidate_ID
GROUP BY Candidate.Candidate_Name
HAVING SUM(Votes.TotalVotes) > 100000;

-- 3. Average vote percentage by party (GROUP BY, AVG function,Round function)
SELECT Party.Party_Name, ROUND(AVG(Votes.Votes_Percent), 2) AS Avg_Vote_Percent
FROM Votes
JOIN Candidate ON Votes.Candidate_ID = Candidate.Candidate_ID
JOIN Party ON Candidate.Party_ID = Party.Party_ID
GROUP BY Party.Party_Name
ORDER BY Avg_Vote_Percent DESC;


-- 4. Maximum and minimum vote percentages by party (ROUND function)
SELECT Party.Party_Name, 
       ROUND(MAX(Votes.Votes_Percent), 2) AS Max_Vote_Percent,
       ROUND(MIN(Votes.Votes_Percent), 2) AS Min_Vote_Percent
FROM Votes
JOIN Candidate ON Votes.Candidate_ID = Candidate.Candidate_ID
JOIN Party ON Candidate.Party_ID = Party.Party_ID
GROUP BY Party.Party_Name
ORDER BY Max_Vote_Percent DESC;


-- 5. Total votes cast in each state (GROUP BY and SUM)
SELECT Constituency.State, SUM(Votes.TotalVotes) AS Total_Votes
FROM Votes
JOIN Candidate ON Votes.Candidate_ID = Candidate.Candidate_ID
JOIN Constituency ON Candidate.Constituency_ID = Constituency.Constituency_ID
GROUP BY Constituency.State
ORDER BY Total_Votes DESC;

-- 6.Candidates whose names contain 'Singh' (LIKE and string function)
SELECT Candidate.Candidate_Name
FROM Candidate
WHERE Candidate.Candidate_Name LIKE '%Singh%';

-- 7.Candidates with highest votes percentage in each constituency (joins, MAX, GROUP BY)
SELECT Constituency.Constituency_Name, Candidate.Candidate_Name, MAX(Votes.Votes_Percent) AS Max_Vote_Percent
FROM Votes
JOIN Candidate ON Votes.Candidate_ID = Candidate.Candidate_ID
JOIN Constituency ON Candidate.Constituency_ID = Constituency.Constituency_ID
GROUP BY Constituency.Constituency_Name, Candidate.Candidate_Name
ORDER BY Max_Vote_Percent DESC;

-- 8.Candidates with vote percentages greater than 40% but less than 60% (BETWEEN function)
SELECT Candidate.Candidate_Name, Votes.Votes_Percent
FROM Votes
JOIN Candidate ON Votes.Candidate_ID = Candidate.Candidate_ID
WHERE Votes.Votes_Percent BETWEEN 40 AND 60
ORDER BY Votes.Votes_Percent;

-- 9.Top 3 parties by total votes (LIMIT, GROUP BY, SUM)
SELECT Party.Party_Name, SUM(Votes.TotalVotes) AS Total_Votes
FROM Votes
JOIN Candidate ON Votes.Candidate_ID = Candidate.Candidate_ID
JOIN Party ON Candidate.Party_ID = Party.Party_ID
GROUP BY Party.Party_Name
ORDER BY Total_Votes DESC
LIMIT 3;

-- 10.Candidates with EVM votes greater than Postal votes (comparison and aggregate functions)
SELECT Candidate.Candidate_Name, SUM(Votes.PostalVotes) AS Total_Postal_Votes, SUM(Votes.EVMVotes) AS Total_EVM_Votes
FROM Votes
JOIN Candidate ON Votes.Candidate_ID = Candidate.Candidate_ID
GROUP BY Candidate.Candidate_Name
HAVING SUM(Votes.EVMVotes) > SUM(Votes.PostalVotes);

-- 11. Total EVM votes cast in each constituency (GROUP BY, SUM)
SELECT Constituency.Constituency_Name, SUM(Votes.EVMVotes) AS Total_EVM_Votes
FROM Votes
JOIN Candidate ON Votes.Candidate_ID = Candidate.Candidate_ID
JOIN Constituency ON Candidate.Constituency_ID = Constituency.Constituency_ID
GROUP BY Constituency.Constituency_Name
ORDER BY Total_EVM_Votes DESC;




