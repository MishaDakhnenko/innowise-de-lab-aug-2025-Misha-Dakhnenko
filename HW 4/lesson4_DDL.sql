-- Создадим таблицу Departments
CREATE TABLE Departments (
  DepartmentID SERIAL PRIMARY KEY,
  DepartmentName VARCHAR(50) UNIQUE NOT NULL,
  Location VARCHAR(50)
);

-- Добавим столбец Email в Employees
ALTER TABLE Employees
ADD COLUMN Email VARCHAR(100);

-- Сделаем Email уникальным
UPDATE Employees
SET Email = CONCAT(LOWER(FirstName), '.', LOWER(LastName), '@company.com');

ALTER TABLE Employees
ADD CONSTRAINT unique_email UNIQUE (Email);

-- Переименуем столбец Location в OfficeLocation
ALTER TABLE Departments
RENAME COLUMN Location TO OfficeLocation;