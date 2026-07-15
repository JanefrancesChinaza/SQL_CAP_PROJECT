-- ====================================================================
-- FILE 06: SUMMARY VIEWS
-- OBJECTIVE: Generate clean, reusable data structures for visualization tools.
-- ====================================================================

-- 1. Create a Master View combining donor profiles and contribution metrics
CREATE OR REPLACE VIEW view_donor_master_profile AS
SELECT 
    d1.id,
    CONCAT(d1.first_name, ' ', d1.last_name) AS donor_full_name,
    d1.email,
    d1.job_field,
    d1.donation AS last_donation_amount,
    d1.state,
    d2.donation_frequency,
    d2.car AS vehicle_make,
    d2.university,
    d2.second_language
FROM Donation_Data d1
INNER JOIN Donor_Data d2 ON d1.id = d2.id;

-- Test execution of the created view
SELECT * FROM view_donor_master_profile LIMIT 10;
