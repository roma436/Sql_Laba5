use study5lab


delete from SubjectSuccess

WHERE Rating = 2 AND SubjectSuccess.StudID IN
(SELECT StudID FROM SubjectSuccess
WHERE Rating=2
GROUP BY StudID
HAVING COUNT(Rating) >2)