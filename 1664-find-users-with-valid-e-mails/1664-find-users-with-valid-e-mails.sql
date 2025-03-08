# Write your MySQL query statement below
SELECT *
FROM Users
WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode(\\?com)?\\.com$';

# Regex Pattern: ^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode(\?com)?\.com$ -- (short for Regular Expression) is used in MySQL to match patterns in strings. It allows powerful pattern matching beyond simple LIKE queries.