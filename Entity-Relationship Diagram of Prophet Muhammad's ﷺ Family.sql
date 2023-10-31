-- Database Creation
CREATE DATABASE Prophet;

-- Use Database
USE Prophet;

-- Table Creation
CREATE TABLE Family (
    Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Name VARCHAR(255),
    ParentName INT,
    FOREIGN KEY (ParentName)
        REFERENCES Family (Id)
);

-- For reading inserted data
SELECT 
    *
FROM
    Family;
-- Data Insertion
INSERT INTO Family (Name,ParentName) VALUES ('محمد صلى الله عليه وسلم',null);
INSERT INTO Family (Name,ParentName) VALUES ('قاسم رضي الله عنه',1);
INSERT INTO Family (Name,ParentName) VALUES ('عبد الله رضي الله عنه (طاهر)',1);
INSERT INTO Family (Name,ParentName) VALUES ('إبراهيم رضي الله عنه',1);
INSERT INTO Family (Name,ParentName) VALUES ('زينب رضي الله عنها',1);
INSERT INTO Family (Name,ParentName) VALUES ('رقية رضي الله عنها',1);
INSERT INTO Family (Name,ParentName) VALUES ('أم كلثوم رضي الله عنها',1);
INSERT INTO Family (Name,ParentName) VALUES ('فاطمة رضي الله عنها',1);
INSERT INTO Family (Name,ParentName) VALUES ('علي رضي الله عنه',5);
INSERT INTO Family (Name,ParentName) VALUES ('أمامة رضي الله عنها',5);
INSERT INTO Family (Name,ParentName) VALUES ('عبد الله رضي الله عنه',6);
INSERT INTO Family (Name,ParentName) VALUES ('حسن رضي الله عنه',8);
INSERT INTO Family (Name,ParentName) VALUES ('حسين رضي الله عنه',8);
INSERT INTO Family (Name,ParentName) VALUES ('محسن رضي الله عنه',8);
INSERT INTO Family (Name,ParentName) VALUES ('أم كلثوم رضي الله عنها',8);
INSERT INTO Family (Name,ParentName) VALUES ('زينب رضي الله عنها',8);




-- Self join by INNER JOIN
SELECT a.Id, a.Name AS 'Name', b.Name AS 'Parent Name' FROM Family a
INNER JOIN Family b ON a.ParentName = b.Id;

-- Self join by WHERE clause
SELECT a.Name AS 'Name', b.Name AS 'Parent Name' FROM Family a, Family b WHERE a.ParentName = b.Id;