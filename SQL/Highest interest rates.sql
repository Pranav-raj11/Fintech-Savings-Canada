-- Highest interest rates in traditional banks (without bonus)
SELECT * FROM simplified_traditional_rates
ORDER BY interest_rate DESC
LIMIT 10;

-- Highest interest rates in traditional banks (with bonus)
SELECT *, (interest_rate + bonus_interest) AS total_interest FROM fintech_rates
ORDER BY total_interest DESC
LIMIT 10;

-- Highest interest rates in fintech companies (without bonus)
SELECT * FROM simplified_traditional_rates
ORDER BY interest_rate DESC
LIMIT 10;

-- Highest interest rates in fintceh companies (with bonus)
SELECT *, (interest_rate + bonus_interest) AS total_interest FROM fintech_rates
ORDER BY total_interest DESC
LIMIT 10;

-- Highest interest rates overall (without bonus)
SELECT 'Traditional' AS provider_type, bank AS provider, account_name, interest_rate, bonus_interest
FROM simplified_traditional_rates
UNION
SELECT 'Fintech', fintech_company, account_name, interest_rate, bonus_interest
FROM fintech_rates
ORDER BY interest_rate DESC
LIMIT 10;

-- Highest interest rates overall (with bonus)
SELECT 'Traditional' AS provider_type, bank AS provider, account_name, interest_rate, bonus_interest, 
(interest_rate + bonus_interest) AS total_rate, bonus_conditions
FROM simplified_traditional_rates
UNION
SELECT 'Fintech', fintech_company, account_name, interest_rate, bonus_interest,
(interest_rate + bonus_interest) AS total_rate, bonus_conditions
FROM fintech_rates
ORDER BY total_rate DESC
LIMIT 10;