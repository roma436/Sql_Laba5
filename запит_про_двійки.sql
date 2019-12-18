use study5lab

update  SubjectSuccess
set Rating = 10
where rating in   ( select  studid,count(rating) from SubjectSuccess where Rating = 2 group by StudID  having count(*)<=2)