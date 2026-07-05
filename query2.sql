--create a table name author
create table author(
    id integer primary key,
    lastname text,
    firstname text,
    email text,
    city text
);

--insert
insert into author(lastname, firstname, email, city)
values
('chong','raul','rc@gmail.com','toronto'),
('ahuja','ray','ra@gmail.com','toronto'),
('hakes','ian','ih@gmail.com','toronto'),
('sharma','neeraj','ns@gmail.com','chennai'),
('perniu','liviu','lp@gmail.com','tranaylvania');

--update statement
update author set lastname='katta', firstname='lakhsmi', email='lk@gmail.com', city='chennai'
where id=2;
select * from author where id=2;

--delete statement
delete from author where id=2,5;