-- CREATE DATABASE fintech_project;
-- USE fintech_project;

-- CREATE TABLE simplified_traditional_rates (
-- 	bank VARCHAR(50),
--     account_name VARCHAR(100),
--     account_type VARCHAR(50),
--     rate_type VARCHAR(50),
--     interest_rate DECIMAL(6,5),
--     bonus_interest DECIMAL(6,5),
--     bonus_conditions TEXT,
--     min_balance DECIMAL(12,2),
--     monthly_fee DECIMAL(6,2),
--     compounding VARCHAR(20)
-- );

-- CREATE TABLE tiered_traditional_rates (
--     bank VARCHAR(50),
--     account_name VARCHAR(150),
--     account_type VARCHAR(50),
--     rate_type VARCHAR(50),
--     interest_rate DECIMAL(6,5),
--     bonus_interest DECIMAL(6,5),
--     bonus_conditions TEXT,
--     duration_saved VARCHAR(30),
--     min_balance DECIMAL(12,2),
--     max_balance DECIMAL(12,2),
--     monthly_fee DECIMAL(6,2),
--     compounding VARCHAR(20)
-- );

-- CREATE TABLE fintech_rates (
--     fintech_company VARCHAR(50),
--     account_name VARCHAR(150),
--     account_type VARCHAR(50),
--     rate_type VARCHAR(50),
--     interest_rate DECIMAL(6,5),
--     bonus_interest DECIMAL(6,5),
--     bonus_conditions TEXT,
--     min_balance DECIMAL(12,2),
--     max_balance DECIMAL(12,2),
--     monthly_fee VARCHAR(100),
--     compounding VARCHAR(20)
-- );

-- CREATE TABLE biggest_fintech (
-- 	fintech_tool VARCHAR(50),
--     launch_year YEAR,
--     users_downloads_play_store INT,
--     google_play_store_ratings INT ,
--     google_play_store_rating DECIMAL(2,1),
--     apple_store_ratings INT,
--     apple_store_rating DECIMAL(2,1),
--     apple_chart_rank INT
-- );

-- CREATE TABLE biggest_banks (
-- 	year YEAR,
--     bank VARCHAR(50),
--     metric VARCHAR(50),
--     value DECIMAL(20,2)
-- );

-- CREATE TABLE popular_banks (
-- 	bank VARCHAR(50),
--     launch_year YEAR,
--     users_downloads_play_store INT,
--     google_play_store_ratings INT ,
--     google_play_store_rating DECIMAL(2,1),
--     apple_store_ratings INT,
--     apple_store_rating DECIMAL(2,1),
--     apple_chart_rank INT
-- );

-- INSERT INTO biggest_fintech VALUES ('EQ Bank', 2016, 100000, 10500, 4.2, 46000, 4.8, 51);
-- INSERT INTO biggest_fintech VALUES ('KOHO', 2015, 1000000, 70100, 4.4, 81000, 4.8, 15);
-- INSERT INTO biggest_fintech VALUES ('Neo', 2020, 100000, 12900, 4.7, 47000, 4.8, 37);
-- INSERT INTO biggest_fintech VALUES ('Tangerine', 1997, 1000000, 45100, 4.6, 73000, 4.8, 29);
-- INSERT INTO biggest_fintech VALUES ('Wealthsimple', 2014, 1000000, 79500, 4.3, 126000, 4.6, 2);

-- INSERT INTO fintech_rates VALUES ('EQ Bank', '10 Day Notice Savings Account', 'Notice Savings Account', 'flat', 0.0285, NULL, NULL, 0, 0, '0.00', 'Daily');
-- INSERT INTO fintech_rates VALUES ('EQ Bank', '30 Day Notice Savings Account', 'Notice Savings Account', 'flat', 0.03, 0, NULL, 0, 0, '0.00', 'Daily');
-- INSERT INTO fintech_rates VALUES ('EQ Bank', 'Tax Free Savings Account', 'TFSA', 'flat', 0.0175, 0, NULL, 0, 0, '0.00', 'Daily');
-- INSERT INTO fintech_rates VALUES ('EQ Bank', 'First Home Savings Account', 'FHSA', 'flat', 0.0175, 0, NULL, 0, 0, '0.00', 'Daily');
-- INSERT INTO fintech_rates VALUES ('KOHO', 'KOHO Essential Save', 'HISA', 'flat', 0.0250, 0, NULL, 0, 0, '$0 If deposit >= $1000/month, Else $4.00', 'Daily');
-- INSERT INTO fintech_rates VALUES ('KOHO', 'KOHO Extra Save', 'HISA', 'flat', 0.0350, 0, NULL, 0, 0, '$12/month if yearly, $18/month if monthly', 'Daily');
-- INSERT INTO fintech_rates VALUES ('KOHO', 'KOHO Everything Save', 'HISA', 'flat', 0.0400, 0, NULL, 0, 0, '$14.75/month if yearly, $22/month if monthly', 'Daily');
-- INSERT INTO fintech_rates VALUES ('Neo', 'Neo High-Interest Savings Account', 'HISA', 'flat', 0.0250, 0, NULL, 0, 200000, '0.00', 'Daily');
-- INSERT INTO fintech_rates VALUES ('Tangerine', 'Savings Account', 'HISA', 'flat', 0.0030, 0.0450, 'become new client within 60 days of opening account, up to 5 months and maximum of $1,000,000', 0, 0, '0.00', 'Daily');
-- INSERT INTO fintech_rates VALUES ('Tangerine', 'Tax-Free Savings Account', 'TFSA', 'flat', 0.0030, 0.0450, 'become new client within 60 days of opening account, up to 5 months and maximum of $1,000,000', 0, 0, '0.00', 'Daily');
-- INSERT INTO fintech_rates VALUES ('Wealthsimple', 'Tax-Free Savings Account', 'TFSA (HISA)', 'flat', 0.0275, 0, NULL, 0, 0, '0.00', 'Daily');
-- INSERT INTO fintech_rates VALUES ('Wealthsimple', 'First Home Savings Account', 'FHSA (HISA)', 'flat', 0.0275, 0, NULL, 0, 0, '0.00', 'Daily');

-- truncate table simplified_traditional_rates
select * from popular_banks limit 400