use study
select GroupId , count(StudID) count
from student
group by GroupId
