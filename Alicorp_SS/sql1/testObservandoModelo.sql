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

--I. FABRICACION DISEÑO Y PRODUCTO
SELECT
prod.NombreProducto,
prod.Marca,
fase.CostoFabricacion,
fase.Material,
fase.TallasDisponibles,
fase.TiempoProduccion,
fab.FechaFabricacion,
fab.FechaEmbalaje,
fab.NombreFabricacion
FROM
Producto prod
INNER JOIN FaseDiseno fase 
ON fase.ProductoID = prod.ProductoID
INNER JOIN Fabricacion fab
on fase.FabricacionID = fab.FabricacionID

/*
SELECT DISTINCT 
prod.NombreProducto AS Producto ,
prov.NombreProveedor AS Proveedor 
FROM producto prod
INNER JOIN Proveedor prov
ON (prod.ProveedorID = prov.ProveedorID)
*/

--II. CLIENTE
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

--III. PROMOCION TIENDA Y DEPARTAMENTO
SELECT DISTINCT
prom.NombrePromocion AS Promocion,
prom.Stock AS StockInicial,
prom.FechaInicio AS FechaInicial,
prom.FechaFin AS FechaFinal,
prom.Descuento AS Descuento,
tie.Nombre AS Tienda,
dep.NombreDepartamento AS Departamento,
dep.CodigoPostal AS CodigoPostal
FROM Tienda AS tie
INNER JOIN Promocion AS prom
ON tie.promocionID = prom.PromocionID
INNER JOIN Departamento AS dep
ON tie.DepartamentoID = dep.DepartamentoID


SELECT * 
FROM Empleado

--IV. EMPLEADO CARGO
SELECT DISTINCT
emp.Nombre AS Nombre,
emp.Apellido AS Apellido,
emp.Cargo AS Cargo,
FechaContratacion AS FechaContratacionInicial,
FechaFinalizacion AS FechaContratacionFinal
FROM Empleado AS emp

