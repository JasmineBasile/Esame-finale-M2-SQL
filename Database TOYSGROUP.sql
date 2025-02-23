Create database ToysGroup;
use ToysGroup;

Create table Category (
ID int AUTO_INCREMENT primary key,
Categoryname varchar (50));

Create table Product (
ID int AUTO_INCREMENT primary key,
Productname varchar (50),
IDCategory INT not null,
foreign key (IDCategory) references Category(ID)
);

Alter table Product
add column Unitprice decimal (8,2);

Create table Region (
ID int AUTO_INCREMENT primary key,
Regionname varchar (50)
);

Create table State (
ID int AUTO_INCREMENT primary key,
Statename varchar (50),
IDRegion int not null,
FOREIGN KEY (IDRegion) references Region(ID)
);

Create table Sales (
ID int AUTO_INCREMENT primary key,
Salesdate date not null,
IDProduct int not null,
IDRegion int not null,
Quantity int not null,
UnitPrice decimal (8,2) not null,
FOREIGN KEY (IDProduct) references Product(ID),
FOREIGN KEY (IDRegion) references Region(ID)
);

Alter table Sales Add column Salesamount decimal (10,2);
Update Sales SET Salesamount = Quantity * UnitPrice;
Select * from Sales;                                                                           

-- Inserimento dei record
SELECT * from Category;
Insert into Category (Categoryname) Values
('Costruzione'),
('Fisico'),
('Tecnologici'),
('Immaginazione'),
('Cognitivi');

SELECT * from Product;
Insert into Product (Productname, IDCategory, Unitprice) Values
('Bambola', '4', '150.99'),
('Trenino', '2', '99.49'),
('Cubi di costruzione', '1', '120.89'),
('Peluche', '4', '75.50'),
('Macchinine', '2', '69.99'),
('Puzzle', '5', '80.75'),
('Gioco da tavolo', '5', '149.99'),
('Giocattolo interattivo', '3', '199.49'),
('Giostrina', '4', '102.29'),
('Aeroplano giocattolo', '2', '119.99'),
('Lego', '1', '299.99'),
('Yo-yo', '5', '57.90'),
('Palla', '2', '49.99'),
('Puzzle 3D', '5', '225.50'),
('Bici', '2', '1899.99'),
('Tenda da gioco', '4', '249.99'),
('Robot', '3', '399.99'),
('Strumenti musicali giocattolo', '5', '134.49'),
('Mini droni', '2', '459.99'),
('Costruzioni magnetiche', '1', '198.90');

Select * from Region;
Insert into Region (Regionname) Values
('WestEurope'),
('SouthEurope'),
('NorthEurope'),
('EastEurope'),
('CentralEurope'),
('SoutheastEurope');

Select * from State;
Insert into State (Statename, IDRegion) Values
('France', '1'),
('Germany', '1'),
('Netherlands', '1'),
('Belgium', '1'),
('Luxembourg', '1'),
('Italy', '2'),
('Greece', '2'),
('Spain', '2'),
('Portugal', '2'),
('Croatia', '2'),
('United Kingdom', '3'),
('Ireland', '3'),
('Denmark', '3'),
('Sweden', '3'),
('Norway', '3'),
('Poland', '4'),
('Czech Republic', '4'),
('Hungary', '4'),
('Slovakia', '4'),
('Romania', '4'),
('Austria', '5'),
('Switzerland', '5'),
('Belgium', '5'),
('Slovenia', '5'),
('Liechtenstein', '5'),
('Bulgaria', '6'),
('Albania', '6'),
('Serbia', '6'),
('Montenegro', '6'),
('North Macedonia', '6');

