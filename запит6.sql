use study
select StudID,AVG(Rating) avgR
from SubjectSuccess
group by StudID