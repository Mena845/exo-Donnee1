-- 1: l’id, first_name, last_name des employés qui n’ont pas d’équipe. 
SELECT id,first_name,last_name FROM Employee LEFT JOIN Team t ON Employee.team_id = t.id WHERE t.id IS NULL;

-- 2: l’id, first_name, last_name des employés qui n’ont jamais pris de congé 
SELECT id, first_name,last_name FROM Employee  LEFT JOIN Leave  ON Employee.id = Leave.employee_id WHERE Leave.id IS NULL;



