-- Below is a dummy query, if we leave it empty then the SQLITE package will throw a non-readable error
-- Change the query to pass the test :)
-- select *
-- from dogs;
SELECT users.first_name, users.last_name
FROM users
JOIN favorites ON users.id = favorites.user_id
JOIN dogs ON favorites.dog_id = dogs.id
WHERE dogs.name = 'Zoey';