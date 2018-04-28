-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;

DROP TABLE `Company`;


DROP TABLE `Category`;



-- ************************************** `Category`

CREATE TABLE `Category`
(
 `CategoryID`     INT NOT NULL ,
 `CategoryParent` INT NOT NULL ,
 `CategoryName`   VARCHAR(45) NOT NULL ,

PRIMARY KEY (`CategoryID`)
);





-- ************************************** `Company`

CREATE TABLE `Company`
(
 `CompanyID`       INT NOT NULL ,
 `Name`            VARCHAR(255) NOT NULL ,
 `Email`           VARCHAR(100) NOT NULL ,
 `Address`         TEXT NOT NULL ,
 `Coordinate`      VARCHAR(45) NOT NULL ,
 `Phone`           INT NOT NULL ,
 `PICName`         VARCHAR(255) NOT NULL ,
 `PICMobileNumber` INT NOT NULL ,
 `CategoryID`      INT NOT NULL ,

PRIMARY KEY (`CompanyID`),
KEY `fkIdx_20` (`CategoryID`),
CONSTRAINT `FK_20` FOREIGN KEY `fkIdx_20` (`CategoryID`) REFERENCES `Category` (`CategoryID`)
);




