/*Tablas*/
create database TpBDD

use TpBDD

create table Provincias(
Id int primary key identity (1,1) not null,
provincia varchar,
)


create table Ciudades(
Id int primary key identity (1,1) not null,
Ciudad varchar,
IdProvincia int,
FOREIGN KEY (IdProvincia) REFERENCES Provincias(Id)
)

create table Direcciones(
Id int primary key identity (1,1) not null,
Calle varchar,
Numero varchar,
IdCiudad int,
FOREIGN KEY (IdCiudad) REFERENCES Ciudades(Id)
)

create table Clientes(
Id int primary key identity (1,1) not null,
Nombre varchar,
Apellido varchar,
Dni varchar,
RazonSocial varchar,
Cuit varchar,
IdDireccion int,
Telefono varchar,
Email varchar,
FOREIGN KEY (IdDireccion) REFERENCES Direcciones(Id)
)

create table TipoRemolque (
Id int primary key identity (1,1) not null,
Remolque varchar,
)

create table Camiones (
Patente varchar primary key not null,
Marca varchar,
Modelo varchar,
año int,
IdRemolque int,
FOREIGN KEY (IdRemolque) REFERENCES TipoRemolque(Id)
)

create table Conductores (
Nombre varchar,
Apellido varchar,
Dni int primary key identity (1,1) not null,
IdDireccion int,
TelFijo varchar,
TelCelular varchar,
Edad int,
email varchar,
IdRegistro varchar,
IdCamion varchar,
FOREIGN KEY (IdCamion) REFERENCES Camiones(Patente),
FOREIGN KEY (IdDireccion) REFERENCES Direcciones(Id)
)

create table Viajes (
Id int primary key identity (1,1) not null,
IdDireccionOrigen int,
KmsRecorridos int,
IdCliente int,
IdCamion varchar,
IdConductor int,
FechaSalidaEst date,
FechaSalidaReal date,
FechaLlegadaEst date,
FechaLlegadaReal date,
FOREIGN KEY (IdCliente) REFERENCES Clientes(Id),
FOREIGN KEY (IdConductor) REFERENCES Conductores(Dni),
FOREIGN KEY (IdDireccionOrigen) REFERENCES Direcciones(Id)
);



/*INSERT*/
INSERT INTO Provincias (Provincia) VALUES ('Buenos Aires'), ('Córdoba'), ('Santa Fe'), ('Mendoza'), ('Tucumán'), ('Salta');


INSERT INTO Ciudades (Ciudad, IdProvincia) VALUES
('La Plata', 1), ('Córdoba Capital', 2), ('Rosario', 3), ('Mendoza Capital', 4), ('San Miguel de Tucumán', 5), ('Salta Capital', 6);


INSERT INTO Direcciones (Calle, Numero, IdCiudad) VALUES
('Av. 9 de Julio', '123', 1), ('Av. Colón', '456', 2), ('Av. Pellegrini', '789', 3),
('Av. San Martín', '234', 4), ('Av. Aconquija', '567', 5), ('Av. Belgrano', '890', 6);


INSERT INTO Clientes (Nombre, Apellido, Dni, RazonSocial, Cuit, IdDireccion, Telefono, Email) VALUES
('Juan', 'Pérez', '12345678', NULL, NULL, 1, '1234567890', 'juan@gmail.com'),
('María', 'Gómez', '23456789', 'Empresa A', '12345678901', 2, '2345678901', 'maria@empresaA.com'),
('Carlos', 'López', '34567890', NULL, NULL, 3, '3456789012', 'carlos@gmail.com'),
('Laura', 'Fernández', '45678901', 'Empresa B', '23456789012', 4, '4567890123', 'laura@empresaB.com'),
('Pedro', 'Martínez', '56789012', NULL, NULL, 5, '5678901234', 'pedro@gmail.com'),
('Ana', 'Rodríguez', '67890123', 'Empresa C', '34567890123', 6, '6789012345', 'ana@empresaC.com');


INSERT INTO TipoRemolque (Remolque) VALUES ('Remolque A'), ('Remolque B'), ('Remolque C'), ('Remolque D'), ('Remolque E'), ('Remolque F');


