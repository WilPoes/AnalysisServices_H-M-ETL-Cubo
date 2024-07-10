
--I. FABRICACION ->PRODUCTO,MARCA,COSTEO,MATERIAL,TALLAS,TIEMPOS,FECHAS
SELECT DISTINCT 
dep.NombreDepartamento,
ven.FechaVenta,
ven.TotalVenta,
prod.NombreProducto,
prod.Marca,
prod.Categoria
FROM
Departamento AS dep
INNER JOIN Tienda AS tien
ON (dep.DepartamentoID = tien.DepartamentoID)
INNER JOIN Venta AS ven
ON (ven.TiendaID = tien.TiendaID)
INNER JOIN DetalleVenta AS det
ON (ven.VentaID = det.VentaID)
INNER JOIN 
Producto AS prod
ON (prod.ProductoID = det.ProductoID)
INNER JOIN 
Fabricacion AS fab
ON (fab.FabricacionID = prod.FabricacionID)
INNER JOIN 
FaseDisenos AS disen
ON (disen.FaseDisenoID = fab.FaseDisenoID)
INNER JOIN 
ProveedoresMaterial AS provmat
ON (provmat.ProveedorMaterialID = disen.ProveedorMaterialID)

--II. IMPORTADOS ->FECHA VENTA, TPOTAL VENTA, MARCA, CATEGORIA, NOMBREPROVEEDOR,RUC
SELECT DISTINCT 
dep.NombreDepartamento,
ven.FechaVenta,
ven.TotalVenta,
prod.NombreProducto,
prod.Marca,
prod.Categoria,
imp.NombreProveedor,
imp.RucProveedor
FROM
Departamento AS dep
INNER JOIN Tienda AS tien
ON (dep.DepartamentoID = tien.DepartamentoID)
INNER JOIN Venta AS ven
ON (ven.TiendaID = tien.TiendaID)
INNER JOIN DetalleVenta AS det
ON (ven.VentaID = det.VentaID)
INNER JOIN 
Producto AS prod
ON (prod.ProductoID = det.ProductoID)
INNER JOIN 
ProveedoresImportadores AS imp
ON (imp.ProveedorImportadorID = prod.ProveedorImportadorID)

--III. CLIENTE
SELECT DISTINCT 
clie.Genero, 
clie.FechaNacimiento,
clie.Nombre,
clie.Apellido
FROM Cliente clie

--DEPARTAMENTO Y TIENDA
SELECT 
depa.NombreDepartamento AS Departamento,
depa.CodigoPostal AS CodigoPostal,
tie.Nombre AS Tienda
FROM Tienda AS tie
INNER JOIN Departamento AS depa
ON tie.DepartamentoID = depa.DepartamentoID

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