create database jsxxglxt
go

use jsxxglxt
go

create table Admin
(
Name nvarchar(12) not null primary key,
Pwd nvarchar(12) not null
)
go

insert into Admin(Name,pwd) values('admin','admin')
go


create table Teacher
(
TeacherID nvarchar(6) not null primary key,
TeacherName nvarchar(12) not null,
TeacherAge int not null
)
go

insert into Teacher(TeacherID,TeacherName,TeacherAge) values('200801','王老师',50)
insert into Teacher(TeacherID,TeacherName,TeacherAge) values('200802','胡老师',50)
insert into Teacher(TeacherID,TeacherName,TeacherAge) values('200803','张老师',50)
insert into Teacher(TeacherID,TeacherName,TeacherAge) values('200804','邹老师',50)
insert into Teacher(TeacherID,TeacherName,TeacherAge) values('200805','阮老师',50)
insert into Teacher(TeacherID,TeacherName,TeacherAge) values('200806','文老师',50)
go