CREATE DATABASE HospitalDB;
USE HospitalDB;

-- Table 1: Patients
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    phone BIGINT,
    address VARCHAR(150),
    disease VARCHAR(50),
    admission_date DATE
);

INSERT INTO Patients VALUES (1,'Asha',30,'Female',9876111111,'Mysore','Fever','2025-04-01');

-- Table 2: Doctors
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialization VARCHAR(50),
    experience INT,
    phone BIGINT,
    email VARCHAR(100),
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO Doctors VALUES (101,'Dr. Kumar','Cardiology',15,9876222222,'kumar@gmail.com',80000,'Heart');

-- Table 3: Appointments
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    date DATE,
    time TIME,
    status VARCHAR(20),
    remarks VARCHAR(100),
    fees DECIMAL(10,2)
);

INSERT INTO Appointments VALUES (1,1,101,'2025-04-02','10:30:00','Completed','Normal check',500);

-- Table 4: Medicines
CREATE TABLE Medicines (
    medicine_id INT PRIMARY KEY,
    name VARCHAR(50),
    manufacturer VARCHAR(50),
    price DECIMAL(10,2),
    expiry_date DATE,
    stock INT,
    category VARCHAR(50),
    description VARCHAR(100)
);

INSERT INTO Medicines VALUES (201,'Paracetamol','Cipla',50,'2026-01-01',100,'Tablet','Fever reducer');

-- Table 5: Billing
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    total_amount DECIMAL(10,2),
    discount DECIMAL(10,2),
    final_amount DECIMAL(10,2),
    payment_mode VARCHAR(20),
    bill_date DATE,
    status VARCHAR(20)
);

INSERT INTO Billing VALUES (1,1,2000,200,1800,'Cash','2025-04-02','Paid');