-- Comparing popularity of fintech and traditional banks

-- View used for the provider popularity bar chart visual in Power BI
CREATE OR REPLACE VIEW provider_popularity AS
SELECT
    'Bank'          AS provider_type,
    bank            AS provider,
    launch_year,
    users_downloads_play_store,
    google_play_store_ratings  ,
    google_play_store_rating      ,
    apple_store_ratings,
    apple_store_rating,
    apple_chart_rank,
    ROUND((google_play_store_ratings*google_play_store_rating + apple_store_ratings*apple_store_rating) 
/ (google_play_store_ratings + apple_store_ratings),2) AS weighted_rating
FROM popular_banks

UNION ALL

SELECT
    'Fintech',
    fintech_tool,
    launch_year,
    users_downloads_play_store,
    google_play_store_ratings,
    google_play_store_rating,
    apple_store_ratings,
    apple_store_rating,
    apple_chart_rank, 
    ROUND((google_play_store_ratings*google_play_store_rating + apple_store_ratings*apple_store_rating) 
/ (google_play_store_ratings + apple_store_ratings),2)
FROM biggest_fintech;

-- Show provider_popularity view
SELECT * FROM provider_popularity;

-- Ranking number of downloads (estimating apple's downloads as number of ratings)
SELECT *, users_downloads_play_store + apple_store_ratings AS estimated_total_downloads FROM provider_popularity ORDER BY estimated_total_downloads DESC;

-- Best rating overall (weighted)
SELECT *,  ROUND((google_play_store_ratings*google_play_store_rating + apple_store_ratings*apple_store_rating) 
/ (google_play_store_ratings + apple_store_ratings),2) AS weighted_rating FROM provider_popularity 
ORDER BY weighted_rating DESC;

-- Downloads per year
SELECT *, (users_downloads_play_store + apple_store_ratings) / (Year(CURDATE()) - launch_year) AS downloads_per_year 
FROM provider_popularity ORDER BY downloads_per_year DESC;

-- View used for the tooltip in the provider popularity visual (bar chart) in Power BI
CREATE VIEW provider_platform_ratings AS
SELECT provider,
	   'Google' AS platform,
       google_play_store_rating AS rating,
       google_play_store_ratings AS ratings
FROM provider_popularity

UNION
SELECT provider,
	   'Apple',
       apple_store_rating,
       apple_store_ratings
FROM provider_popularity;

-- Show provider_platform_ratings view
SELECT * FROM provider_platform_ratings
