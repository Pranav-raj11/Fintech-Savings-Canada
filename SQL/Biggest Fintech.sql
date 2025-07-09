-- What fintech company has highest user count
SELECT *, users_downloads_play_store + apple_store_ratings AS total_users FROM biggest_fintech
ORDER BY total_users DESC;

-- What fintech company has most user ratings
SELECT *, google_play_store_ratings + apple_store_ratings AS total_ratings FROM biggest_fintech
ORDER BY total_ratings DESC;

-- What fintech company has best ratings
SELECT *, (google_play_store_rating + apple_store_rating) / 2 AS average_rating FROM biggest_fintech
ORDER BY average_rating DESC;

