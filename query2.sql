--create a table name author
create table author(
    id char(2) primary key not null,
    lastname varchar(15) not null,
    firstname varchar(15) not null,
    email varchar(40),
    city varchar(15)
);

--insert
insert into author(id, lastname, firstname, email, city)
values
('a1','chong','raul','rc@gmail.com','toronto'),
('a2','ahuja','ray','ra@gmail.com','toronto'),
('a3','hakes','ian','ih@gmail.com','toronto'),
('a4','sharma','neeraj','ns@gmail.com','chennai'),
('a5','perniu','liviu','lp@gmail.com','tranaylvania');

--update statement
update author 
set lastname='katta', firstname='lakhsmi', email='lk@gmail.com', city='chennai'
where id='a2';
select * from author where id='a2';

--delete statement
delete from author where id='a2' or id='a5';
select * from author;

--alter-add column
alter table author
add column country varchar(10);

update author
set country='usa' where id='a1' or id='a3';
update author
set country='india' where id='a4';

--alter--drop column
alter table author
drop column city;

select * from author;

--truncate table- in sqlite, we can simply use the command DELETE FROM [TABLENAME]
delete from author;

--drop the table
drop table author;
