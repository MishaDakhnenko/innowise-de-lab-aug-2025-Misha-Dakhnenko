-- Увеличим Salary сотрудников HR на 10%
UPDATE Employees
SET Salary = Salary * 1.1
WHERE Department = 'HR';

-- Обновим Department сотрудников с Salary > 70000 на 'Senior IT'
UPDATE Employees
SET Department = 'Senior IT'
WHERE Salary > 70000;

-- Удалим сотрудников без проектов
DELETE FROM Employees e
WHERE NOT EXISTS (
    SELECT 1 FROM EmployeeProjects ep WHERE ep.EmployeeID = e.EmployeeID
);

-- Добавим проект и сотрудников в транзакции
BEGIN;

INSERT INTO Projects (ProjectName, Budget, StartDate, EndDate)
VALUES ('Cloud Migration', 300000.00, '2023-07-01', '2023-12-31')
RETURNING ProjectID;

-- Вернулся ProjectID = 4
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
VALUES (1, 4, 120), (2, 4, 90);

COMMIT;
