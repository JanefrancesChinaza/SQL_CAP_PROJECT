-- ====================================================================
-- FILE 01: DATA EXPLORATION
-- OBJECTIVE: Understand the structure, volume, and baseline features of the dataset.
-- ====================================================================

-- 1. Review raw donor registrations
SELECT * FROM Donation_Data LIMIT 10;

-- 2. Review raw donor lifestyle attributes
SELECT * FROM Donor_Data LIMIT 10;

-- 3. Check the total number of records in each table
SELECT 'Donation_Data' AS table_name, COUNT(*) AS total_rows FROM Donation_Data
UNION ALL
SELECT 'Donor_Data' AS table_name, COUNT(*) AS total_rows FROM Donor_Data;

-- 4. Calculate overall fundraising baseline metrics
SELECT 
    COUNT(id) AS total_donors,
    SUM(donation) AS total_contributions,
    MIN(donation) AS minimum_donation,
    MAX(donation) AS maximum_donation,
    ROUND(AVG(donation), 2) AS average_donation
FROM Donation_Data;
