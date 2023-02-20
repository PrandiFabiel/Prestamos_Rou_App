
CREATE TABLE Cliente (
    IdCliente INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(25),
    Apellido VARCHAR(35),
    Direccion VARCHAR(255),
    Observacion VARCHAR(255),
	Cedula VARCHAR(255),
    TelefonoCasa VARCHAR(30),
    NumeroCelular VARCHAR(30),
    Email VARCHAR(255),
	Fecha DATETIME
);

CREATE TABLE Prestamo (
    IdPrestamo INT PRIMARY KEY IDENTITY(1,1),
    ClienteID INT,
    TipoPrestamo INT,
    FechaInicioPrestamos DATETIME,
    FechaUltimoPago DATETIME,
    Semanas INT,
    TasaInteres decimal,
    MontoPrestado decimal,
    InteresGenerado decimal,
    CapitalPagado decimal,
    InteresPagado decimal,
    RestarMontoPrestado decimal,
    fechaRegistroPrestamo DATETIME
);

CREATE TABLE Cuota (
    IdCuota INT PRIMARY KEY IDENTITY(1,1),
    IdPrestamo INT,
    Numero INT,
    Fecha DATE,
    Capital FLOAT,
    Interes FLOAT,
    CapitalPagado FLOAT,
    InteresPagado FLOAT
);

CREATE TABLE Cobros (
    IdCobro INT PRIMARY KEY IDENTITY(1,1),
    Fecha DATE,
    IdPrestamo INT,
    Concepto VARCHAR(255),
    MontoInteres FLOAT,
    MontoCapital FLOAT,
    Estado INT
);

CREATE TABLE DetalleCobros (
    IdDetalleCobro INT PRIMARY KEY IDENTITY(1,1),
    Idcobro INT,
    Idcuota INT,
    Capital FLOAT,
    Interes FLOAT,
    CapitalPagado FLOAT,
    InteresPagado FLOAT
);


