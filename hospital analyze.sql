
CREATE DATABASE IF NOT EXISTS hospital_analysis;


USE hospital_analysis;



CREATE TABLE IF NOT EXISTS hospital (
    id INT AUTO_INCREMENT PRIMARY KEY,
    person_type ENUM('Patient', 'Doctor', 'Nurse', 'Watchman', 'Staff') NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    department VARCHAR(50),
    admission_date DATE,
    discharge_date DATE,
    salary DECIMAL(10, 2),
    shift VARCHAR(20),
    specialization VARCHAR(50),
    contact_number VARCHAR(20)
);


INSERT INTO hospital (person_type, name, age, gender, department, admission_date, discharge_date, salary, shift, specialization, contact_number)
VALUES
    ('Patient', 'John Doe', 45, 'Male', 'Cardiology', '2023-03-15', '2023-03-20', NULL, NULL, NULL, '555-0101'),
    ('Patient', 'Jane Smith', 32, 'Female', 'Orthopedics', '2023-03-18', NULL, NULL, NULL, NULL, '555-0102'),
    ('Doctor', 'Dr. Emily Johnson', 38, 'Female', 'Cardiology', NULL, NULL, 150000.00, 'Day', 'Cardiologist', '555-0201'),
    ('Doctor', 'Dr. Michael Lee', 42, 'Male', 'Orthopedics', NULL, NULL, 140000.00, 'Night', 'Orthopedic Surgeon', '555-0202'),
    ('Nurse', 'Sarah Williams', 29, 'Female', 'Cardiology', NULL, NULL, 60000.00, 'Day', 'Cardiac Nurse', '555-0301'),
    ('Nurse', 'Robert Brown', 33, 'Male', 'Emergency', NULL, NULL, 65000.00, 'Night', 'ER Nurse', '555-0302'),
    ('Watchman', 'George Davis', 50, 'Male', 'Security', NULL, NULL, 35000.00, 'Night', NULL, '555-0401'),
    ('Staff', 'Linda Martinez', 27, 'Female', 'Administration', NULL, NULL, 45000.00, 'Day', 'Receptionist', '555-0501'),
    ('Staff', 'Thomas Wilson', 35, 'Male', 'Maintenance', NULL, NULL, 40000.00, 'Day', 'Janitor', '555-0502');
    
    
    
    SELECT 
    person_type,
    COUNT(*) as total_count,
    AVG(age) as average_age,
    AVG(salary) as average_salary
FROM 
    hospital
GROUP BY 
    person_type;
