-- W6.4 Performance Analysis Script
-- Author: [Your Full Name]
-- Course: EC_IT143
-- Description: Poor performing queries, missing index recommendations, and performance improvement steps.

-- ======================================
-- First Query: Person.EmailAddress Table
-- Purpose: Generate missing index recommendation using a character column
-- ======================================

-- Step 1: Query with unindexed column
SELECT *
FROM Person.EmailAddress
WHERE EmailAddress = 'david0@adventure-works.com';

-- Step 2: Missing index recommendation observed in execution plan

-- Step 3: Creating the recommended index
CREATE NONCLUSTERED INDEX IX_EmailAddress_Email
ON Person.EmailAddress (EmailAddress);

-- Step 4: Re-run query after creating index
SELECT *
FROM Person.EmailAddress
WHERE EmailAddress = 'david0@adventure-works.com';


-- ======================================
-- Second Query: Person.StateProvince Table
-- Purpose: Trigger another missing index suggestion
-- ======================================

-- Step 1: Query with another unindexed character column
SELECT *
FROM Person.StateProvince
WHERE Name = 'California';

-- Step 2: Missing index recommendation observed in execution plan

-- Step 3: Creating the recommended index
CREATE NONCLUSTERED INDEX IX_StateProvince_Name
ON Person.StateProvince (Name);

-- Step 4: Re-run query after creating index
SELECT *
FROM Person.StateProvince
WHERE Name = 'California';

