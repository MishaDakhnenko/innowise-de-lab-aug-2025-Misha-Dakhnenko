-- Функция CalculateAnnualBonus
CREATE OR REPLACE FUNCTION CalculateAnnualBonus(emp_id INT, salary DECIMAL)
RETURNS DECIMAL AS $$
BEGIN
  RETURN salary * 0.1;
END;
$$ LANGUAGE plpgsql;

-- Используем функцию
SELECT EmployeeID, FirstName, LastName,
       CalculateAnnualBonus(EmployeeID, Salary) AS Bonus
FROM Employees;

-- Создадим представление IT_Department_View
CREATE OR REPLACE VIEW IT_Department_View AS
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Department = 'IT';

-- Проверим представление
SELECT * FROM IT_Department_View;
