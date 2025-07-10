-- Most Established Fintechs (Oldest)
SELECT fintech_tool, launch_year 
FROM biggest_fintech 
ORDER BY launch_year;

-- What fintech company has highest user count
SELECT *, users_downloads_play_store + apple_store_ratings AS min_total_users 
FROM biggest_fintech
ORDER BY min_total_users DESC;

-- What fintech company has most user ratings
SELECT *, google_play_store_ratings + apple_store_ratings AS total_ratings 
FROM biggest_fintech
ORDER BY total_ratings DESC;

-- What fintech company has best ratings
SELECT fintech_tool, google_play_store_rating, apple_store_rating, google_play_store_ratings, apple_store_ratings, (google_play_store_rating + apple_store_rating) / 2 AS average_rating 
FROM biggest_fintech
ORDER BY average_rating DESC;

-- What fintech company has best ratings (weighted average)
SELECT fintech_tool, google_play_store_rating, apple_store_rating, google_play_store_ratings, apple_store_ratings,
ROUND(((google_play_store_rating * google_play_store_ratings + apple_store_rating * apple_store_ratings) 
/ (google_play_store_ratings + apple_store_ratings)), 2) AS weighted_avg_rating
FROM biggest_fintech
WHERE google_play_store_ratings + apple_store_ratings > 0
ORDER BY weighted_avg_rating DESC;