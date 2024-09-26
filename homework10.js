// 1. Найти первых двух сотрудников в списке, отсортированных по имени.
db.employees.find().sort({name: 1}).limit(2)

// Найти сотрудников младше 30 лет и отсортировать их по возрасту в порядке возрастания.
db.employees.find({age: {$lt : 30}}).sort({age: 1})

// Найти сотрудников, начиная с третьего по порядку (пропустив первых двух), и ограничить выборку тремя следующими.
db.employees.find().skip(2).limit(3)

// Найти сотрудников, занимающих должность "Manager" или "HR", и вывести только их имена, ограничив выборку первыми двумя в списке.
db.employees.find({position: {$in:['Manager','HR']}},{name: 1, _id: 0}).limit(2)

// Найти сотрудников с зарплатой выше 5000, пропустив первого сотрудника из выборки, и вывести только их имена.
db.employees.find({salary: {$gt: 5000}},{name: 1, _id: 0}).skip(1)

// Увеличить зарплату на 2000 для всех сотрудников, занимающих должность "Developer".
db.employees.updateMany({position : 'Developer'},{$inc: {salary:2000}})

// Добавить новое поле "manager" для всех сотрудников и задать значение "Alice".
db.employees.updateMany({}, {$set: {manager: 'Alice'}})

// Изменить значение поля "manager" на "Helen" для сотрудников, занимающих должность "HR".
db.employees.updateMany({position: 'HR'}, {$set: {manager: 'Helen'}})

// Уменьшить зарплату на 500 для сотрудника по имени "Charlie".
db.employees.updateOne({name : 'Charlie'},{$inc: {salary:-500}})

// Удалить поле "manager" у всех сотрудников.
db.employees.updateMany({}, {$unset: {manager: 1}})