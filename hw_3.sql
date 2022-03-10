-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
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
select * from salary;
-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select * from salary
where monthly_salary < 2000;
-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary from employee_salary
right join salary 
	on employee_salary.salary_id = salary.id 
right join employees
	on employee_salary.employee_id = employees.id
order by monthly_salary DESC;
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
where role_name like '%Java%';
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
-- 13. ������� ����� � �������� Middle ������������
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
-- 14. ������� ����� � �������� Senior ������������
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
-- 15. ������� �������� Java �������������
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Java%';
-- 16. ������� �������� Python �������������
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Python%';
-- 17. ������� ����� � �������� Junior Python �������������
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like 'Junior Python%';
-- 18. ������� ����� � �������� Middle JS �������������
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Middle JavaScript%';
-- 19. ������� ����� � �������� Senior Java �������������
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like 'Senior Java%';
-- 20. ������� �������� Junior QA ���������
select role_name, monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee. role_id 
join roles 
	on roles_employee. role_id = roles.id 
where role_name like '%Junior QA%';
-- 21. ������� ������� �������� ���� Junior ������������
select  avg(monthly_salary) as avg_monthly_salary from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%Junior%';
-- 22. ������� ����� ������� JS �������������
select  SUM (monthly_salary) as sum_monthly_salary_JS from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%JavaScript%';
-- 23. ������� ����������� �� QA ���������
select  MIN (monthly_salary) as min_monthly_salary_QA from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
join roles 
	on roles_employee.role_id = roles.id 
where role_name like '%QA%';
-- 24. ������� ������������ �� QA ���������
select  MAX (monthly_salary) as max_monthly_salary_QA from employee_salary
join salary 
	on employee_salary.salary_id =salary.id 
join roles_employee
	on employee_salary.employee_id = roles_employee.role_id 
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
join salary
	on employee_salary. salary_id = salary.id 
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id 
where role_name like '%developer%';
-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
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
-- 28. ������� ���� (�����) �������� �������������.
select SUM (monthly_salary) as sum_developer from employee_salary 
join salary
	on employee_salary. salary_id = salary.id 
join employees
	on employee_salary. employee_id = employees.id
join roles_employee
	on employee_salary. employee_id = roles_employee.employee_id 
join roles 
	on employee_salary. salary_id  = roles.id;
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
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
-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
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
-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
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
 