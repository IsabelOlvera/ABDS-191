CREATE TABLE Clientes (
id_cliente bigint identity(1,1) PRIMARY KEY,
nombre varchar(50),
correo_electronico varchar(50),
pass varchar(255)
);

CREATE TABLE Compras (
id_compra bigint identity(1,1) PRIMARY KEY,
id_cliente bigint,
fecha_compra date,
total float,
foreign key (id_cliente) references Clientes(id_cliente)
);

CREATE TABLE Comics (
id_comic bigint identity(1,1) PRIMARY KEY,
nombre varchar(50),
anio tinyint,
precio float,
);

CREATE TABLE ComicCompras (
id_CC bigint identity(1,1) PRIMARY KEY,
cantidad int,
id_compra bigint,
id_comic bigint,
foreign key (id_compra) references Compras(id_compra),
foreign key (id_comic) references Comics(id_comic)
);

CREATE TABLE Inventario (
id_inventario bigint identity(1,1) PRIMARY KEY,
id_comic bigint,
cantidad_disponible bigint,
disponibilidad binary,
foreign key (id_comic) references Comics(id_comic)
);