Select * from Sales;
INSERT INTO Sales (Salesdate, IDProduct, IDRegion, Quantity, Unitprice) VALUES
('2023-01-01', '21', '1', 3, 199.49),
('2023-01-02', '22', '2', 5, 249.99),
('2023-01-05', '23', '3', 2, 399.99),
('2023-01-06', '24', '4', 7, 299.99),
('2023-01-10', '25', '5', 4, 134.49),
('2023-01-12', '26', '6', 3, 459.99),
('2023-01-15', '27', '1', 0, 198.90),
('2023-01-18', '28', '2', 6, 149.99),
('2023-01-20', '29', '3', 1, 57.90),
('2023-01-22', '30', '4', 3, 225.50),
('2023-01-25', '31', '5', 8, 119.99),
('2023-01-28', '32', '6', 0, 80.75),
('2023-02-01', '33', '1', 4, 102.29),
('2023-02-03', '34', '2', 5, 299.99),
('2023-02-05', '35', '3', 7, 149.99),
('2023-02-08', '36', '4', 6, 134.49),
('2023-02-10', '37', '5', 2, 198.90),
('2023-02-12', '38', '6', 3, 199.49),
('2023-02-15', '39', '1', 8, 80.75),
('2023-02-18', '40', '2', 5, 119.99),
('2023-02-20', '21', '3', 4, 299.99),
('2023-02-22', '22', '4', 7, 57.90),
('2023-02-25', '23', '5', 3, 225.50),
('2023-03-01', '24', '6', 6, 249.99),
('2023-03-03', '25', '1', 0, 399.99),
('2023-03-06', '26', '2', 3, 134.49),
('2023-03-10', '27', '3', 2, 459.99),
('2023-03-12', '28', '4', 5, 198.90),
('2023-03-15', '29', '5', 4, 150.99),
('2023-03-18', '30', '6', 1, 149.99),
('2023-03-20', '31', '1', 2, 199.49),
('2023-03-22', '32', '2', 0, 57.90),
('2023-03-25', '33', '3', 6, 119.99),
('2023-03-28', '34', '4', 3, 299.99),
('2023-04-01', '35', '5', 5, 80.75),
('2023-04-03', '36', '6', 0, 80.75),
('2023-04-06', '37', '1', 7, 119.99),
('2023-04-09', '38', '2', 3, 299.99),
('2023-04-12', '39', '3', 5, 149.99),
('2023-04-15', '40', '4', 2, 134.49),
('2023-04-18', '21', '5', 6, 198.90),
('2023-04-20', '22', '6', 1, 199.49),
('2023-04-23', '23', '1', 2, 80.75),
('2023-04-25', '24', '2', 4, 119.99),
('2023-04-28', '25', '3', 3, 299.99),
('2023-05-01', '26', '4', 8, 150.99),
('2023-05-03', '27', '5', 5, 134.49),
('2023-05-05', '28', '6', 6, 80.75),
('2023-05-08', '29', '1', 4, 119.99),
('2023-05-10', '30', '2', 7, 299.99),
('2023-05-13', '31', '3', 3, 150.99),
('2023-05-15', '32', '4', 0, 57.90),
('2023-05-18', '33', '5', 8, 199.49),
('2023-05-20', '34', '6', 4, 249.99);
INSERT INTO Sales (Salesdate, IDProduct, IDRegion, Quantity, Unitprice) VALUES
('2023-05-22', '21', '1', 3, 150.99),
('2023-05-24', '22', '2', 6, 99.49),
('2023-05-27', '23', '3', 2, 299.99),
('2023-05-29', '24', '4', 7, 249.99),
('2023-06-01', '25', '5', 4, 134.49),
('2023-06-03', '26', '6', 5, 459.99),
('2023-06-05', '27', '1', 0, 198.90),
('2023-06-07', '28', '2', 3, 149.99),
('2023-06-10', '29', '3', 1, 57.90),
('2023-06-12', '30', '4', 2, 225.50),
('2023-06-14', '31', '5', 4, 119.99),
('2023-06-17', '32', '6', 0, 80.75),
('2023-06-20', '33', '1', 6, 102.29),
('2023-06-22', '34', '2', 5, 299.99),
('2023-06-24', '35', '3', 3, 149.99),
('2023-06-27', '36', '4', 2, 134.49),
('2023-06-30', '37', '5', 6, 198.90),
('2023-07-03', '38', '6', 3, 199.49),
('2023-07-05', '39', '1', 7, 80.75),
('2023-07-07', '40', '2', 5, 119.99),
('2023-07-09', '21', '3', 8, 299.99),
('2023-07-12', '22', '4', 4, 57.90),
('2023-07-14', '23', '5', 3, 225.50),
('2023-07-16', '24', '6', 7, 249.99),
('2023-07-18', '25', '1', 6, 399.99),
('2023-07-21', '26', '2', 2, 134.49),
('2023-07-23', '27', '3', 0, 459.99),
('2023-07-25', '28', '4', 3, 198.90),
('2023-07-28', '29', '5', 4, 150.99),
('2023-07-30', '30', '6', 8, 149.99),
('2023-08-02', '31', '1', 1, 199.49),
('2023-08-04', '32', '2', 0, 57.90),
('2023-08-06', '33', '3', 6, 119.99),
('2023-08-08', '34', '4', 4, 299.99),
('2023-08-10', '35', '5', 5, 80.75),
('2023-08-12', '36', '6', 2, 80.75),
('2023-08-15', '37', '1', 7, 119.99),
('2023-08-17', '38', '2', 4, 299.99),
('2023-08-19', '39', '3', 1, 150.99),
('2023-08-22', '40', '4', 3, 134.49),
('2023-08-24', '21', '5', 0, 198.90),
('2023-08-26', '22', '6', 5, 199.49),
('2023-08-28', '23', '1', 4, 80.75),
('2023-08-30', '24', '2', 7, 119.99),
('2023-09-02', '25', '3', 6, 299.99),
('2023-09-04', '26', '4', 2, 150.99),
('2023-09-06', '27', '5', 5, 134.49),
('2023-09-09', '28', '6', 1, 80.75);

