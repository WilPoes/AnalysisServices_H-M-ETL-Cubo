INSERT INTO Proveedor (NombreProveedor, Telefono, CorreoElectronico, Direccion, RucProveedor)
VALUES
('Proveedor1', '987654321', 'proveedor1@example.com', 'Calle Proveedor 1', '12345678901'),
('Proveedor2', '987654322', 'proveedor2@example.com', 'Calle Proveedor 2', '12345678902'),
('Proveedor3', '987654323', 'proveedor3@example.com', 'Calle Proveedor 3', '12345678903'),
('Proveedor4', '987654324', 'proveedor4@example.com', 'Calle Proveedor 4', '12345678904'),
('Proveedor5', '987654325', 'proveedor5@example.com', 'Calle Proveedor 5', '12345678905'),
('Proveedor6', '987654326', 'proveedor6@example.com', 'Calle Proveedor 6', '12345678906'),
('Proveedor7', '987654327', 'proveedor7@example.com', 'Calle Proveedor 7', '12345678907'),
('Proveedor8', '987654328', 'proveedor8@example.com', 'Calle Proveedor 8', '12345678908'),
('Proveedor9', '987654329', 'proveedor9@example.com', 'Calle Proveedor 9', '12345678909'),
('Proveedor10', '987654330', 'proveedor10@example.com', 'Calle Proveedor 10', '12345678910');

INSERT INTO Fabricacion (FechaFabricacion, FechaEmbalaje, NombreFabricacion, DetallesFabricacion)
VALUES
    ('2024-06-01', '2024-06-10', 'Fabricación 1', 'Detalles de fabricación 1'),
    ('2024-06-02', '2024-06-11', 'Fabricación 2', 'Detalles de fabricación 2'),
    ('2024-06-03', '2024-06-12', 'Fabricación 3', 'Detalles de fabricación 3'),
    ('2024-06-04', '2024-06-13', 'Fabricación 4', 'Detalles de fabricación 4'),
    ('2024-06-05', '2024-06-14', 'Fabricación 5', 'Detalles de fabricación 5');

INSERT INTO Producto (NombreProducto, Categoria, Marca, Precio)
VALUES
    ('Camisa Casual', 'Ropa', 'Marca A', 29.99),
    ('Zapatos Deportivos', 'Calzado', 'Marca B', 49.99),
    ('Pantalón Jeans', 'Ropa', 'Marca C', 39.99),
    ('Blusa Formal', 'Ropa', 'Marca D', 34.99),
    ('Bufanda de Lana', 'Accesorios', 'Marca E', 19.99),
	('Camisa Casual', 'Ropa', 'Marca F', 29.99),
    ('Zapatos Vestir', 'Calzado', 'Marca B', 49.99),
    ('Pantalón Cordoroe', 'Ropa', 'Marca G', 39.99),
    ('Blusa', 'Ropa', 'Marca H', 34.99),
    ('Bufanda de Polar', 'Accesorios', 'Marca I', 19.99);

INSERT INTO FaseDiseno (FabricacionID, ProveedorID, ProductoID, Material, TallasDisponibles, Color, CostoFabricacion, TiempoProduccion, EstadoFabricacion, NumeroReferencia, Aprobado)
VALUES
    (1, 1, 1, 'Algodón', 'S, M, L, XL', 'Azul', 25.00, 5, 'En Proceso', 'FD001', 0),
    (2, 2, 2, 'Cuero Sintético', 'M, L, XL', 'Negro', 40.00, 7, 'Aprobado', 'FD002', 1),
    (3, 2, 3, 'Denim', 'S, M, L', 'Azul Claro', 30.00, 6, 'En Revisión', 'FD003', 0),
    (4, 4, 4, 'Seda', 'S, M', 'Blanco', 35.00, 8, 'Aprobado', 'FD004', 1),
    (5, 5, 5, 'Lana', 'M, L', 'Gris', 20.00, 4, 'En Proceso', 'FD005', 0);

INSERT INTO Cliente (Nombre, Apellido, Genero, FechaNacimiento, CorreoElectronico, Telefono, Direccion)
VALUES
('Cliente1', 'Apellido1', 'M', '1990-05-15', 'cliente1@example.com', '987654321', 'Calle Cliente 1'),
('Cliente2', 'Apellido2', 'F', '1985-08-20', 'cliente2@example.com', '987654322', 'Calle Cliente 2'),
('Cliente3', 'Apellido3', 'M', '1995-03-10', 'cliente3@example.com', '987654323', 'Calle Cliente 3'),
('Cliente4', 'Apellido4', 'F', '1982-11-25', 'cliente4@example.com', '987654324', 'Calle Cliente 4'),
('Cliente5', 'Apellido5', 'M', '1988-07-01', 'cliente5@example.com', '987654325', 'Calle Cliente 5'),
('Cliente6', 'Apellido6', 'F', '1993-09-18', 'cliente6@example.com', '987654326', 'Calle Cliente 6'),
('Cliente7', 'Apellido7', 'M', '1984-12-12', 'cliente7@example.com', '987654327', 'Calle Cliente 7'),
('Cliente8', 'Apellido8', 'F', '1991-04-05', 'cliente8@example.com', '987654328', 'Calle Cliente 8'),
('Cliente9', 'Apellido9', 'M', '1987-06-30', 'cliente9@example.com', '987654329', 'Calle Cliente 9'),
('Cliente10', 'Apellido10', 'F', '1994-02-28', 'cliente10@example.com', '987654330', 'Calle Cliente 10');

