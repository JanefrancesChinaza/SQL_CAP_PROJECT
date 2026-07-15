- ====================================================================
-- FILE 02: DATA QUALITY ASSESSMENT
-- OBJECTIVE: Audit datasets for nulls, anomalies, and referential integrity issues.
-- ====================================================================

-- 1. Audit missing essential values in Donation_Data
SELECT 
    COUNT(*) FILTER (WHERE first_name IS NULL) AS missing_first_name,
    COUNT(*) FILTER (WHERE email IS NULL) AS missing_email,
    COUNT(*) FILTER (WHERE donation IS NULL) AS missing_donation_amount
FROM Donation_Data;

-- 2. Check for duplicate Donor IDs in both tables
SELECT id, COUNT(*) 
FROM Donation_Data 
GROUP BY id 
HAVING COUNT(*) > 1;

SELECT id, COUNT(*) 
FROM Donor_Data 
GROUP BY id 
HAVING COUNT(*) > 1;

-- 3. Verify Referential Integrity (ensure matches exist on both sides of our relation)
SELECT COUNT(*) 
FROM Donation_Data d1
LEFT JOIN Donor_Data d2 ON d1.id = d2.id
WHERE d2.id IS NULL;
