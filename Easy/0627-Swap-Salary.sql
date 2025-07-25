-- LeetCode 627: Swap Salary
-- https://leetcode.com/problems/swap-salary/

-- LeetCode 627: Swap Salary
-- Difficulty: Easy
-- https://leetcode.com/problems/swap-salary/

-- 📝 Problem Description:
-- Table: Salary
--
-- +-------------+----------+
-- | Column Name | Type     |
-- +-------------+----------+
-- | id          | int      |
-- | name        | varchar  |
-- | sex         | ENUM     |
-- | salary      | int      |
-- +-------------+----------+
-- id is the primary key for this table.
-- The sex column is ENUM value of type ('m', 'f').
-- The table contains information about an employee.
--
-- Write a SQL query to swap all 'f' and 'm' values in the sex column.
-- Use a single UPDATE statement and no intermediate SELECT or temp tables.

-- ✅ Solution:
UPDATE Salary
SET sex = CASE
            WHEN sex = 'm' THEN 'f'
            ELSE 'm'
          END;



