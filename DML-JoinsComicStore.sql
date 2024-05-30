SELECT c.id_compra, cl.nombre AS CLIENTE, c.fecha_compra, c.total
FROM Compras as c
JOIN Clientes as cl ON c.id_cliente = cl.id_cliente;

SELECT c.id_compra, cl.nombre AS CLIENTE, c.fecha_compra, c.total
FROM Compras as c
LEFT JOIN Clientes as cl ON c.id_cliente = cl.id_cliente;

SELECT c.id_compra, cl.nombre AS CLIENTE, c.fecha_compra, c.total
FROM Compras as c
RIGHT JOIN Clientes as cl ON c.id_cliente = cl.id_cliente;

SELECT *
FROM Clientes AS cl
FULL JOIN Compras AS c
ON c.id_cliente = cl.id_cliente;
