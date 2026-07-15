-- ====================================================================
-- FILE 03: DATA CLEANING (Standardization)
-- OBJECTIVE: Demonstrate transformation and text-handling capabilities.
-- ====================================================================

-- 1. Standardize text casing and handle null values safely
SELECT 
    id,
    TRIM(UPPER(first_name)) AS formatted_first_name,
    TRIM(UPPER(last_name)) AS formatted_last_name,
    LOWER(email) AS cleaned_email,
    COALESCE(job_field, 'Not Specified') AS standardized_job_field
FROM Donation_Data;

-- 2. Replace empty car records with standard placeholders for reporting
SELECT 
    id,
    COALESCE(car, 'No Vehicle Logged') AS standardized_car_make,
    COALESCE(second_language, 'None') AS standardized_second_language
FROM Donor_Data;
