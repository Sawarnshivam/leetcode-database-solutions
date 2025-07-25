-- LeetCode 1378: Replace Employee ID With The Unique ID
-- https://leetcode.com/problems/replace-employee-id-with-the-unique-id/

-- Table: Employees
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | id            | int     |
-- | name          | varchar |
-- +---------------+---------+
-- id is the primary key.

-- Table: EmployeeUNI
-- +---------------+-----------+
-- | Column Name   | Type      |
-- +---------------+-----------+
-- | id            | int       |
-- | unique_id     | int       |
-- +---------------+-----------+
-- (id, unique_id) is the primary key.

-- Write a solution to show the unique ID of each user.
-- If a user does not have a unique ID, return null.
-- Return the result table in any order.

-- Example:
-- Employees:
-- +----+----------+
-- | id | name     |
-- +----+----------+
-- | 1  | Alice    |
-- | 7  | Bob      |
-- | 11 | Meir     |
-- | 90 | Winston  |
-- | 3  | Jonathan |
-- +----+----------+

-- EmployeeUNI:
-- +----+-----------+
-- | id | unique_id |
-- +----+-----------+
-- | 3  | 1         |
-- | 11 | 2         |
-- | 90 | 3         |
-- +----+-----------+

-- Output:
-- +-----------+----------+
-- | unique_id | name     |
-- +-----------+----------+
-- | null      | Alice    |
-- | null      | Bob      |
-- | 2         | Meir     |
-- | 3         | Winston  |
-- | 1         | Jonathan |
-- +-----------+----------+


-- ✅ SQL Solution:
SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
ON e.id = eu.id;
