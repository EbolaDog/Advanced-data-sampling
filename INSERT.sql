select name, yearofissue from album
where yearofissue = 2018;

select name, duration from track
where duration=(select max(duration) from track);

select name from track
where duration >= 210;

select distinct name from collection
where yearofissue between 2018 and 2020;

select name from executor
where name not like '% %'

select name from track
where name like '%My%' or name like '%my%' or name like '%мой%' or name like '%Мой%'