select genre.name, count(executor.name) from executor
join genreexecutor on executor.id = genreexecutor.executor_id
join genre on genre.id = genreexecutor.genres_id
group by genre.name
order by count(executor.name) desc

select album.name, count(track.name) from track
join album on album.id = track.album_id
where album.yearofissue  >= 2019 and album.yearofissue  <= 2020
group by album.name
order by count(track.name) desc

select album.name, avg(track.duration) from track
join album on album.id = tracks.album_id
group by album.name
order by avg(track.duration) desc

select executor.name from executor
where executor.name not in (select executor.name from executor 
join executoralbum on executor.id = executoralbum.executor_id
join album on executoralbum.album_id = album.id
where (album.yearofissue = 2020))

select distinct collection.name from collection
join collectiontrack on collection.id = collectiontrack.collection_id
join track on track.id = collectiontrack.track_id 
join album on album.id = track.album_id
join executoralbums on album.id = executoralbum.albums_id 
join executor on executor.id = executoralbum.executor_id
where executor.name like '%Король и Шут%'

select album.name from executor 
join genreexecutor on executor.id = genreexecutor.executor_id
join genre on genre.id = genreexecutor.genres_id
join executoralbum on executor.id = executoralbum.executor_id
join album on album.id = executoralbum.albums_id
group by album.name, executor.name
having count(genre.name) > 1
order by count(genre.name) desc

select track.name from collection
full join collectiontrack on collection.id = collectiontrack.collection_id
full join track on track.id = collectiontrack.track_id
where collection.name is null

select executor.name, track.duration from track
join album on track.album_id = album.id
join executoralbum on album.id = executoralbum.albums_id 
join executor on executor.id = executoralbum.executor_id
where track.duration = (select min(track.duration) from track)
order by track.duration

select album.name from album
join track on track.album_id = album.id 
group by album.name
having count(track.name) = (select count(track.name) from track 
join album on album.id = track.album_id
group by albu.name
order by count(track.name) limit 1)
order by count(track.name)