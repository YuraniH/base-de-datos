CREATE DATABASE tienda;
USE tienda;
 
CREATE TABLE Categorias (
ID INT PRIMARY KEY,
Nombre VARCHAR (50)
);
 
CREATE TABLE Productos (
ID INT PRIMARY KEY,
Nombre VARCHAR (50),
Precio DECIMAL (10,2),
CategoriaID INT,
FOREIGN KEY (CategoriaID) REFERENCES Categorias(ID)
);
 
CREATE TABLE Ventas (
ID INT PRIMARY KEY,
ProductoID INT,
Cantidad INT,
Total DECIMAL (10,2),
FOREIGN KEY (ProductoID) REFERENCES Productos(ID)
);
 
INSERT INTO Categorias (ID, Nombre) VALUES
(1, 'Electrónica'),
(2, 'Muebles');
 
 
INSERT INTO Productos (ID, Nombre, Precio, CategoriaID) VALUES
(1, 'Laptop', 1500.0, 1),
(2, 'Silla', 200.00, 2),
(3, 'Teléfono', 800.00, 1);
 
INSERT INTO Ventas (ID, ProductoID, Cantidad, Total) VALUES
(1, 1, 2, 3000.00),
(2, 3, 1, 800.00),
(3, 2, 5, 1000.00);