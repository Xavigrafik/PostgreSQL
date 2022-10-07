create table actors (
	actor_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150) not null,
	gender char(1),
	date_of_birth date,
	add_date date,
	update_date date
	
);




create table directors(
	director_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150) not null,
	gender char(1),
	nationality varchar(20),
	date_of_birth date,
	add_date date,
	update_date date
	
	
);

create  table movies (
	movie_id serial primary key,
	movie_name varchar(20),
	movie_length varchar(20),
	movie_lang varchar(20),
	age_certificate varchar(10),
	release_date date,
	director_id int references directors (director_id)	
);

create table movies_actors(
movie_id int references movies(movie_id),
actor_id int references actors(actor_id)

);

create table movies_revenues(
revenue_id serial primary key,
movie_id int references movies (movie_id),
revenues_domestic numeric(10,2),
revenues_international numeric(10,2)
)



create table movie_directors(
	movie_id int references movies(movie_id),
	director_id int references directors(director_id)
);