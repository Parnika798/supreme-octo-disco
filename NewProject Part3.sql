use NewProject;
-- 1. Stored Procedure to Get All Candidates from a Specific Party

CALL GetCandidatesByParty('Independent');

-- 2. Function to Calculate Total EVM and Postal Votes for a Candidate
SELECT TotalCandidateVotes(20);
