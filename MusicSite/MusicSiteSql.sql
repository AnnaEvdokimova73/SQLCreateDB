create table genre (
	genre_id serial primary key,
	genre_name varchar(250) not NULL
);


create table performer (
	performer_id serial primary key,
	performer_nick varchar(250) not null
);

create table performer_genre (
	genre_id int references genre(genre_id),
	performer_id int references performer(performer_id),
	constraint pg primary key (genre_id, performer_id)
);

create table album (
	album_id serial primary key,
	album_name varchar(250) not null,
	album_year int
);

create table performer_album (
	album_id int references album(album_id),
	performer_id int references performer(performer_id),
	constraint pa primary key (album_id, performer_id)
);

create table track (
	track_id serial primary key,
	track_name varchar(150) not null, 
	track_album_id int unique references album(album_id) 
);

create table collection (
	collection_id serial primary key,
	collection_name varchar(250) not null, 
	collection_year int
);

create table track_collection (
	track_id int references track(track_id),
	collection_id int references collection(collection_id),
	constraint tc primary key (track_id, collection_id)
);
