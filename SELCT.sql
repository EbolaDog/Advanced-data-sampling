select genres.name, count(executor.name) from executor
join genreexecutor on executor.id = genreexecutor.executor_id
join genres on genres.id = genreexecutor.genres_id
group by genres.name
order by count(executor.name) desc

select tracks.name, albums.yearofissue
from albums as albums
join tracks as tracks on tracks.albums_id = albums.id
where (albums.yearofissue >= 2001) and (albums.yearofissue <= 2020)

select albums.name, avg(tracks.duration) from tracks
join albums on albums.id = tracks.albums_id
group by albums.name
order by avg(tracks.duration) desc

select executor.name from executor
where executor.name not in (select executor.name from executor 
join executoralbums on executor.id = executoralbums.executor_id
join albums on executoralbums.albums_id = albums.id
where (albums.yearofissue = 2020))

select distinct collections.name from collections
join collectionstracks on collections.id = collectionstracks.collections_id
join tracks on tracks.id = collectionstracks.tracks_id 
join albums on albums.id = tracks.albums_id
join executoralbums on albums.id = executoralbums.albums_id 
join executor on executor.id = executoralbums.executor_id
where executor.name like '%Король и Шут%'

select albums.name from executor    ---------
join genresexecutor on executor.id = genresexecutor.executor_id
join genres on genres.id = genresexecutor.genres_id
join executoralbums on executor.id = executoralbums.executor_id
join albums on albums.id = executoralbums.albums_id
group by albums.name, executor.name
having count(genres.name) > 1
order by count(genres.name) desc    ----------

select tracks.name from collections
full join collectionstracks on collections.id = collectionstracks.collections_id
full join tracks on tracks.id = collectionstracks.tracks_id
where collections.name is null

select executor.name, tracks.duration from tracks       ----------------
join albums on tracks.albums_id = albums.id
join executoralbums on albums.id = executoralbum.albums_id 
join executor on executor.id = executoralbums.executor_id
where tracks.duration = (select min(tracks.duration) from tracks)
order by tracks.duration                                            -------------------

select albums.name from albums
join tracks on tracks.albums_id = albums.id 
group by albums.name
having count(tracks.name) = (select count(tracks.name) from tracks
join albums on albums.id = tracks.albums_id
group by albums.name
order by count(tracks.name) limit 1)
order by count(tracks.name)