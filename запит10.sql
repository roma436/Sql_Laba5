use study5lab


UPDATE SubjectSuccess
SET Rating = 3
WHERE Rating = 2 AND SubjectSuccess.StudID IN
(SELECT StudID FROM SubjectSuccess
WHERE Rating=2
GROUP BY StudID
HAVING COUNT(Rating) <3)