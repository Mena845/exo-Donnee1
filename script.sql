-- 1: l’id, first_name, last_name des employés qui n’ont pas d’équipe. 
 select id , first_name , last_name from Employee where id_Team is null;

-- 2: l’id, first_name, last_name des employés qui n’ont jamais pris de congé 
SELECT id, first_name,last_name FROM Employee where id_Leave is null;

-- 3: l’id du congé, le début du congé, la fin du congé, le nom & prénom de l’employé qui prend congé et le nom de son équipe.
select l.id_Leave , l.start_date , l.end_date , e.first_name , e.last_name , t.name_Team from Employee e inner join Leave l on e.id_Leave = l.id_Leave inner join Team t on e.id_Team = t.id_Team;

-- 4: nombre d’employés par contract_type
select contract_type , count(*) as number_Employee from Employee  group by contract_type;

-- 5: nombre d’employés en congé aujourd’hui
select count (distinct e.id_Employee) as Employee_leave_today from Employee e inner join Leave l on e.id_Leave = l.id_Leave where current_date between l.start_date and l.end_date;