-- ====================================================================
-- FILE 04: BUSINESS ANALYSIS
-- OBJECTIVE: Answer core strategic fundraising and marketing objectives.
-- ====================================================================

-- 1. Revenue by Professional Sector (Top Fields to Target)
SELECT 
    job_field,
    SUM(donation) AS total_revenue,
    COUNT(id) AS donor_count,
    ROUND(AVG(donation), 2) AS average_donation
FROM Donation_Data
GROUP BY job_field
ORDER BY total_revenue DESC;

-- 2. Geographic Analysis (Top 10 vs Bottom 10 States)
-- Top 10 States
SELECT state, SUM(donation) AS total_revenue, COUNT(id) AS donor_count
FROM Donation_Data
GROUP BY state
ORDER BY total_revenue DESC
LIMIT 10;

-- Bottom 10 States
SELECT state, SUM(donation) AS total_revenue, COUNT(id) AS donor_count
FROM Donation_Data
GROUP BY state
ORDER BY total_revenue ASC
LIMIT 10;

-- 3. Donation Distribution (Analyzing values above and below $200)
SELECT 
    CASE WHEN donation > 200 THEN 'High-Value (>$200)' ELSE 'Standard (<= $200)' END AS donor_tier,
    COUNT(id) AS donor_count,
    SUM(donation) AS total_revenue,
    ROUND((SUM(donation) / (SELECT SUM(donation) FROM Donation_Data) * 100), 2) AS revenue_percentage
FROM Donation_Data
GROUP BY CASE WHEN donation > 200 THEN 'High-Value (>$200)' ELSE 'Standard (<= $200)' END;
