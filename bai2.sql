CREATE DATABASE Bai1;

USE Bai1;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(255)
) ;

SELECT * FROM
    Department;
    
    create table Position (
    PositionID INT primary key auto_increment,
    PositionName varchar(200)
    );
    
    CREATE TABLE Account (
    AccountID INT Primary key Auto_increment,
    Email varchar(255), 
    UserName Varchar(255),
    FullName Varchar(255),
    DepartmentID INT,
    PositionID INT,
    CreateDate DATE
    );

CREATE DATABASE fresher_training_management;


    
CREATE TABLE Trainee (
trainee_ID INT PRIMARY KEY AUTO_iNCREMENT,
full_name VARCHAR(255),
birthDate Date,
gender ENUM('Male', 'Female', 'Unknown'),
et_iq INT,
et_gmath INT,
et_english INT,
training_class Varchar(50),
evalution_notes Varchar(500),
Constraint trainees Check (et_iq BETWEEN 0 AND 20 OR et_gmath BETWEEN 0 AND 20 OR et_english BETWEEN 0 AND 50)
);

CREATE TABLE if not exists Trainee (
trainee_ID INT PRIMARY KEY AUTO_iNCREMENT,
full_name VARCHAR(255),
birthDate Date,
gender ENUM('Male', 'Female', 'Unknown'),
et_iq tinyint,
check (0 <= et_iq <= 20),
et_gmath tinyint,
check (0 <= et_gmath <= 20),
et_english tinyint,
check (0 <= et_english <= 50),
training_class Varchar(255),
evalution_notes Varchar(255)
);

alter table trainee
add vti_account varchar(255) not null unique;

select * from trainee;

alter table trainee add constraint unique (vti_account);

alter table trainee
rename column birthDate to birth_date;

CREATE TABLE if not exists Trainee2 (