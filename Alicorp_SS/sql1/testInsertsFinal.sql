INSERT INTO Proveedor (NombreProveedor, Telefono, CorreoElectronico, Direccion, RucProveedor, Estado) VALUES
('Proveedor 1', '111111111', 'proveedor1@example.com', 'Direccion 1', 'RUC001', 1),
('Proveedor 2', '222222222', 'proveedor2@example.com', 'Direccion 2', 'RUC002', 1),
('Proveedor 3', '333333333', 'proveedor3@example.com', 'Direccion 3', 'RUC003', 1),
('Proveedor 4', '444444444', 'proveedor4@example.com', 'Direccion 4', 'RUC004', 0),
('Proveedor 5', '555555555', 'proveedor5@example.com', 'Direccion 5', 'RUC005', 1);
INSERT INTO FaseDisenos (ProveedorMaterialID, TallasDisponibles, CostoFabricacion, TiempoProduccion, EstadoFabricacion, Aprobado) VALUES
(1, 'S, M, L', 100.00, 10, 'En progreso', 1),
(2, 'M, L, XL', 200.00, 20, 'Completo', 1),
(3, 'S, L', 150.00, 15, 'Pendiente', 0),
(4, 'XS, S, M', 250.00, 25, 'En progreso', 1),
(5, 'M, L', 300.00, 30, 'Completo', 1);
INSERT INTO ProveedoresMaterial (ProveedorID, FaseDisenoID, Material, Color, CostoUnitario) VALUES
(1, 1, 'Algodon', 'Rojo', 10.00),
(2, 2, 'Poliester', 'Azul', 20.00),
(3, 3, 'Lana', 'Verde', 15.00),
(4, 4, 'Seda', 'Negro', 25.00),
(5, 5, 'Nylon', 'Blanco', 30.00);
INSERT INTO Fabricacion (FaseDisenoID, FechaFabricacion, FechaEmbalaje, NombreFabricacion, DetallesFabricacion) VALUES
(1, '2024-01-01', '2024-01-10', 'Fabricacion 1', 'Detalles 1'),
(2, '2024-02-01', '2024-02-10', 'Fabricacion 2', 'Detalles 2'),
(3, '2024-03-01', '2024-03-10', 'Fabricacion 3', 'Detalles 3'),
(4, '2024-04-01', '2024-04-10', 'Fabricacion 4', 'Detalles 4'),
(5, '2024-05-01', '2024-05-10', 'Fabricacion 5', 'Detalles 5');
INSERT INTO ProveedoresImportadores (NombreProveedor, Telefono, CorreoElectronico, Direccion, RucProveedor) VALUES
('Proveedor Importador 1', '111111111', 'importador1@example.com', 'Direccion 1', 'RUC101'),
('Proveedor Importador 2', '222222222', 'importador2@example.com', 'Direccion 2', 'RUC102'),
('Proveedor Importador 3', '333333333', 'importador3@example.com', 'Direccion 3', 'RUC103'),
('Proveedor Importador 4', '444444444', 'importador4@example.com', 'Direccion 4', 'RUC104'),
('Proveedor Importador 5', '555555555', 'importador5@example.com', 'Direccion 5', 'RUC105');
INSERT INTO Producto (ProveedorImportadorID, FabricacionID, NombreProducto, Stock, Categoria, Marca, Precio) VALUES
(1, NULL, 'Producto 1', 100, 'Categoria 1', 'Marca 1', 10.00),
(2, NULL, 'Producto 2', 200, 'Categoria 2', 'Marca 2', 20.00),
(3, NULL, 'Producto 3', 150, 'Categoria 3', 'Marca 3', 30.00),
(NULL, 4, 'Producto 4', 250, 'Categoria 4', 'Marca 4', 40.00),
(NULL, 5, 'Producto 5', 300, 'Categoria 5', 'Marca 5', 50.00);
INSERT INTO Cliente (Nombre, Apellido, Genero, FechaNacimiento, CorreoElectronico, Telefono, Direccion) VALUES
('Juan', 'Perez', 'Masculino', '1980-01-01', 'juan.perez@example.com', '123456789', 'Direccion 1'),
('Maria', 'Lopez', 'Femenino', '1990-02-02', 'maria.lopez@example.com', '987654321', 'Direccion 2'),
('Carlos', 'Gomez', 'Masculino', '1985-03-03', 'carlos.gomez@example.com', '456789123', 'Direccion 3'),
('Laura', 'Diaz', 'Femenino', '1992-04-04', 'laura.diaz@example.com', '321654987', 'Direccion 4'),
('Ana', 'Martinez', 'Femenino', '1988-05-05', 'ana.martinez@example.com', '789123456', 'Direccion 5');
INSERT INTO Departamento (NombreDepartamento, CodigoPostal) VALUES
('Lima', '15001'),
('Arequipa', '04001'),
('Cusco', '08001'),
('Trujillo', '13001'),
('Piura', '20001');
INSERT INTO Promocion (NombrePromocion, Stock, Descuento, FechaInicio, FechaFin) VALUES
('Promocion Verano', 100, 10.00, '2024-01-01', '2024-01-31'),
('Promocion Invierno', 200, 15.00, '2024-02-01', '2024-02-28'),
('Promocion Primavera', 150, 20.00, '2024-03-01', '2024-03-31'),
('Promocion Otoño', 250, 25.00, '2024-04-01', '2024-04-30'),
('Promocion Navideña', 300, 30.00, '2024-05-01', '2024-05-31');
INSERT INTO Tienda (PromocionID, DepartamentoID, Nombre, Direccion, Ruc, Telefono) VALUES
(1, 1, 'Tienda Lima', 'Direccion Lima', 'RUC001', '123456789'),
(2, 2, 'Tienda Arequipa', 'Direccion Arequipa', 'RUC002', '987654321'),
(3, 3, 'Tienda Cusco', 'Direccion Cusco', 'RUC003', '456789123'),
(4, 4, 'Tienda Trujillo', 'Direccion Trujillo', 'RUC004', '321654987'),
(5, 5, 'Tienda Piura', 'Direccion Piura', 'RUC005', '789123456');
INSERT INTO Empleado (Nombre, Apellido, Telefono, Cargo, FechaContratacion, FechaFinalizacion, CorreoElectronico) VALUES
('Luis', 'Ramirez', '123456789', 'Gerente', '2022-01-01', NULL, 'luis.ramirez@example.com'),
('Sofia', 'Mendoza', '987654321', 'Vendedora', '2022-02-01', NULL, 'sofia.mendoza@example.com'),
('Pedro', 'Sanchez', '456789123', 'Cajero', '2022-03-01', NULL, 'pedro.sanchez@example.com'),
('Elena', 'Gonzalez', '321654987', 'Supervisor', '2022-04-01', NULL, 'elena.gonzalez@example.com'),
('Ricardo', 'Torres', '789123456', 'Almacenista', '2022-05-01', NULL, 'ricardo.torres@example.com');
INSERT INTO Venta (ClienteID, EmpleadoID, TiendaID, FechaVenta, TotalVenta) VALUES
(1, 1, 1, '2024-01-01', 100.00),
(2, 2, 2, '2024-02-01', 200.00),
(3, 3, 3, '2024-03-01', 300.00),
(4, 4, 4, '2024-04-01', 400.00),
(5, 5, 5, '2024-05-01', 500.00);
INSERT INTO DetalleVenta (VentaID, ProductoID, Cantidad, PrecioUnitario, Total) VALUES
(1, 1, 1, 10.00, 10.00),
(2, 2, 2, 20.00, 40.00),
(3, 3, 3, 30.00, 90.00),
(4, 4, 4, 40.00, 160.00),
(5, 5, 5, 50.00, 250.00);
