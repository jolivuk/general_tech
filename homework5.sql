/*
1. Создать базу Shop, используя следующий скрипт: https://github.com/NelliEfr/MySQL_databases/blob/main/shop.txt

*/
use shop;

-- Выведите имена всех продавцов. Предусмотрите также в выборке имена их боссов, 
-- сформировав атрибут bossname. В выборке должно присутствовать два атрибута — sname, bossname.

select s1.sname, s2.sname as bossname
from sellers s1
join sellers s2
on s1.boss_id = s2.sell_id;

-- Выведите имена покупателей, которые совершили покупку на сумму больше 1000 условных единиц.
-- В выборке должно присутствовать два атрибута — cname, amt.

select cname, amt
from customers c
join orders o
on c.cust_id = o.cust_id
where amt > 1000;

-- Выведите имена покупателей, которые сделали заказ.
-- Предусмотрите в выборке также имена продавцов.
-- Примечание: покупатели и продавцы должны быть из разных городов.
-- В выборке должно присутствовать два атрибута — cname, sname.

select cname as customer, sname as seller
from customers c
join orders o
on c.cust_id = o.cust_id
join sellers s
on s.sell_id = o.sell_id
where c.city != s.city;

-- Выведите пары покупателей и обслуживших их продавцов из одного города.
-- Вывести: sname, cname, city

select cname as customer, sname as seller, c.city
from customers c
join orders o
on c.cust_id = o.cust_id
join sellers s
on s.sell_id = o.sell_id
where c.city = s.city;
