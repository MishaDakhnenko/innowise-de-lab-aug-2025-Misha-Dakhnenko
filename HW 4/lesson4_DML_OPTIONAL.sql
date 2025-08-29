-- Найдем проекты, где Bob Johnson работал > 150 часов
SELECT p.ProjectName
FROM Projects p
JOIN EmployeeProjects ep ON p.ProjectID = ep.ProjectID
JOIN Employees e ON e.EmployeeID = ep.EmployeeID
WHERE e.FirstName = 'Bob' AND e.LastName = 'Johnson' AND ep.HoursWorked > 150;

-- Увеличим Budget проектов с сотрудниками из IT на 10%
UPDATE Projects
SET Budget = Budget * 1.1
WHERE ProjectID IN (
    SELECT DISTINCT ep.ProjectID
    FROM EmployeeProjects ep
    JOIN Employees e ON e.EmployeeID = ep.EmployeeID
    WHERE e.Department = 'IT'
);

-- Установим EndDate для проектов с NULL
UPDATE Projects
SET EndDate = StartDate + INTERVAL '1 year'
WHERE EndDate IS NULL;

-- Вставим нового сотрудника и назначим на Website Redesign
BEGIN;

INSERT INTO Employees (FirstName, LastName, Department, Salary)
VALUES ('Helen', 'Moore', 'IT', 70000.00)
RETURNING EmployeeID;

-- Вернулся EmployeeID = 6
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, HoursWorked)
VALUES (6, 1, 80);

COMMIT;
