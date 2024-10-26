-- SQL Schema for Financial Advising Company
CREATE DATABASE crm;

USE crm;

-- Creating Companies Table
CREATE TABLE Companies (
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Creating Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    rating FLOAT,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);

-- Creating Departments Table
CREATE TABLE Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Creating Employees Table
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    department_id INT,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

