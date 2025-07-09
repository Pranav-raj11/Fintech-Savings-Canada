-- Highest interest rates (without bonus)
-- SELECT * FROM simplified_traditional_rates
-- ORDER BY interest_rate DESC
-- LIMIT 5;

-- Highest interest rates (without bonus)
SELECT *, (interest_rate + bonus_interest) * 100 AS total_interest FROM simplified_traditional_rates
ORDER BY total_interest DESC
LIMIT 5

