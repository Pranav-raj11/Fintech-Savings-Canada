-- CREATE DATABASE fintech_project;
-- USE fintech_project;

CREATE TABLE simplified_traditional_rates (
	bank VARCHAR(50),
    account_name VARCHAR(100),
    account_type VARCHAR(50),
    rate_type VARCHAR(50),
    interest_rate DECIMAL(6,5),
    bonus_interest DECIMAL(6,5),
    bonus_conditions TEXT,
    min_balance DECIMAL(12,2),
    monthly_fee DECIMAL(6,2),
    compounding VARCHAR(20)
);

CREATE TABLE tiered_traditional_rates (
    bank VARCHAR(50),
    account_name VARCHAR(150),
    account_type VARCHAR(50),
    rate_type VARCHAR(50),
    interest_rate DECIMAL(6,5),
    bonus_interest DECIMAL(6,5),
    bonus_conditions TEXT,
    duration_saved VARCHAR(30),
    min_balance DECIMAL(12,2),
    max_balance DECIMAL(12,2),
    monthly_fee DECIMAL(6,2),
    compounding VARCHAR(20)
);

CREATE TABLE fintech_rates (
    fintech_company VARCHAR(50),
    account_name VARCHAR(150),
    account_type VARCHAR(50),
    rate_type VARCHAR(50),
    interest_rate DECIMAL(6,5),
    bonus_interest DECIMAL(6,5),
    bonus_conditions TEXT,
    min_balance DECIMAL(12,2),
    max_balance DECIMAL(12,2),
    monthly_fee VARCHAR(100),
    compounding VARCHAR(20)
);

CREATE TABLE biggest_fintech (
	fintech_tool VARCHAR(50),
    launch_year YEAR,
    users_downloads_play_store INT,
    google_play_store_ratings INT ,
    google_play_store_rating DECIMAL(2,1),
    apple_store_ratings INT,
    apple_store_rating DECIMAL(2,1),
    apple_chart_rank INT
);

CREATE TABLE biggest_banks (
	year YEAR,
    bank VARCHAR(50),
    metric VARCHAR(50),
    value DECIMAL(20,2)
);