Start transaction;
Update Sales SET Salesdate = '2024-08-25' where ID = 401;
Update Sales SET Salesdate = '2024-08-31' where ID = 402;
Update Sales SET Salesdate = '2024-09-14' where ID = 403;
Update Sales SET Salesdate = '2024-09-27' where ID = 404;
Update Sales SET Salesdate = '2024-10-31' where ID = 405;
Update Sales SET Salesdate = '2024-12-31' where ID = 406;
Update Sales SET Salesdate = '2024-11-03' where ID = 407;
Update Sales SET Salesdate = '2025-01-31' where ID = 408;
Update Sales SET Salesdate = '2025-01-15' where ID = 409;
Update Sales SET Salesdate = '2025-02-12' where ID = 410;
rollback;
Select * from Sales;
Start transaction;
Update Sales SET Salesdate = '2025-08-25' where ID = 411;
Update Sales SET Salesdate = '2025-08-31' where ID = 412;
Update Sales SET Salesdate = '2025-09-14' where ID = 413;
Update Sales SET Salesdate = '2025-09-27' where ID = 414;
Update Sales SET Salesdate = '2025-10-31' where ID = 415;
Update Sales SET Salesdate = '2025-12-31' where ID = 416;
Update Sales SET Salesdate = '2025-11-03' where ID = 417;
Update Sales SET Salesdate = '2025-01-31' where ID = 418;
Update Sales SET Salesdate = '2025-01-15' where ID = 419;
Update Sales SET Salesdate = '2025-02-12' where ID = 420;
rollback;
Select * from Sales;


-- INIZIO DELE TASK ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Task  1= Verificare che i campi definiti come PK siano univoci. In altre parole, scrivi una query per determinare l’univocità dei valori di ciascuna PK (una query per tabella implementata).
Select * from Category; -- La chiave ID per la tab Category è UNIVOCA
Select ID, Count(*) as Univocita
From Category
Group by ID having Count(*) >1;

Select * from Product; -- La chiave ID per la tab Product è UNIVOCA
Select ID, Count(*) as Univocita
From Product
Group by ID having Count(*) >1;

Select * from Region; -- La chiave ID per la tab Region è UNIVOCA
Select ID, Count(*) as Univocita
From Region
Group by ID having Count(*) >1;

Select * from State; -- La chiave ID per la tab State è UNIVOCA
Select ID, Count(*) as Univocita
From State
Group by ID having Count(*) >1;

Select * from Sales; -- La chiave ID per la tab Sales è UNIVOCA
Select ID, Count(*) as Univocita
From Sales
Group by ID having Count(*) >1;

