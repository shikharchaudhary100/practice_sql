--creating table
create table country_info(
    id integer primary key,
    country_name text,
    capital text,
    country_population integer
);

--insert data
insert into country_info('country_name','capital','country_population') 
values
('australia','canberra',27227096),
('brazil','brasilia',213562666),
('canada','ottawa',41417056),
('china','beijing',1412914089),
('france','paris',66746401),
('germany','berlin',83644258),
('india','new delhi',1476625576),
('japan','tokyo',122427731),
('united kingdom','london',69931528),
('united states','washington d.c.',349035494);

--show data
select * from country_info;
select country_name from country_info where country_population<=100000000;

--count
select count(*) from country_info;
select count(country_name) from country_info where country_name='india';
select count(country_name) from country_info where country_population<=100000000;

--distinct
select distinct capital from country_info where country_name='new delhi';

--limit
select * from country_info limit 5;
select * from country_info where country_population<=100000000 limit 3;