-- Отсортировать сотрудников по фамилии в алфавитном порядке.

select * 
from employees
order by last_name;

-- Отсортировать сотрудников по зарплате - от самой большой зарплаты до самой маленькой.
select * 
from employees
order by salary desc;

-- Вывести сотрудников, работающих в департаментах с id 60, 90 и 110, отсортированными в алфавитном порядке по фамилии 
select * 
from employees
where department_id in (60,90,110)
order by last_name;

-- Вывести трех сотрудников, чьи имена начинаются на букву D и отсортировать их в алфавитном порядке по фамилии
select * 
from employees
where first_name like 'D%'
order by last_name;

-- Вывести сотрудника с самой низкой зарплатой.
select * 
from employees
order by salary 
limit 1;