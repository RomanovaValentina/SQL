-- 1. Âûâåñòè âñåõ ðàáîòíèêîâ ÷üè çàðïëàòû åñòü â áàçå, âìåñòå ñ çàðïëàòàìè.
select employee_name, monthly_salary FROM employee_salary
JOIN employees
	ON employee_salary.employee_id = employees.id
JOIN salary
	ON employee_salary.salary_id = salary.id ;
-- 2. Âûâåñòè âñåõ ðàáîòíèêîâ ó êîòîðûõ ÇÏ ìåíüøå 2000.
select employee_name, monthly_salary FROM employee_salary
JOIN employees
	ON employee_salary.employee_id = employees.id
JOIN salary
	ON employee_salary.salary_id = salary.id 
where monthly_salary < 2000;
-- 3. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select * from salary;
-- 4. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè  ìåíüøå 2000 íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select * from salary
where monthly_salary < 2000;
-- 5. Íàéòè âñåõ ðàáîòíèêîâ êîìó íå íà÷èñëåíà ÇÏ.
select employee_name, monthly_salary from employee_salary
right join salary 
	on employee_salary.salary_id = salary.id 
right join employees
	on employee_salary.employee_id = employees.id
order by monthly_salary DESC;
-- 6. Âûâåñòè âñåõ ðàáîòíèêîâ ñ íàçâàíèÿìè èõ äîëæíîñòè.
select employee_name, role_name FROM roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles
	on roles_employee.role_id = roles.id;
-- 7. Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Java ðàçðàáîò÷èêîâ.
select employee_name, role_name FROM roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles
	on roles_employee.role_id = roles.id
where role_name like '%Java%';
-- 8. Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Python ðàçðàáîò÷èêîâ.
select employee_name, role_name from roles_employee
join employees 
	on roles_employee.employee_id = employees.id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%Python%';
-- 9. Âûâåñòè èìåíà è äîëæíîñòü âñåõ QA èíæåíåðîâ.
select * from roles_employee;
select employee_name, role_name from roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles 
 on roles_employee. role_id = roles.id
where role_name like '%QA%';
-- 10. Âûâåñòè èìåíà è äîëæíîñòü ðó÷íûõ QA èíæåíåðîâ
select employee_name, role_name from roles_employee
join employees
	on roles_employee. employee_id = employees.id
join roles 
	on roles_employee. role_id = roles.id
where role_name like '%Manual QA%';
-- 11. Âûâåñòè èìåíà è äîëæíîñòü àâòîìàòèçàòîðîâ QA
select employee_name, role_name from roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles
	 on roles_employee.role_id = roles.id 
	where role_name like '%Automation QA%';
-- 12. Âûâåñòè èìåíà è çàðïëàòû Junior ñïåöèàëèñòîâ
select employee_name, monthly_salary, role_name from employee_salary
join employees
	on employee_salary. employee_id = employees.id
join salary
	on employee_salary. salary_id = salary.id
join roles_employee
	on employee_salary.id = roles_employee.role_id
join roles
	on roles_employee.role_id = roles.id 
where role_name like '%Junior%';
-- 13. Âûâåñòè èìåíà è çàðïëàòû Middle ñïåöèàëèñòîâ
select employee_name, monthly_salary, role_name from employee_salary
join employees
	on employee_salary. employee_id = employees.id
join salary
	on employee_salary. salary_id = salary.id
join roles_employee
	on employee_salary.id = roles_employee.role_id
join roles
	on roles_employee.role_id = roles.id 
where role_name like '%Middle%';
-- 14. Âûâåñòè èìåíà è çàðïëàòû Senior ñïåöèàëèñòîâ
select employee_name, monthly_salary, role_name from employee_salary
join employees
	on employee_salary. employee_id = employees.id
join salary
	on employee_salary. salary_id = salary.id
join roles_employee
	on employee_salary.id = roles_employee.role_id
join roles
	on roles_employee.role_id = roles.id 
where role_name like '%Senior%';
-- 15. Âûâåñòè çàðïëàòû Java ðàçðàáîò÷èêîâ
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Java%';
-- 16. Âûâåñòè çàðïëàòû Python ðàçðàáîò÷èêîâ
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Python%';
-- 17. Âûâåñòè èìåíà è çàðïëàòû Junior Python ðàçðàáîò÷èêîâ
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like 'Junior Python%';
-- 18. Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Middle JavaScript%';
-- 19. Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like 'Senior Java%';
-- 20. Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Junior QA%';
-- 21. Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ
select  avg(monthly_salary) as avg_monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%Junior%';
-- 22. Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ
select  SUM (monthly_salary) as sum_monthly_salary_JS from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%JavaScript%';
-- 23. Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ
select  MIN (monthly_salary) as min_monthly_salary_QA from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%QA%';
-- 24. Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ
select  MAX (monthly_salary) as max_monthly_salary_QA from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%QA%';
-- 25. Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ
select  COUNT (role_name) from roles
where role_name like '%QA%';
-- 26. Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ.
select  COUNT (role_name) from roles
where role_name like '%Middle%';
-- 27. Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ
select  COUNT (role_name) from roles
where role_name like '%developer%';
-- 28. Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ.
select  SUM (monthly_salary) as sum_developers from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id 
where role_name like '%developer%';
-- 29. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ
select employee_name, role_name, monthly_salary from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id
ORDER BY monthly_salary ASC;
-- 28. Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ.
select SUM (monthly_salary) as sum_developer from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id;
-- 30. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300
select employee_name, role_name, monthly_salary from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id
where monthly_salary between 1700 and 2300
ORDER BY monthly_salary ASC;
-- 31. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300
select employee_name, role_name, monthly_salary from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id
where monthly_salary < 2300
ORDER BY monthly_salary ASC;
-- 32. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
ORDER BY monthly_salary ASC;
 
