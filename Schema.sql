CREATE TABLE Family (
FName VARCHAR (30) NOT NULL,
LName VARCHAR (30) NOT NULL,
Age   INT          NOT NULL,
PRIMARY KEY (FName),
PRIMARY KEY (LName)
);

CREATE TABLE Brand (
BrandName VARCHAR (30) NOT NULL,
PRIMARY KEY (BrandName)
);

CREATE TABLE Items (
ItemName  VARCHAR (30) NOT NULL,
Price     FLOAT,
BrandName VARCHAR (30) NOT NULL,
PRIMARY KEY (ItemName),
FOREIGN KEY (BrandName) REFERENCES Brand(BrandName)
);

CREATE TABLE Household (
ItemName  VARCHAR (30) NOT NULL,
Price     FLOAT,
BrandName VARCHAR (30) NOT NULL,
Quantity  INT,
PRIMARY KEY (ItemName),
FOREIGN KEY (BrandName) REFERENCES Brand(BrandName),
FOREIGN KEY (ItemName)  REFERENCES Items(ItemName)
);

CREATE TABLE Personal (
ItemName  VARCHAR (30) NOT NULL,
Price     FLOAT,
BrandName VARCHAR (30) NOT NULL,
Quantity  INT,
PRIMARY KEY (ItemName),
FOREIGN KEY (BrandName) REFERENCES Brand(BrandName),
FOREIGN KEY (ItemName)  REFERENCES Items(ItemName)
);
