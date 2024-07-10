--FORMATO--
drop table DetalleVenta
drop table Venta;
drop table FaseDiseno;

drop table Tienda;
drop table Departamento;
drop table Promocion;
drop table Producto;

drop table ProveedoresImportadores;

drop table ProveedoresMaterial;
drop table Fabricacion;
drop table Empleado;
drop table Cliente;

CREATE TABLE Proveedor(
	ProveedorID INT IDENTITY(1,1) PRIMARY KEY,
    NombreProveedor VARCHAR(255) NOT NULL,
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(255),
    Direccion VARCHAR(255),
    RucProveedor VARCHAR(20),
	Estado BIT NOT NULL
);

CREATE TABLE FaseDisenos (
    FaseDisenoID INT IDENTITY(1,1) PRIMARY KEY,
    ProveedorMaterialID INT NOT NULL,
    TallasDisponibles VARCHAR(100), -- Ejemplo: S, M, L, XL
	CostoFabricacion DECIMAL(10, 2),
	TiempoProduccion INT, -- Tiempo estimado en días
	EstadoFabricacion VARCHAR(50),
    Aprobado BIT NOT NULL
);

CREATE TABLE ProveedoresMaterial (
    ProveedorMaterialID INT IDENTITY(1,1) PRIMARY KEY,
	ProveedorID INT NOT NULL,
	FaseDisenoID INT NOT NULL,
    Material VARCHAR(255) NOT NULL,
    Color VARCHAR(50),
    CostoUnitario DECIMAL(10, 2)
	FOREIGN KEY (ProveedorID) REFERENCES Proveedor(ProveedorID),
	FOREIGN KEY (FaseDisenoID) REFERENCES FaseDisenos(FaseDisenoID),
);

CREATE TABLE Fabricacion (
    FabricacionID INT IDENTITY(1,1) PRIMARY KEY,
	FaseDisenoID INT NOT NULL,
	FechaFabricacion DATE NOT NULL,
	FechaEmbalaje DATE NOT NULL,	
    NombreFabricacion VARCHAR(255) NOT NULL,
    DetallesFabricacion VARCHAR(255),
	FOREIGN KEY (FaseDisenoID) REFERENCES FaseDisenos(FaseDisenoID)
);

CREATE TABLE ProveedoresImportadores (
    ProveedorImportadorID INT IDENTITY(1,1) PRIMARY KEY,
    NombreProveedor VARCHAR(255) NOT NULL,
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(255),
    Direccion VARCHAR(255),
    RucProveedor VARCHAR(20)
);

CREATE TABLE Producto (
    ProductoID INT IDENTITY(1,1) PRIMARY KEY,
    ProveedorImportadorID INT,
	FabricacionID INT,
	NombreProducto VARCHAR(255) NOT NULL,
	Stock INT,
    Categoria VARCHAR(255) NOT NULL,
    Marca VARCHAR(255),
    Precio DECIMAL(10, 2) NOT NULL,
	FOREIGN KEY (ProveedorImportadorID) REFERENCES ProveedoresImportadores(ProveedorImportadorID),
	FOREIGN KEY (FabricacionID) REFERENCES Fabricacion(FabricacionID),
	CHECK (
        (ProveedorImportadorID IS NOT NULL AND FabricacionID IS NULL) OR 
        (ProveedorImportadorID IS NULL AND FabricacionID IS NOT NULL)
    )
);
--!

CREATE TABLE Cliente (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    Genero VARCHAR(50),
    FechaNacimiento DATE,
    CorreoElectronico VARCHAR(255),
    Telefono VARCHAR(20),
    Direccion VARCHAR(255)
);

CREATE TABLE Departamento (
    DepartamentoID INT IDENTITY(1,1) PRIMARY KEY,
    NombreDepartamento VARCHAR(255) NOT NULL,
    CodigoPostal VARCHAR(10)
);

CREATE TABLE Promocion (
    PromocionID INT IDENTITY(1,1) PRIMARY KEY,
    NombrePromocion VARCHAR(255) NOT NULL,
    Stock INT NOT NULL,
    Descuento DECIMAL(5, 2),
    FechaInicio DATE,
    FechaFin DATE
);

CREATE TABLE Tienda (
    TiendaID INT IDENTITY(1,1) PRIMARY KEY,
	PromocionID INT,
	DepartamentoID INT,
    Nombre VARCHAR(255) NOT NULL,
    Direccion VARCHAR(255) NOT NULL,
    Ruc VARCHAR(20),
    Telefono VARCHAR(20),
	FOREIGN KEY (DepartamentoID) REFERENCES Departamento(DepartamentoID),
	FOREIGN KEY (PromocionID) REFERENCES Promocion(PromocionID)
);

CREATE TABLE Empleado (
    EmpleadoID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    Telefono VARCHAR(20),
    Cargo VARCHAR(255),
    FechaContratacion DATE,
    FechaFinalizacion DATE,
    CorreoElectronico VARCHAR(255)
);

CREATE TABLE Venta (
    VentaID INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID INT NOT NULL,
    EmpleadoID INT,
    TiendaID INT,
    FechaVenta DATE NOT NULL,
    TotalVenta DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleado(EmpleadoID),
    FOREIGN KEY (TiendaID) REFERENCES Tienda(TiendaID)
);

CREATE TABLE DetalleVenta (
    DetalleVentaID INT IDENTITY(1,1) PRIMARY KEY,
    VentaID INT NOT NULL,
    ProductoID INT,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    Total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (VentaID) REFERENCES Venta(VentaID),
    FOREIGN KEY (ProductoID) REFERENCES Producto(ProductoID),
);