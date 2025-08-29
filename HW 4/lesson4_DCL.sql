-- Создадим пользователя hr_user
CREATE ROLE hr_user LOGIN PASSWORD '12big34data';
-- Дадим право SELECT на Employees
GRANT SELECT ON Employees TO hr_user;

-- Проверим (как hr_user)
SELECT * FROM Employees;
-- Попробуем INSERT (ошибка):
INSERT INTO Employees (FirstName, LastName, Department, Salary) VALUES ('Test', 'User', 'IT', 50000);

-- Дадим INSERT и UPDATE
GRANT INSERT, UPDATE ON Employees TO hr_user;
-- Проверка (как hr_user):
INTO Employees (FirstName, LastName, Department, Salary) VALUES ('Test2', 'User2', 'HR', 55000);
UPDATE Employees SET Salary = 60000 WHERE LastName = 'User2';