--SQL_DDL
--Первая часть
--Таблица employees
--1.Создать таблицу employees
--  id serial  primary key
--  employee_name Varchar(50) not null
CREATE TABLE employees(
	id serial primary key,
	employee_name Varchar (50) NOT null
	);
select * from employees;
--2.Наполнить таблицу employee 70 строками
insert into employees(id, employee_name)
values  (default, 'Stiv1'),
		(default, 'Anna_1'),
		(default, 'Karen'),
		(default, 'Tom'),
		(default, 'Kate'),
		(default, 'Bob'),
		(default, 'Gleb'),
		(default, 'Emma'),
		(default, 'Vlad'),
		(default, 'Valentina'),
		(default, 'Olesya'),
		(default, 'Sergey4'),
		(default, 'Sonya'),
		(default, 'Vika3'),
		(default, 'Stiv2'),
		(default, 'Sveta'),
		(default, 'Pavel'),
		(default, 'Poman'),
		(default, 'Leonardo'),
		(default, 'Tom2'),
		(default, 'Margo'),
		(default, 'Inna'),
		(default, 'Vladimir'),
		(default, 'Ola'),
		(default, 'Nick'),
		(default, 'Pole'),
		(default, 'Poll_1'),
		(default, 'Helen2'),
		(default, 'Vera'),
		(default, 'Far'),
		(default, 'Ella1'),
		(default, 'Monika'),
		(default, 'Alex'),
		(default, 'Zena'),
		(default, 'Stiv3'),
		(default, 'Anton'),
		(default, 'Vika'),
		(default, 'Oxsana'),
		(default, 'Alex3'),
		(default, 'Tanya'),
		(default, 'Poll2'),
		(default, 'Sergey_1'),
		(default, 'Helen'),
		(default, 'Stiv4'),
		(default, 'Sergey2'),
		(default, 'Nick3'),
		(default, 'Ella2'),
		(default, 'Poll'),
		(default, 'Tanya_1'),
		(default, 'Stiv5'),
		(default, 'Sergey'),
		(default, 'Alex_2'),
		(default, 'Ella'),
		(default, 'Helen5'),
		(default, 'Oxsana_2'),
		(default, 'Roman_2'),
		(default, 'Tanya_2'),
		(default, 'Nick_2'),
		(default, 'Roman'),
		(default, 'Nick5'),
		(default, 'Ella3'),
		(default, 'Alex2'),
		(default, 'Far_2'),
		(default, 'Anton_2'),
		(default, 'Oxsana_3'),
		(default, 'Tom3'),
		(default, 'Helen1'),
		(default, 'Tanya2'),
		(default, 'Anna'),
		(default, 'Sergey3');
		
--Таблица salary
select * from salary;
-- 3.Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);
-- 4.Наполнить таблицу salary 15 строками:
insert into salary(id, monthly_salary)
values  (default, 1000),
		(default, 1100),
		(default, 1200),
		(default, 1300),
		(default, 1400),
		(default, 1500),
		(default, 1600),
		(default, 1700),
		(default, 1800),
		(default, 1900),
		(default, 2000),
		(default, 2100),
		(default, 2200),
		(default, 2300),
		(default, 2400),
		(default, 2500);
		
--Таблица employee_salary
	select * from employee_salary;
-- 5.Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
	);
-- 6.Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (id, employee_id, salary_id)
values  (default, 3, 7),
		(default, 1, 4),
		(default, 5, 9),
		(default, 40, 13),
		(default, 23, 4),
		(default, 11, 2),
		(default, 52, 10),
		(default, 15, 13),
		(default, 6, 4),
		(default, 16, 1),
		(default, 33, 7),
		(default, 25, 3),
		(default, 14, 13),
		(default, 12, 3),
		(default, 44, 1),
		(default, 41, 4),
		(default, 17, 9),
		(default, 4, 12),
		(default, 36, 15),
		(default, 45, 11),
		(default, 78, 12),
		(default, 56, 8),
		(default, 89, 5),
		(default, 60, 3),
		(default, 76, 1),
		(default, 77, 10),
		(default, 55, 7),
		(default, 102, 9),
		(default, 22, 11),
		(default, 26, 8),
		(default, 106, 3),
		(default, 85, 1),
		(default, 67, 4),
		(default, 30, 6),
		(default, 80, 7),
		(default, 46, 13),
		(default, 39, 15),
		(default, 100, 10),
		(default, 42, 3),
		(default, 96, 13);
--Таблица roles
select * from roles;
--7.Создать таблицу roles
-- id. Serial  primary key,
--8. role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name Varchar (30) unique not null
	);
--9.Наполнить таблицу roles 20 строками:	
insert into roles(id, role_name)
values
	(default, 'Junior Python developer'),
	(default, 'Middle Python developer'),
	(default, 'Senior Python developer'),
	(default, 'Junior Java developer'),
	(default, 'Middle Java developer'),
	(default, 'Senior Java developer'),
	(default, 'Junior JavaScript developer'),
	(default, 'Middle JavaScript developer'),
	(default, 'Senior JavaScript developer'),
	(default, 'Junior Manual QA engineer'),
	(default, 'Middle Manual QA engineer'),
	(default, 'Senior Manual QA engineer'),
	(default, 'Project Manager'),
	(default, 'Designer'),
	(default, 'HR'),
	(default, 'CEO'),
	(default, 'Sales manager'),
	(default, 'Junior Automation QA engineer'),
	(default, 'Middle Automation QA engineer'),
	(default,' Senior Automation QA engineer');
	
--Таблица roles_employee
select * from roles_employee;
--10 Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	foreign key (employee_id) 
		references employees(id),
	role_id int NOT null,
	foreign key (role_id)
		references roles(id)
	);
--11 Наполнить таблицу roles_employee 40 строками:
insert INTO roles_employee(id, employee_id, role_id)
VALUES
	(default, 7, 2),
	(default, 20, 4),
	(default, 3, 9),
	(default, 5, 13),
	(default, 23, 4),
	(default, 11, 2),
	(default, 10, 9),
	(default, 22, 13),
	(default, 21, 3),
	(default, 34, 4),
	(default, 6, 7),
	(default, 1, 5),
	(default, 2, 6),
	(default, 9, 11),
	(default, 12, 5),
	(default, 15, 7),
	(default, 16, 14),
	(default, 29, 17),
	(default, 35, 16),
	(default, 36, 19),
	(default, 42, 4),
	(default, 46, 3),
	(default, 47, 5),
	(default, 50, 2),
	(default, 53, 6),
	(default, 62, 8),
	(default, 64, 10),
	(default, 67, 13),
	(default, 68, 14),
	(default, 69, 11),
	(default, 33, 16),
	(default, 39, 4),
	(default, 28, 3),
	(default, 25, 6),
	(default, 17, 1),
	(default, 54, 9),
	(default, 45, 13),
	(default, 44, 5),
	(default, 8, 6),
	(default, 32, 16);