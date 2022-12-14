SELECT s.HACKER_ID, h.NAME
FROM SUBMISSIONS s 
JOIN HACKERS h ON s.HACKER_ID = h.HACKER_ID
JOIN CHALLENGES c ON s.CHALLENGE_ID = c.CHALLENGE_ID
JOIN DIFFICULTY d ON c.DIFFICULTY_LEVEL = d.DIFFICULTY_LEVEL
WHERE s.SCORE=d.SCORE
GROUP BY s.HACKER_ID, h.NAME
HAVING COUNT(s.SUBMISSION_ID) > 1
ORDER BY COUNT(s.SUBMISSION_ID) DESC, 1
;
/*
The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.
(WHERE ...)
GROUP BY ...
HAVING...
*/