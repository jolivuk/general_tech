/*
 1 уровень сложности: Создать базу данных hr и заполнить:
https://github.com/annykh/genTech/blob/main/hr%20database.txt

В задачах будут использованы разные таблицы из hr.

*/
use hr;

-- В таблице employees создать новое поле salarywithcomm numeric(10, 3) и заполнить формулой: salary + salary * 15 / 100.

alter table employees
add column salarywithcomm numeric(10, 3);

set sql_safe_updates = 0;

update employees
set salarywithcomm = salary + salary * 15 / 100;

select * from employees;

-- Вывести из таблицы employees поля firstname и lastname как fullname, salary и salarywith_comm(округлить в большую сторону).

select concat(first_name," ",last_name) as fullname, ceiling(salarywithcomm)
from employees;


-- В таблице employees создать новое поле chk_email типа varchar(128)
alter table employees
add column chk_email varchar(128);


-- Заполнить поле chkemail. Если длина email меньше 25, значением chkemail будет 'Введите больше символов', 
-- если длина email больше/равно 25 и меньше 30,  значением chkemail будет 'Кол/во символов совпадает', 
-- если длина email больше/равно 30,  значением chkemail будет 'Введите меньше символов'.


select * 
from employees;

update employees
set chk_email =
case
	when length(email) <25 then 'Введите больше символов'
    when length(email) <30 then 'Кол/во символов совпадает'
    when length(email) >=30 then 'Введите меньше символов'
end;

-- Из таблицы countries получить список стран с указанием количества символов в их названиях.

select country_name, length(country_name) as countofsymbols
from countries;


-- Из таблицы countries получить список стран и их первые три символа в названии

select country_name, left(country_name,3) as short_name
from countries;


-- Из таблицы employees получить список сотрудников с заменой в email слово "sqltutorial" на "Confidential".

select first_name, last_name, replace(lower(email), "sqltutorial", "Confidential") as newemail
from employees;


-- Из таблицы employees получить список сотрудников и последние четыре символа phone_number.
select first_name, last_name, right(phone_number,4)
from employees;

set sql_safe_updates = 1;
