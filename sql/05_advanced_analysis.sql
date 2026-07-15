-- ====================================================================
-- FILE 05: ADVANCED ANALYSIS
-- OBJECTIVE: Perform demographic profiling and lifestyle correlation.
-- ====================================================================

-- 1. High-Value Lifestyle Profiling (Top Donor Affluence Markers)
SELECT 
    d2.car AS vehicle_make,
    COUNT(d1.id) AS donor_count,
    SUM(d1.donation) AS total_revenue,
    ROUND(AVG(d1.donation), 2) AS average_donation
FROM Donation_Data d1
INNER JOIN Donor_Data d2 ON d1.id = d2.id
WHERE d2.car IS NOT NULL
GROUP d2.car
ORDER BY total_revenue DESC
LIMIT 10;

-- 2. Donation Frequency Revenue Impact
SELECT 
    d2.donation_frequency,
    SUM(d1.donation) AS total_revenue,
    COUNT(d1.id) AS donor_count,
    ROUND(AVG(d1.donation), 2) AS average_contribution
FROM Donation_Data d1
INNER JOIN Donor_Data d2 ON d1.id = d2.id
GROUP BY d2.donation_frequency
ORDER BY total_revenue DESC;
