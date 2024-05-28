INSERT into Clientes (nombre, correo_electronico, pass) VALUES
('Carlos Velázquez', 'carlos@book.ex', 'carlos00'),
('César Velázquez', 'cesar@book.ex', 'carlos00'),
('Moisés Evangelista', 'moises@book.ex', 'moises00'),
('Alejandro Cárdenas', 'alejandro@book.ex', 'alejandro00'),
('Daniel Borgoña', 'daniel@book.ex', 'daniel00'),
('Tania Olvera', 'tania@book.ex', 'tania00'),
('Aron Vega', 'aron@book.ex', 'aron00'),
('Samuel Reséndiz', 'samuel@book.ex', 'samuel00'),
('Gerardo Loa', 'gerardo@book.ex', 'gerardo00'),
('Cecilia Olvera', 'cecilia@book.ex', 'cecilia00'),
('Sandra Garcia', 'sandra@book.ex', 'sandra00'),
('Katia De Vicente', 'katia@book.ex', 'katia00');

SELECT*FROM Clientes;

INSERT into Compras (id_cliente, fecha_compra, total) VALUES
(1, '2023-12-30', 192.50),
(2, '2024-02-04', 200.50),
(3, '2024-01-03', 99.99),
(4, '2024-01-10', 63.50),
(5, '2023-11-29', 197.50),
(6, '2023-10-30', 205.50),
(7, '2024-02-05', 600.50),
(1, '2024-03-11', 900.50), --cliente recurrente
(1, '2021-12-30', 505.50), --cliente recurrente
(2, '2024-05-21', 230.50), --cliente recurrente
(2, '2023-11-21', 230.50), --cliente recurrente
(5, '2023-11-21', 230.50), --cliente recurrente
(5, '2024-05-02', 230.50); --cliente recurrente

INSERT into Compras (id_cliente, fecha_compra, total) VALUES
(8, '2023-10-30', 162.50),
(9, '2024-01-04', 210.50),
(10, '2024-03-03', 199.99);

SELECT*FROM Compras;

INSERT INTO Comics (nombre, anio, precio) VALUES
('Spider-Man', 23, 12.99),  -- Representa el año 2023
('Batman', 22, 14.50),      -- Representa el año 2022
('Superman', 21, 13.75),    -- Representa el año 2021
('Wonder Woman', 20, 15.00),-- Representa el año 2020
('The Flash', 19, 11.99),   -- Representa el año 2019
('Green Lantern', 18, 13.00),-- Representa el año 2018
('Iron Man', 17, 16.50),    -- Representa el año 2017
('Thor', 16, 14.99),        -- Representa el año 2016
('Hulk', 15, 12.50),        -- Representa el año 2015
('Captain America', 14, 13.99),-- Representa el año 2014
('Black Panther', 13, 15.25),-- Representa el año 2013
('Doctor Strange', 12, 14.75),-- Representa el año 2012
('Daredevil', 11, 12.25),   -- Representa el año 2011
('Wolverine', 10, 13.50),   -- Representa el año 2010
('Aquaman', 9, 11.75);      -- Representa el año 2009

SELECT*FROM Comics;

INSERT into Inventario (id_comic, cantidad_disponible, disponibilidad) VALUES
(1, 22, 1),
(2, 36, 1),
(3, 45, 1),
(4, 7, 1),
(5, 13, 1),
(6, 18, 1),
(7, 20, 1),
(8, 5, 1),
(9, 13, 1),
(10, 9, 1),
(11, 4, 1),
(12, 10, 1),
(13, 2, 1),
(14, 0, 0),
(15, 0, 0);

SELECT*FROM Inventario;

INSERT INTO ComicCompras (cantidad, id_compra, id_comic) VALUES
(2, 1, 1),   
(1, 2, 2),  
(3, 3, 3),   
(1, 4, 4),   
(2, 5, 5),   
(1, 6, 6),   
(4, 7, 7),   
(2, 8, 8),   
(1, 9, 9),   
(3, 10, 10),
(2, 11, 11), 
(1, 12, 12),
(1, 13, 13), 
(1, 14, 14), 
(1, 15, 15);

SELECT*FROM ComicCompras;