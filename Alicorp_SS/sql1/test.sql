--FORMATO--
drop table Venta;
drop table FaseDiseno;

drop table Tienda;
drop table Departamento;
drop table Promocion;
drop table Producto;

drop table Proveedor;
drop table Fabricacion;
drop table Empleado;
drop table Cliente;

CREATE TABLE Proveedor (
    ProveedorID INT IDENTITY(1,1) PRIMARY KEY,
    NombreProveedor VARCHAR(255) NOT NULL,
    Telefono VARCHAR(20),
    CorreoElectronico VARCHAR(255),
    Direccion VARCHAR(255),
    RucProveedor VARCHAR(20)
);

CREATE TABLE Fabricacion (
    FabricacionID INT IDENTITY(1,1) PRIMARY KEY,
	FechaFabricacion DATE NOT NULL,
	FechaEmbalaje DATE NOT NULL,	
    NombreFabricacion VARCHAR(255) NOT NULL,
    DetallesFabricacion VARCHAR(255) -- Puedes añadir más detalles según sea necesario
);

CREATE TABLE Producto (
    ProductoID INT IDENTITY(1,1) PRIMARY KEY,
    NombreProducto VARCHAR(255) NOT NULL,
    Categoria VARCHAR(255) NOT NULL,
    Marca VARCHAR(255),
    Precio DECIMAL(10, 2) NOT NULL
);

CREATE TABLE FaseDiseno (
    FaseDisenoID INT IDENTITY(1,1) PRIMARY KEY,
    FabricacionID INT NOT NULL,
	ProveedorID INT NOT NULL,
	ProductoID INT NOT NULL,
	Material VARCHAR(255), -- Descripción de los materiales utilizados
    TallasDisponibles VARCHAR(100), -- Ejemplo: S, M, L, XL
    Color VARCHAR(50), -- Color principal del producto
	CostoFabricacion DECIMAL(10, 2), -- Costo total de la fabricación
	TiempoProduccion INT, -- Tiempo estimado en días
	EstadoFabricacion VARCHAR(50), -- Estado actual de la fabricación
    NumeroReferencia VARCHAR(50), -- Número de referencia único
    Aprobado BIT NOT NULL,
    FOREIGN KEY (FabricacionID) REFERENCES Fabricacion(FabricacionID),
	FOREIGN KEY (ProductoID) REFERENCES Producto(ProductoID),
	FOREIGN KEY (ProveedorID) REFERENCES Proveedor(ProveedorID)
);

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
    ProductoID INT NOT NULL,
    ClienteID INT NOT NULL,
    EmpleadoID INT,
    TiendaID INT,
    FechaVenta DATE NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10, 2) NOT NULL,
    TotalVenta DECIMAL(10, 2) NOT NULL,	
    FOREIGN KEY (ProductoID) REFERENCES Producto(ProductoID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleado(EmpleadoID),
    FOREIGN KEY (TiendaID) REFERENCES Tienda(TiendaID)
);

