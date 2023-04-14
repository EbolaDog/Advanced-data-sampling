create table if not exists Genres (
	id SERIAL primary key,
	name TEXT not null unique
);

create table if not exists Executor (
	id SERIAL primary key,
	name text not null
);

create table if not exists GenreExecutor (
	genres_id integer references Genres(id),
	Executor_id integer references Executor(id),
	constraint pk primary key (genres_id, Executor_id)
	);

create table if not exists Albums (
	id SERIAL primary key,
	name text not null,
	exityear integer not null
);

create table if not exists ExecutorAlbums (
	albums_id integer references Albums(id),
	Executor_id integer references Executor(id),
	constraint keys primary key (albums_id, Executor_id)
);

create table if not exists Tracks (
	id SERIAL primary key,
	albums_id integer not null references Albums(id),
	name text not null,
	duration integer not null
);

create table if not exists Collections (
	id SERIAL primary key,
	name text not null,
	exityear integer not null
);

create table if not exists CollectionsTracks (
	collections_id integer references Collections(id),
	tracks_id integer references Tracks(id),
	constraint ct primary key (collections_id, tracks_id)
);