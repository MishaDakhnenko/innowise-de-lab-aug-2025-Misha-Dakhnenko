-- Вставим двух новых сотрудников
INSERT INTO Employees (FirstName, LastName, Department, Salary)
VALUES ('Bob', 'Dylan', 'IT', 70000.00),
       ('Johnny', 'Cash', 'Finance', 90000.00);

-- Выберем всех сотрудников
SELECT * FROM Employees;

-- Выберем только FirstName и LastName сотрудников из отдела 'IT'
SELECT FirstName, LastName
FROM Employees
WHERE Department = 'IT';

-- Обновим Salary 'Alice Smith' до 65000.00
UPDATE Employees
SET Salary = 65000.00
WHERE FirstName = 'Alice' AND LastName = 'Smith';

-- Удалим сотрудника, чья LastName = 'Prince'
DELETE FROM Employees
WHERE LastName = 'Prince';

-- Проверим все изменения
SELECT * FROM Employees;
