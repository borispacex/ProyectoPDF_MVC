CREATE DATABASE DBPRUEBAS2;

USE DBPRUEBAS2;

CREATE TABLE Venta(
	idVenta int primary key identity(1,1),
	numeroVenta varchar(10),
	documentoCliente varchar(10),
	nombreCliente varchar (50),
	subTotal decimal(10,2),
	impuestoTotal decimal(10,2),
	total decimal (10,2)
);
CREATE TABLE DetalleVenta(
	idDetalleVenta int primary key identity(1,1),
	idVenta int references Venta(idVenta),
	nombreProducto varchar(100),
	cantidad int,
	precio decimal(10,2),
	total decimal(10,2)
);

INSERT INTO Venta(numeroVenta,documentoCliente,nombreCliente,subTotal,impuestoTotal,total) VALUES
('000001','5435','thalia',677.97,122.03,800),
('000002','8989','juan',3728.81,671.19,4400),
('000003','898901','oscar',805.08,144.92,950),
('000004','898910','jhon',677.97,122.03,800),
('000005','9090','marisol',1355.93,244.07,1600),
('000006','77671','marisol',2457.63,442.37,2900),
('000007','7888','kumiko',169.49,30.51,200),
('000008','887866','amelia',1186.44,213.56,1400),
('000009','757578','tokio',889.83,160.17,1050),
('000010','1112223','sheyla',169.49,30.51,200),
('000011','87865','jose',1779.66,320.34,2100),
('000012','3435345','matias',1864.41,335.59,2200);

INSERT INTO DetalleVenta(idVenta, nombreProducto,cantidad,precio,total) VALUES
(1,'teclado seasen gamer',1,800,800),
(2,'laptop lenovo idea pad',2,2200,4400),
(3,'auricular redragon rgb',1,950,950),
(4,'teclado seven gamer',1,800,800),
(5,'teclado seven gamer',2,800,1600),
(6,'ventilador coder gamer',2,200,400),
(7,'laptop samsung book',1,2500,2500),
(8,'ventilador cooder master',1,200,200),
(9,'monitor toro gamer',1,1400,1400),
(10,'monitor tenga',1,1050,1050),
(11,'mini ventiladora',1,2100,2100),
(12,'laptop asus zembook',1,2200,2200);


SELECT * FROM Venta;
SELECT * FROM DetalleVenta;