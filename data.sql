-- Sample INSERT Statements for Financial Advising Company Schema
use crm;
-- Inserting data into Companies
INSERT INTO Companies (name, description) VALUES
('StarDust Groups', 'A multi-group of companies providing various services to public'),
('Stark Industries', 'An Advanced company providing warfare to USA Military'),
('Aura Solutions', 'Focused on fashion designing and E-commerce business.');

-- Inserting data into Customers
INSERT INTO Customers (first_name, last_name, rating, company_id) VALUES
('Heath', 'Ledger', 5, 1),
('Captain', 'America', 4, 2),
('Scarlett', 'Johnson', 3, 3),
('Paul', 'Walker', 5, 2),
('Dwayne', 'Johnson', 5, 1),
('Ms', 'Marvel', 4, 3);

-- Inserting data into Departments
INSERT INTO Departments (name) VALUES
('IT'),
('Warfare'),
('Designs');

-- Inserting data into Employees
INSERT INTO Employees (first_name, last_name, department_id) VALUES
('Darren', 'Brown', 1),
('Justin', 'Davis', 1),
('Ratan', 'Tata', 2);

