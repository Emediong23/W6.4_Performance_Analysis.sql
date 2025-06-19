-- W6.4 Performance Analysis Script
-- Author: Blessing George
-- Course: EC_IT143
-- Description: Poor performing queries with missing index suggestions and index creation.

-- ======================================
-- First Query: Person.Address
-- Purpose: Trigger missing index using unindexed character field
-- ======================================

-- Step 1: Original query without index
SELECT *
FROM Person.Address
WHERE City = 'Bothell';

-- Step 2: After reviewing Execution Plan, a missing index recommendation was provided

-- Step 3: Create the missing index
CREATE NONCLUSTERED INDEX IX_Person_Address_City
ON Person.Address (City);

-- Step 4: Re-run the query after index creation
SELECT *
FROM Person.Address
WHERE City = 'Bothell';

-- ======================================
-- Second Query: Person.Person
-- Purpose: Trigger another missing index using LastName field
-- ======================================

-- Step 1: Original query without index
SELECT *
FROM Person.Person
WHERE LastName = 'Smith';

-- Step 2: Execution Plan provided a missing index recommendation

-- Step 3: Create the missing index
CREATE NONCLUSTERED INDEX IX_Person_Person_LastName
ON Person.Person (LastName);

-- Step 4: Re-run the query after index creation
SELECT *
FROM Person.Person
WHERE LastName = 'Smith';


