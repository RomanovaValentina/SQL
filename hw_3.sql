--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary FROM employee_salary
JOIN employees
	ON employee_salary.employee_id = employees.id
JOIN salary
	ON employee_salary.salary_id = salary.id ;
-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary FROM employee_salary
JOIN employees
	ON employee_salary.employee_id = employees.id
JOIN salary
	ON employee_salary.salary_id = salary.id 
where monthly_salary < 2000;
-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary FROM employee_salary
left JOIN employees
	ON employee_salary.employee_id = employees.id
join salary 
	on employee_salary.salary_id =  salary.id
where employee_name is NULL;
-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary FROM employee_salary
left JOIN employees
	ON employee_salary.employee_id = employees.id
join salary 
	on employee_salary.salary_id =  salary.id
where employee_name IS NULL and monthly_salary < 2000;
-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary from employee_salary
right join salary 
	on employee_salary.salary_id = salary.id 
right join employees
	on employee_salary.employee_id = employees.id
WHERE  monthly_salary IS null;
-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name FROM roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles
	on roles_employee.role_id = roles.id;
-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name FROM roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles
	on roles_employee.role_id = roles.id
where role_name like '%Java developer';
-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from roles_employee
join employees 
	on roles_employee.employee_id = employees.id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%Python%';
-- 9. ������� ����� � ��������� ���� QA ���������.
select * from roles_employee;
select employee_name, role_name from roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles 
 on roles_employee. role_id = roles.id
where role_name like '%QA%';
-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from roles_employee
join employees
	on roles_employee. employee_id = employees.id
join roles 
	on roles_employee. role_id = roles.id
where role_name like '%Manual QA%';
-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from roles_employee
join employees
	on roles_employee.employee_id = employees.id 
join roles
	 on roles_employee.role_id = roles.id 
	where role_name like '%Automation QA%';
-- 12. ������� ����� � �������� Junior ������������
select employee_name, role_name, monthly_salary from employee_salary
join employees
	on employee_salary. employee_id = employees.id
join salary
	on employee_salary. salary_id = salary.id
join roles_employee
	on employee_salary.id = roles_employee.role_id
join roles
	on roles_employee.role_id = roles.id 
where role_name like '%Junior%';
-- 13. ������� ����� � �������� Middle ������������
select employee_name,role_name, monthly_salary from employee_salary
join employees
	on employee_salary. employee_id = employees.id
join salary
	on employee_salary. salary_id = salary.id
join roles_employee
	on employee_salary.id = roles_employee.role_id
join roles
	on roles_employee.role_id = roles.id 
where role_name like '%Middle%';
-- 14. ������� ����� � �������� Senior ������������
select employee_name,role_name,monthly_salary from employee_salary
join employees
	on employee_salary. employee_id = employees.id
join salary
	on employee_salary. salary_id = salary.id
join roles_employee
	on employee_salary.id = roles_employee.role_id
join roles
	on roles_employee.role_id = roles.id 
where role_name like '%Senior%';
-- 15. ������� �������� Java �������������
select role_name,monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Java developer%';
-- 16. ������� �������� Python �������������
select  role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Python%';
-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.employee_id
join employees
	on employee_salary.employee_id = employees.id
join roles
	on roles_employee. role_id = roles.id 
where role_name like 'Junior Python%';
-- 18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary, role_name from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.employee_id
join employees
	on roles_employee.employee_id = employees.id
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Middle J%S%';
-- 19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.employee_id
join employees
	on roles_employee.employee_id = employees.id
join roles 
	on roles_employee. role_id = roles.id 
where role_name like 'Senior Java%';
-- 20. ������� �������� Junior QA ���������
select employee_name,role_name, monthly_salary from employee_salary
left join salary 
	on employee_salary.salary_id =salary.id
join employees
	on employee_salary.employee_id = employees.id
join roles_employee
	on employees.id = roles_employee.employee_id
right join roles  
	on roles_employee. role_id = roles.id 
where role_name like 'Junior%QA%'
order by monthly_salary DESC;
-- 21. ������� ������� �������� ���� Junior ������������
select  avg(monthly_salary) as avg_monthly_salary from employee_salary
join employees
	on employee_salary.employee_id = employees.id
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employees.id = roles_employee.employee_id
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%Junior%';
-- 22. ������� ����� ������� JS �������������
select  SUM (monthly_salary) as sum_monthly_salary_JS from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%JavaScript%';
-- 23. ������� ����������� �� QA ���������
select  MIN (monthly_salary) as min_monthly_salary_QA from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
left join employees
	on employee_salary.employee_id = employees.id
join roles_employee
	on employees.id = roles_employee.employee_id
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%QA%';
----------------------------------------------------------------------
select monthly_salary, employee_name, role_name  from roles_employee
join roles 
	on roles_employee. role_id = roles.id
join employees
	on roles_employee. employee_id = employees.id
join employee_salary
	on employees.id = employee_salary.employee_id 
join salary
	on employee_salary. salary_id = salary.id;
-----------------------------------------------------------------------
-- 24. ������� ������������ �� QA ���������
select  MAX (monthly_salary) as max_monthly_salary_QA from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join employees
	on employee_salary.employee_id = employees.id
join roles_employee
	on employees.id = roles_employee.employee_id
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%QA%';
-- 25. ������� ���������� QA ���������
select  COUNT (role_name) from roles
where role_name like '%QA%';
-- 26. ������� ���������� Middle ������������.
select  COUNT (role_name) from roles
where role_name like '%Middle%';
-- 27. ������� ���������� �������������
select  COUNT (role_name) from roles
where role_name like '%developer%';
-- 28. ������� ���� (�����) �������� �������������.
select  SUM (monthly_salary) as sum_developers from employee_salary 
left join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary.employee_id = employees.id
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id  = roles.id 
where role_name like '%developer%';
-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee. role_id  = roles.id
ORDER BY monthly_salary ASC;
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee. role_id  = roles.id
where monthly_salary between 1700 and 2300
ORDER BY monthly_salary ASC;
-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee.role_id  = roles.id
where monthly_salary < 2300
ORDER BY monthly_salary ASC;
-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employees.id = roles_employee.employee_id 
join roles 
	on roles_employee. role_id  = roles.id
where monthly_salary in (1100, 1500, 2000)
ORDER BY monthly_salary ASC;

 