INSERT INTO Departamento (NombreDepartamento, CodigoPostal)
VALUES
('Departamento1', 'CP12345'),
('Departamento2', 'CP23456'),
('Departamento3', 'CP34567'),
('Departamento4', 'CP45678'),
('Departamento5', 'CP56789'),
('Departamento6', 'CP67890'),
('Departamento7', 'CP78901'),
('Departamento8', 'CP89012'),
('Departamento9', 'CP90123'),
('Departamento10', 'CP01234');

INSERT INTO Promocion (NombrePromocion, Stock, Descuento, FechaInicio, FechaFin)
VALUES
('Promocion1', 100, 0.10, '2024-07-01', '2024-07-15'),
('Promocion2', 50, 0.15, '2024-07-05', '2024-07-20'),
('Promocion3', 200, 0.05, '2024-07-10', '2024-07-25'),
('Promocion4', 80, 0.12, '2024-07-15', '2024-07-30'),
('Promocion5', 150, 0.08, '2024-07-20', '2024-08-05'),
('Promocion6', 120, 0.18, '2024-07-25', '2024-08-10'),
('Promocion7', 90, 0.07, '2024-07-30', '2024-08-15'),
('Promocion8', 60, 0.14, '2024-08-01', '2024-08-20'),
('Promocion9', 170, 0.09, '2024-08-05', '2024-08-25'),
('Promocion10', 110, 0.20, '2024-08-10', '2024-08-30');

INSERT INTO Tienda (PromocionID, DepartamentoID, Nombre, Direccion, Ruc, Telefono)
VALUES
(1, 1, 'Tienda1', 'Calle Tienda 1', '12345678901', '987654321'),
(2, 2, 'Tienda2', 'Calle Tienda 2', '12345678902', '987654322'),
(3, 3, 'Tienda3', 'Calle Tienda 3', '12345678903', '987654323'),
(4, 4, 'Tienda4', 'Calle Tienda 4', '12345678904', '987654324'),
(5, 5, 'Tienda5', 'Calle Tienda 5', '12345678905', '987654325'),
(6, 6, 'Tienda6', 'Calle Tienda 6', '12345678906', '987654326'),
(7, 7, 'Tienda7', 'Calle Tienda 7', '12345678907', '987654327'),
(8, 8, 'Tienda8', 'Calle Tienda 8', '12345678908', '987654328'),
(9, 9, 'Tienda9', 'Calle Tienda 9', '12345678909', '987654329'),
(10, 10, 'Tienda10', 'Calle Tienda 10', '12345678910', '987654330');


INSERT INTO Empleado (Nombre, Apellido, Telefono, Cargo, FechaContratacion, FechaFinalizacion, CorreoElectronico)
VALUES
('Empleado1', 'Apellido1', '987654321', 'Vendedor', '2020-01-15', NULL, 'empleado1@example.com'),
('Empleado2', 'Apellido2', '987654322', 'Cajero', '2019-05-20', NULL, 'empleado2@example.com'),
('Empleado3', 'Apellido3', '987654323', 'Gerente', '2018-03-10', NULL, 'empleado3@example.com'),
('Empleado4', 'Apellido4', '987654324', 'Supervisor', '2017-11-25', NULL, 'empleado4@example.com'),
('Empleado5', 'Apellido5', '987654325', 'Asistente', '2016-07-01', NULL, 'empleado5@example.com'),
('Empleado6', 'Apellido6', '987654326', 'Vendedor', '2015-09-18', NULL, 'empleado6@example.com'),
('Empleado7', 'Apellido7', '987654327', 'Cajero', '2014-12-12', NULL, 'empleado7@example.com'),
('Empleado8', 'Apellido8', '987654328', 'Gerente', '2013-04-05', NULL, 'empleado8@example.com'),
('Empleado9', 'Apellido9', '987654329', 'Supervisor', '2012-06-30', NULL, 'empleado9@example.com'),
('Empleado10', 'Apellido10', '987654330', 'Asistente', '2011-02-28', NULL, 'empleado10@example.com');

INSERT INTO Venta (ProductoID, ClienteID, EmpleadoID, TiendaID, FechaVenta, Cantidad, PrecioUnitario, TotalVenta)
VALUES
(1, 1, 1, 1, '2024-07-01', 2, 100.50, 201.00),
(2, 2, 2, 2, '2024-07-02', 1, 49.99, 49.99),
(3, 3, 3, 3, '2024-07-03', 3, 79.99, 239.97),
(4, 4, 4, 4, '2024-07-04', 1, 299.00, 299.00),
(5, 5, 5, 5, '2024-07-05', 2, 29.99, 59.98),
(6, 6, 6, 6, '2024-07-06', 1, 199.99, 199.99),
(7, 7, 7, 7, '2024-07-07', 1, 89.95, 89.95),
(8, 8, 8, 8, '2024-07-08', 2, 149.50, 299.00),
(9, 9, 9, 9, '2024-07-09', 1, 399.00, 399.00),
(10, 10, 10, 10, '2024-07-10', 3, 19.99, 59.97);

select * from Venta