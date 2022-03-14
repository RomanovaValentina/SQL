-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary FROM employee_salary
JOIN employees
	ON employee_salary.employee_id = employees.id
JOIN salary
	ON employee_salary.salary_id = salary.id ;
-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary FROM employee_salary
JOIN employees
	ON employee_salary.employee_id = employees.id
JOIN salary
	ON employee_salary.salary_id = salary.id 
where monthly_salary < 2000;
-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from salary;
-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select * from salary
where monthly_salary < 2000;
-- 5. Найти всех работников кому не начислена ЗП.
select employee_name, monthly_salary from employee_salary
right join salary 
	on employee_salary.salary_id = salary.id 
right join employees
	on employee_salary.employee_id = employees.id
order by monthly_salary DESC;
-- 6. Вывести всех работников с названиями их должности.
select employee_name, role_name FROM roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles
	on roles_employee.role_id = roles.id;
-- 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name FROM roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles
	on roles_employee.role_id = roles.id
where role_name like '%Java%';
-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name from roles_employee
join employees 
	on roles_employee.employee_id = employees.id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%Python%';
-- 9. Вывести имена и должность всех QA инженеров.
select * from roles_employee;
select employee_name, role_name from roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles 
 on roles_employee. role_id = roles.id
where role_name like '%QA%';
-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from roles_employee
join employees
	on roles_employee. employee_id = employees.id
join roles 
	on roles_employee. role_id = roles.id
where role_name like '%Manual QA%';
-- 11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name from roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles
	 on roles_employee.role_id = roles.id 
	where role_name like '%Automation QA%';
-- 12. Вывести имена и зарплаты Junior специалистов
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
-- 13. Вывести имена и зарплаты Middle специалистов
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
-- 14. Вывести имена и зарплаты Senior специалистов
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
-- 15. Вывести зарплаты Java разработчиков
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Java%';
-- 16. Вывести зарплаты Python разработчиков
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Python%';
-- 17. Вывести имена и зарплаты Junior Python разработчиков
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like 'Junior Python%';
-- 18. Вывести имена и зарплаты Middle JS разработчиков
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Middle JavaScript%';
-- 19. Вывести имена и зарплаты Senior Java разработчиков
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like 'Senior Java%';
-- 20. Вывести зарплаты Junior QA инженеров
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Junior QA%';
-- 21. Вывести среднюю зарплату всех Junior специалистов
select  avg(monthly_salary) as avg_monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%Junior%';
-- 22. Вывести сумму зарплат JS разработчиков
select  SUM (monthly_salary) as sum_monthly_salary_JS from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%JavaScript%';
-- 23. Вывести минимальную ЗП QA инженеров
select  MIN (monthly_salary) as min_monthly_salary_QA from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%QA%';
-- 24. Вывести максимальную ЗП QA инженеров
select  MAX (monthly_salary) as max_monthly_salary_QA from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%QA%';
-- 25. Вывести количество QA инженеров
select  COUNT (role_name) from roles
where role_name like '%QA%';
-- 26. Вывести количество Middle специалистов.
select  COUNT (role_name) from roles
where role_name like '%Middle%';
-- 27. Вывести количество разработчиков
select  COUNT (role_name) from roles
where role_name like '%developer%';
-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select  SUM (monthly_salary) as sum_developers from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id 
where role_name like '%developer%';
-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
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
-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select SUM (monthly_salary) as sum_developer from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id;
-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
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
-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
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
-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
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
 