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