--create or replace procedure insert_new_movie( title VARCHAR, description VARCHAR, release_year DATE, language_id INTEGER, rental_duration VARCHAR, rental_rate numeric(5,2), length_ VARCHAR, replace_cost numeric(5,2), rating VARCHAR
--language plpgsql
--as $$
--begin 
--	insert into film values(title)
--	insert into film values(description)
--	insert into film values(release_year)
--	insert into film values(language_id)
--	insert into film values(rental_duration)
--	insert into film values(rental_rate)
--	insert into film values(length_)
--	insert into film values(replacement_cost)
--	insert into film values(rating);
--end;
--$$;

--create or replace procedure insert_new_movie( title VARCHAR(255), description text, release_year year, language_id INTEGER, rental_duration INTEGER, rental_rate numeric(5,2), length_ INTEGER, replace_cost numeric(5,2), rating mpaa_rating
--language plpgsql
--as $$
--begin 
--	insert into film_id(title)
--	values(split_part
--	insert into film(description)
--	values(split_part
--	insert into film(release_year)
--	values(
--	insert into film(language_id)
--	values(
--	insert into film (rental_duration)
--	values(
--	insert into film(rental_rate)
--	values(
--	insert into film(length_)
--	values(
--	insert into film(replacement_cost)
--	values(
--	insert into film(rating)
--	values(
--;
--end;
--$$;
--###############################################    teacher    #####################################################
		create or replace procedure add_film(title VARCHAR(255), description text, release_year year, language_id INTEGER, rental_duration INTEGER, rental_rate numeric(5,2), length_ INTEGER, replace_cost numeric(5,2), rating mpaa_rating)
		language plpgsql
		as $$
		begin 
		INSERT INTO film(
			title,
			description,
			release_year,
			language_id,
			rental_duration,
		  	rental_rate, 
			length,
			replacement_cost,
			rating
		) values(
			title,
			description,
			release_year,
			language_id,
			rental_duration,
		  	rental_rate, 
			length,
			replacement_cost,
			rating
		);
		end;
		$$;


--###############################################    teacher    #####################################################
 






create or replace function number_of_films(catagory_id INTEGER)
returns INTEGER
language plpgsql
as $$
	declare catagory INTEGER;
begin 
	SELECT fc.category_id, c. "name", COUNT(*) AS num_movies_in_cat
	FROM film_category fc
	JOIN category c
	ON fc.category_id = C.category_id
	GROUP BY fc.category_id, C.name
	ORDER BY num_movies_in_cat desc;
return catagory;
end;
$$;

number_of_films(8)
--SELECT fc.category_id, c. "name", COUNT(*) AS num_movies_in_cat
			--FROM film_category fc
			--JOIN category c
			--ON fc.category_id = C.category_id
			--GROUP BY fc.category_id, C.name
			--ORDER BY num_movies_in_cat DESC


--###############################################    teacher    #####################################################
CREATE OR REPLACE FUNCTION get_category_count ( cat_id INTEGER)
RETURNS INTEGER
LANGUAGE plpgsql1
as $$
	DECLARE category_count INTEGER;
BEGIN
	SELECT COUNT (*) INTO category_count
	FROM film_category
	WHERE Category_id = 10
	GROUP BY category_id;
	return category_amount;
end;
$$;

--###############################################    teacher    #####################################################
 select * 
 from film;