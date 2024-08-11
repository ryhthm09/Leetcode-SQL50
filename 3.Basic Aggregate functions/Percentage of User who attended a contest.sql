# Write your MySQL query statement below
SELECT contest_id, ROUND(COUNT(*)*100/(SELECT COUNT(*) FROM Users),2) as percentage from Register group by contest_id order by percentage desc,contest_id;