-- Task 2= Esporre l’elenco delle transazioni indicando nel result set:
--  il codice documento, la data, il nome del prodotto, la categoria del prodotto, il nome dello stato, il nome della regione di vendita e un campo booleano valorizzato in base alla condizione che siano passati più di 180 giorni dalla data vendita o meno (>180 -> True, <= 180 -> False).
Select * from Sales;
Select * from Product;
Select * from Category;
Select * from State;
Select * from Region;
 
Select Sales.ID as Codice_documento, Sales.Salesdate as Data_documento, Product.Productname as Nome_prodotto, Category.Categoryname as Categoria_prodotto, 
State.Statename as Nome_stato,
Region.Regionname as Nome_regione, IF(datediff(current_date, sales.salesdate) > 180, 'True', 'False') as '>180Giorni'
From Sales
Join Product on Sales.IDProduct = Product.ID
Join Region on Sales.IDRegion = Region.ID
Join Category on Product.IDCategory = Category.ID
Join State on Region.ID = State.IDRegion;

-- Task 3= Esporre l’elenco dei prodotti che hanno venduto, in totale, una quantità maggiore della media delle vendite realizzate nell’ultimo anno censito. (Ogni valore della condizione deve risultare da una query e non deve essere inserito a mano). Nel result set devono comparire solo il codice prodotto e il totale venduto.
Select * from Sales; -- Funziona con la prova con la Select * From Sales Where Year(salesdate) = 2025;
Select IDProduct, Salesamount as FatturatoTotale
From Sales
Where Year(Salesdate) = (Select Max(Year(Salesdate)) From Sales)
Group by IDProduct, Salesamount
Having Sum(Salesamount) > (Select Avg(Salesamount) as Media_FatturatoTotale from Sales);

-- Task 4= Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno.
Select * from Sales;
Select * from Product;
Select Sales.IDProduct as IDProdotto, Product.Productname as Nome_Prodotto, Year(Sales.Salesdate) as Anno_Vendita, Sum(Salesamount) as Fatturato_Totale
From Sales
Join Product on Sales.IDProduct = Product.ID
Group by Sales.IDProduct, Anno_Vendita
Order by Fatturato_Totale Desc;

-- Task 5= Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente.
Select * from Sales;
Select * from Product;
Select * from State;
Select * from Region;
Select Sum(Salesamount) as Fatturato_Totale, State.Statename as Stato, Year(Sales.Salesdate) as Anno_Vendita
From Sales
Join Product on Sales.IDProduct = Product.ID
Join Region on Sales.IDRegion = Region.ID
Join State on Region.ID = State.ID
Group by Sales.IDProduct, Stato, Anno_Vendita
Order by Anno_Vendita and Fatturato_Totale Desc;

-- Task 6= Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?
Select * from Sales;
Select * from Product;
Select * from Category;
Select Category.Categoryname, SUM(Sales.Quantity) as Quantità_Totali
From Sales
Join Product on Sales.IDProduct = Product.ID
Join Category on Product.IDCategory = Category.ID
Group by Category.ID
Order by Quantità_Totali Desc
Limit 1;

-- Task 7= Rispondere alla seguente domanda: quali sono i prodotti invenduti? Proponi due approcci risolutivi differenti.
-- 1° approccio risolutivo
Select * from Product;
Select * from Sales;
Select Product.ID, Product.Productname
From Product 
Join Sales on Product.ID = Sales.IDProduct
Where Sales.Quantity = 0;

-- 2° approccio risolutivo 
Select Product.ID, Product.Productname
From Product
Left Join Sales on Product.ID = Sales.IDProduct
Where Sales.Quantity = 0 or Sales.IDProduct is Null;

-- Task 8= Creare una vista sui prodotti in modo tale da esporre una “versione denormalizzata” delle informazioni utili (codice prodotto, nome prodotto, nome categoria).
Select * from Product;
Select * from Category;
Create view Prodotti as
Select Product.ID, Product.Productname, Category.Categoryname
From Product
Join Category on Product.IDCategory = Category.ID;

-- Task 9= Creare una vista per le informazioni geografiche.
Create view Informazioni_Geografiche as 
Select * from State;

