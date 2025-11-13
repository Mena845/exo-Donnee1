-- 1
SELECT id,first_name,last_name FROM Employee LEFT JOIN Team t ON Employee.team_id = t.id WHERE t.id IS NULL;


