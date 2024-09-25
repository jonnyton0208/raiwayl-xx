CREATE DATABASE testing_system;
USE testing_system;

CREATE TABLE Department(
    DepartmentID int auto_increment PRIMARY KEY,
    DepartmentName  varchar(50)
);

CREATE TABLE `Position`(
    PositionID int auto_increment PRIMARY KEY,
    PositionName varchar(50)
);

CREATE TABLE `Account`(
    AccountID int auto_increment PRIMARY KEY,
    Email varchar(30),
    Username varchar(16),
    Fullname varchar(50),
    DepartmentID int,
    PositionID int,
    CreateDate date
);

CREATE TABLE `Group`(
    GroupID int auto_increment PRIMARY KEY,
    GroupName varchar(20),
    CreatorID int,
    CreateDate date
);

CREATE TABLE GroupAccount(
    GroupID int,
    AccountID int,
    JoinDate date
);

CREATE TABLE TypeQuestion(
    TypeID int auto_increment PRIMARY KEY,
    TypeName varchar(100)
);

CREATE TABLE CategoryQuestion(
    CategoryID int auto_increment PRIMARY KEY,
    CategoryName varchar(50)
);

CREATE TABLE Question(
    QuestionID int auto_increment PRIMARY KEY,
    Content varchar(100),
    CategoryID int,
    TypeID int,
    CreatorID int,
    CreateDate date
);

CREATE TABLE Answer(
    AnswerID int auto_increment PRIMARY KEY,
    Content varchar(200),
    QuestionID int,
    isCorrect TINYINT
);

CREATE TABLE Exam(
    ExamID int auto_increment PRIMARY KEY,
    Code varchar(10),
    Title varchar(20),
    CategoryID int,
    Duration int,
    CreatorID int,
    CreateDate date
);

CREATE TABLE ExamQuestion(
    ExamID int,
    QuestionID int
);