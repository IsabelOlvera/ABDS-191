SELECT co.nombre, i.cantidad_disponible
FROM Comics AS co
JOIN Inventario AS i ON co.id_comic = i.id_comic
WHERE i.disponibilidad = 1;

SELECT cl.nombre AS Nombre_Cliente, c.id_compra, co.nombre AS Nombre_Comic, cc.cantidad
FROM Clientes as cl
JOIN Compras AS c ON cl.id_cliente = c.id_cliente
JOIN ComicCompras AS cc ON c.id_compra = cc.id_compra
JOIN Comics AS co ON cc.id_comic = co.id_comic;


SELECT c.id_compra, co.nombre AS Nombre_Comic, i.cantidad_disponible
FROM Comics AS co
LEFT JOIN Inventario AS i ON co.id_comic = i.id_comic
LEFT JOIN ComicCompras AS cc ON co.id_comic = cc.id_comic
LEFT JOIN Compras AS c ON cc.id_compra = c.id_compra
LEFT JOIN Clientes AS cl ON c.id_cliente = cl.id_cliente;

SELECT co.nombre AS Nombre_Comic, i.cantidad_disponible AS Cantidad_Disponible
FROM Comics AS co
JOIN Inventario AS i ON co.id_comic = i.id_comic;

SELECT co.id_comic, co.nombre, co.anio, co.precio,i.id_inventario, i.id_comic, i.cantidad_disponible, i.disponibilidad, cc.id_CC, cc.cantidad, cc.id_compra, cc.id_comic
FROM Comics co
FULL JOIN ComicCompras AS cc ON co.id_comic = cc.id_comic
FULL JOIN Inventario AS i ON co.id_comic = i.id_comic;

INSERT INTO Comics (nombre, anio, precio) VALUES
('Guardians of the Galaxy', 24, 16.99),
('Deadpool', 23, 14.99),                
('Black Widow', 22, 13.50),             
('Shazam', 21, 15.25),                  
('Ant-Man', 20, 12.75);                 
            
SELECT cl.nombre AS CLIENTE, c.id_compra AS COMPRA, co.nombre AS COMIC, cc.cantidad, i.cantidad_disponible AS EN_INVENTARIO
FROM Clientes AS cl
JOIN Compras  AS c ON cl.id_cliente = c.id_cliente
JOIN ComicCompras AS cc ON c.id_compra = cc.id_compra
JOIN Comics AS co ON cc.id_comic = co.id_comic
JOIN Inventario AS i ON co.id_comic = i.id_comic;
