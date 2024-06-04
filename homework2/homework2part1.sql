-- HOMEWORK 2

-- Создать таблицу employees;
-- employeeid целое число первичный ключ автоинкремент;
-- fname строка не null,
-- lastname строка не null,
-- email строка не null,
-- phone строка не null

create table employee(
     employeeid int primary key auto_increment,
     fname varchar(128) not null,
     lastname varchar(128) not null,
     email varchar(128) not null,
     phone varchar(128) not null
);

-- Добавить поле salary numeric(9, 2)

alter table employee
add column salary numeric(9,2); 

-- Изменить тип salary на integer 
alter table employee
modify column salary integer; 

-- Переименовать поле fname на first_name
alter table employee
change column fname firstname varchar(128) not null; 


-- Удалить поле phone
alter table employee
drop column phone; 

-- Добавить поле department строка не null 
alter table employee
add column departement varchar(128) not null; 


-- Заполнить таблицу (7 строк)

insert into employee(firstname, lastname, email, salary, departement) 
values('John', 'White', 'adfadf', 15000, 'DEP1');

insert into employee(firstname, lastname, email, salary, departement) 
values('Andrew', 'Black', 'adsfasdfa', 25000, 'DEP1');

insert into employee(firstname, lastname, email, salary, departement) 
values('Vera', 'Thomson', 'adsfens', 12000, 'DEP2');

insert into employee(firstname, lastname, email, salary, departement) 
values('Joye', 'Madison', 'zczvxcv', 31000, 'DEP2');

insert into employee(firstname, lastname, email, salary, departement) 
values('Philippe', 'Higgins', 'adsfasd.com', 28800, 'DEP1');

insert into employee(firstname, lastname, email, salary, departement) 
values('Emilie', 'Dupon', 'awerewq.com', 31000, 'DEP1');

insert into employee(firstname, lastname, email, salary, departement) 
values('Simon', 'Johnson', 'johnson.com', 14000, 'DEP2');

select * 
from employee;



