drop table if exists grade;
drop table if exists students;
drop table if exists subjects;
drop table if exists level;


create table students (
id serial primary key not null,
rollnumber char(80),
firstname char(80),
lastname char(80),
year_admission timestamp
);

create table level (
id serial primary key not null,
level_name char(80)
);

create table subjects (
id serial primary key not null,
subject_name char(80),
credit float,
level_id int references level(id)
);

create table grade (
id serial primary key not null,
student_id int references students(id),
subject_id int references subjects(id),
grade_obtained char(3)
);
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120200','Mr. A','Surname 1', '2016-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120201','Mr. B','Surname 2', '2016-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120202','Mr. C','Surname 3', '2016-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120203','Mr. D','Surname 4', '2016-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120204','Mr. E','Surname 5', '2014-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120205','Mr. F','Surname 6', '2014-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120206','Mr. G','Surname 7', '2014-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120207','Mr. H','Surname 8', '2014-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120208','Mr. I','Surname 9', '2015-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120209','Mr. J','Surname 10', '2015-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120210','Mr. K','Surname 11', '2015-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120211','Mr. L','Surname 12', '2015-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120212','Mr. M','Surname 13', '2015-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120213','Mr. N','Surname 14', '2015-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120214','Mr. O','Surname 15', '2015-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120215','Mr. P','Surname 16', '2017-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120216','Mr. Q','Surname 17', '2017-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120217','Mr. R','Surname 18', '2017-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120218','Mr. S','Surname 19', '2017-01-01');
insert into students (rollnumber,firstname, lastname, year_admission) values ('MBA120219','Mr. T','Surname 20', '2017-01-01');

insert into level (level_name) values ('1');
insert into level (level_name) values ('2');
insert into level (level_name) values ('3');
insert into level (level_name) values ('4');


insert into subjects (subject_name,level_id,credit) values ('Subject 1', 1,3);
insert into subjects (subject_name,level_id,credit) values ('Subject 2', 1,2);
insert into subjects (subject_name,level_id,credit) values ('Subject 3', 2,1.5);
insert into subjects (subject_name,level_id,credit) values ('Subject 4', 3,2);
insert into subjects (subject_name,level_id,credit) values ('Subject 5', 3,1);
insert into subjects (subject_name,level_id,credit) values ('Subject 6', 3,4);
insert into subjects (subject_name,level_id,credit) values ('Subject 7', 4,4);
insert into subjects (subject_name,level_id,credit) values ('Subject 8', 4,2.5);


insert into grade (student_id,subject_id,grade_obtained) values (1, 1, 'A');
insert into grade (student_id,subject_id,grade_obtained) values (1, 2,'A');
insert into grade (student_id,subject_id,grade_obtained) values (1, 3,'A');
insert into grade (student_id,subject_id,grade_obtained) values (1, 4,'B');
insert into grade (student_id,subject_id,grade_obtained) values (2, 1,'A');
insert into grade (student_id,subject_id,grade_obtained) values (2, 2,'C');
insert into grade (student_id,subject_id,grade_obtained) values (2, 3,'A');
insert into grade (student_id,subject_id,grade_obtained) values (2, 4,'B');
insert into grade (student_id,subject_id,grade_obtained) values (2, 5,'A');
insert into grade (student_id,subject_id,grade_obtained) values (2, 6,'A');
insert into grade (student_id,subject_id,grade_obtained) values (3, 1,'C');
insert into grade (student_id,subject_id,grade_obtained) values (3, 2,'A');
insert into grade (student_id,subject_id,grade_obtained) values (3, 3,'F');
insert into grade (student_id,subject_id,grade_obtained) values (3, 4,'A');
insert into grade (student_id,subject_id,grade_obtained) values (4, 1,'D');
insert into grade (student_id,subject_id,grade_obtained) values (4, 2,'A');
insert into grade (student_id,subject_id,grade_obtained) values (4, 3,'B');
insert into grade (student_id,subject_id,grade_obtained) values (4, 4,'A');
insert into grade (student_id,subject_id,grade_obtained) values (4, 5,'C');
insert into grade (student_id,subject_id,grade_obtained) values (4, 6,'A');
insert into grade (student_id,subject_id,grade_obtained) values (5, 1,'D');
insert into grade (student_id,subject_id,grade_obtained) values (5, 2,'A');
insert into grade (student_id,subject_id,grade_obtained) values (6, 1,'C');
insert into grade (student_id,subject_id,grade_obtained) values (7, 1,'A');
insert into grade (student_id,subject_id,grade_obtained) values (7, 2,'B');
insert into grade (student_id,subject_id,grade_obtained) values (7, 3,'A');
insert into grade (student_id,subject_id,grade_obtained) values (8, 1,'A');
insert into grade (student_id,subject_id,grade_obtained) values (8, 2,'A');
insert into grade (student_id,subject_id,grade_obtained) values (8, 3,'F');
insert into grade (student_id,subject_id,grade_obtained) values (8, 4,'A');
insert into grade (student_id,subject_id,grade_obtained) values (9, 1,'A');
insert into grade (student_id,subject_id,grade_obtained) values (9, 2,'F');
insert into grade (student_id,subject_id,grade_obtained) values (9, 3,'A');
insert into grade (student_id,subject_id,grade_obtained) values (9, 4,'A');
insert into grade (student_id,subject_id,grade_obtained) values (10, 1,'B');
insert into grade (student_id,subject_id,grade_obtained) values (10, 1,'A');

drop view student_performance_view;
drop materialized view performance_mat_view;

create view student_performance_view as (

 select students.firstname,students.lastname, subjects.subject_name, level.level_name, grade.grade_obtained, students.year_admission
 from grade
 join students on
 grade.student_id=students.id
 join subjects on
 grade.subject_id=subjects.id
 join level on
 subjects.level_id=level.id
 
);


create materialized view performance_mat_view as (

select subjects.subject_name, grade.grade_obtained, count(grade.grade_obtained) as grade_count
 from grade
 join subjects on
 grade.subject_id=subjects.id
 join level on
 subjects.level_id=level.id
 group by grade.grade_obtained,subjects.subject_name
 order by subjects.subject_name
) with no data;

REFRESH MATERIALIZED VIEW performance_mat_view;

select * from performance_mat_view;

select * from student_performance_view