SELECT DISTINCT *
FROM Producto

SELECT DISTINCT * 
FROM
Fabricacion

SELECT DISTINCT * 
FROM
FaseDiseno

SELECT
fab.FechaFabricacion,
fab.FechaEmbalaje,
fab.NombreFabricacion
FROM
FaseDiseno fase
INNER JOIN Fabricacion fab
ON fase.FabricacionID = fab.FabricacionID

--I. FABRICACION ->PRODUCTO,MARCA,COSTEO,MATERIAL,TALLAS,TIEMPOS,FECHAS
SELECT *
FROM
Venta AS vEN

--II. IMPORTADOS ->FECHA VENTA, TPOTAL VENTA, MARCA, CATEGORIA, NOMBREPROVEEDOR,RUC
SELECT DISTINCT 
ven.FechaVenta,
ven.TotalVenta,
prod.NombreProducto,
prod.Marca,
prod.Categoria,
imp.NombreProveedor,
imp.RucProveedor
FROM
Venta AS ven
INNER JOIN
DetalleVenta AS det
ON (ven.VentaID = det.VentaID)
INNER JOIN 
Producto AS prod
ON (prod.ProductoID = det.ProductoID)
INNER JOIN 
ProveedoresImportadores AS imp
ON (imp.ProveedorImportadorID = prod.ProveedorImportadorID)


/*
SELECT DISTINCT 
prod.NombreProducto AS Producto ,
prov.NombreProveedor AS Proveedor 
FROM producto prod
INNER JOIN Proveedor prov
ON (prod.ProveedorID = prov.ProveedorID)
*/

--III. CLIENTE
SELECT DISTINCT 
clie.Genero, 
clie.FechaNacimiento,
clie.Nombre,
clie.Apellido
FROM Cliente clie

SELECT DISTINCT *
FROM Cliente clie

SELECT DISTINCT *
FROM Tienda tie

SELECT DISTINCT *
FROM Departamento depa

--DEPARTAMENTO Y TIENDA
SELECT 
depa.NombreDepartamento AS Departamento,
depa.CodigoPostal AS CodigoPostal,
tie.Nombre AS Tienda
FROM Tienda AS tie
INNER JOIN Departamento AS depa
ON tie.DepartamentoID = depa.DepartamentoID

SELECT DISTINCT *
FROM Tienda tie

SELECT DISTINCT *
FROM Promocion

--IV. PROMOCION TIENDA Y DEPARTAMENTO
SELECT DISTINCT
prom.NombrePromocion AS Promocion,
prom.Stock AS StockInicial,
prom.FechaInicio AS FechaInicial,
prom.FechaFin AS FechaFinal,
prom.Descuento AS Descuento,
tie.Nombre AS Tienda,
dep.NombreDepartamento AS Departamento
FROM Tienda AS tie
INNER JOIN Promocion AS prom
ON tie.promocionID = prom.PromocionID
INNER JOIN Departamento AS dep
ON tie.DepartamentoID = dep.DepartamentoID


SELECT * 
FROM Empleado

--V. EMPLEADO CARGO
SELECT DISTINCT
emp.Nombre AS Nombre,
emp.Apellido AS Apellido,
emp.Cargo AS Cargo,
FechaContratacion AS FechaContratacionInicial,
FechaFinalizacion AS FechaContratacionFinal
FROM Empleado AS emp

--VI. TABLA HECHOS
SELECT DISTINCT * 
FROM 
DetalleVenta as det
INNER JOIN
Venta as ven
ON ven.VentaID = det.VentaID