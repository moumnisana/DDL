CREATE TABLE Product(
Product_id VARCHAR2(20) CONSTRAINT pk-Product PRIMARY KEY ,
Product_Name VARCHAR2(20)  NOT NULL,
Price NUMBER CHECK (Price>0)
);
___________________________________________________________
CREATE TABLE Customer(
Customer_id VARCHAR2(20) CONSTRAINT pk-Customer PRIMARY KEY ,
Customer_Name VARCHAR2(20) NOT NULL,
Customer_Tel NUMBER
);
___________________________________________________________
CREATE TABLE Orders(
Quantity NUMBER ,
Total_amount NUMBER,
CONSTRAINT fk_customer  FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
CONSTRAINT fk_product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);
___________________________________________________________
 ALTER TABLE Product ADD Category VARCHAR2(20)
 ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE()