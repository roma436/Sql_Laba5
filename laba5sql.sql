create database study
use study
go

create table student
(StudID int not null,
 GroupId int not null,
 FirstName varchar(255) null,
 LastName varchar(255) null,
 DateOfBirth date null)
go

create table learn 
(PredmetID int not null,
 TeacherName varchar (255),
 HoursCount int null) 
go

create table SubjectSuccess 
(StudID int not  null,
 PredmetID int not null, 
Rating float not null)
go

ALTER TABLE student  ADD 
	 PRIMARY KEY
(StudID )   
go

ALTER TABLE learn   ADD 
	 PRIMARY KEY 
(PredmetID) 
go


ALTER TABLE SubjectSuccess  ADD 
  foreign key (StudID) references student(StudID),
  foreign key (PredmetID) references learn (PredmetID)
	  
go