INSERT INTO Camiones (Patente, Marca, Modelo, año, IdRemolque) VALUES
('ABC123', 'Scania', 'R450', 2020, 1),
('DEF456', 'Volvo', 'FH460', 2019, 2),
('GHI789', 'Mercedes-Benz', 'Actros', 2021, 3),
('JKL012', 'Iveco', 'Stralis', 2018, 4),
('MNO345', 'MAN', 'TGX', 2022, 5),
('PQR678', 'Renault', 'T480', 2017, 6);


INSERT INTO Conductores (Nombre, Apellido, Dni, TelFijo, TelCelular, Edad, email, IdRegistro, IdCamion, IdDireccion) VALUES
('Eduardo', 'García', '30.234.634', '011-1234567', '011-987654321', 35, 'eduardo@gmail.com', 'ABCDE123', 'ABC123', 1),
('Silvia', 'López', '38.234.634', '011-2345678', '011-876543210', 28, 'silvia@gmail.com', 'FGHIJ456', 'DEF456', 2),
('Martín', 'Rodríguez', '31.234.114', '011-3456789', '011-765432109', 40, 'martin@gmail.com', 'KLMNO789', 'GHI789', 3),
('Valeria', 'Fernández', '34.231.634', '011-4567890', '011-654321098', 32, 'valeria@gmail.com', 'PQRST012', 'JKL012', 4),
('Diego', 'Martínez', '29.144.324', '011-5678901', '011-543210987', 45, 'diego@gmail.com', 'UVWXY345', 'MNO345', 5),
('Lucía', 'Gómez', '36.235.224', '011-6789012', '011-432109876', 29, 'lucia@gmail.com', 'ZABCDE678', 'PQR678', 6);


INSERT INTO Viajes (IdDireccionOrigen, KmsRecorridos, IdCliente, IdCamion, IdConductor, FechaSalidaEst, FechaLlegadaEst) VALUES
(1, 500, 1, 'ABC123', '30.234.634', '2023-11-10', '2023-11-12'),
(2, 700, 2, 'DEF456', '38.234.634', '2023-11-15', '2023-11-18'),
(3, 300, 3, 'GHI789', '31.234.114', '2023-11-20', '2023-11-22'),
(4, 600, 4, 'JKL012', '34.231.634', '2023-11-25', '2023-11-28'),
(5, 800, 5, 'MNO345', '29.144.324', '2023-11-30', '2023-12-03'),
(6, 400, 6, 'PQR678', '36.235.224', '2023-12-05', '2023-12-07'),
(1, 550, 1, 'ABC123', '30.234.634', '2023-12-10', '2023-12-12'),
(2, 720, 2, 'DEF456', '38.234.634', '2023-12-15', '2023-12-18'),
(3, 320, 3, 'GHI789', '31.234.114', '2023-12-20', '2023-12-22'),
(4, 610, 4, 'JKL012', '34.231.634', '2023-12-25', '2023-12-28');

/*consultas*/
/*Cuantos viajes se realizaron hacia la provincia de santafe*/
SELECT COUNT(*) AS TotalViajes
FROM Viajes v
JOIN Direcciones d ON v.IdDireccionOrigen = d.Id
JOIN Ciudades c ON d.IdCiudad = c.Id
JOIN Provincias p ON c.IdProvincia = p.Id
WHERE p.Provincia = 'Santa Fe';
/*Mostrar datos relevantes sobre los viajes realizados desde la provincia de cordoba durante le primer semestre 2023*/

/*Listar 3 choferes con mayor cantidad de kilometros en 2023 mostrando: nombres, cantidad de kms recorridos en orden descentente*/
SELECT TOP 3 cond.Nombre AS NombreConductor, SUM(v.KmsRecorridos) AS TotalKilometros
FROM Viajes v
JOIN Conductores cond ON v.IdConductor = cond.Dni
WHERE YEAR(v.FechaSalidaEst) = 2023
GROUP BY cond.Nombre
ORDER BY TotalKilometros DESC;
/*Obtener lista de clientes que solilcitaron viajes/envios en 2023 con nombre de choferes y kms recorridos en cada viaje. en orden descendete de km recorridos*/
SELECT v.IdConductor, cond.nombre AS NombreConductor, v.Kmsrecorridos, v.FechaSalidaEst AS ViajesRecientes
FROM Viajes v
JOIN Conductores cond ON v.IdConductor = cond.dni
WHERE YEAR(v.FechaSalidaEst) = 2023
ORDER BY v.KmsRecorridos DESC;