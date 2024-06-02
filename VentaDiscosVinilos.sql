create database VentaDiscosVinilos
use VentaDiscosVinilos
 Creación de la tabla Empleado
/*
CREATE TABLE Empleado (
    ID_Empleado CHAR(4) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(40),
    TelefonoEmpleado VARCHAR(10),
    Usuario VARCHAR(12),
    Contraseña VARCHAR(9)
)

 Creación de la tabla Clientes

CREATE TABLE Clientes (
    ID_Cliente CHAR(4) NOT NULL PRIMARY KEY,
    Nombre VARCHAR(40),
    TelefonoCliente VARCHAR(10)
)


 Creación de la tabla Productos
CREATE TABLE Productos (
    ID_Producto CHAR(4) NOT NULL PRIMARY KEY,
    No_Serie VARCHAR(7),
	Canciones VARCHAR(40),
    Categoria VARCHAR(12),
    Precio DECIMAL(10, 2),
    ExistenciaDiscos INT,
	ExistenciaVinilos INT

)

 Creación de la tabla Proveedores
CREATE TABLE Proveedores (
    ID_Proveedor CHAR(4) NOT NULL PRIMARY KEY,
    NombreProveedor VARCHAR(100),
    NoFolio VARCHAR(50)
)

 Creación de la tabla Ventas
CREATE TABLE Ventas (
    ID_Venta CHAR(4) NOT NULL PRIMARY KEY,
    ID_Cliente CHAR(4),
    ID_Empleado CHAR(4),
    ID_Producto CHAR(4),
    FechaVenta DATE,
    Cantidad INT,
	Total DECIMAL(10, 2),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (ID_Empleado) REFERENCES Empleado(ID_Empleado),
    FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto)
)

 Creación de la tabla Compras
CREATE TABLE Compras (
    Id_Compra CHAR(4) NOT NULL PRIMARY KEY,
    Id_Proveedor CHAR(4),
    Id_Producto CHAR(4),
    Cantidad INT,
    PrecioCompra DECIMAL(10, 2),
    Fecha DATE,
    Subtotal DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    FOREIGN KEY (Id_Proveedor) REFERENCES Proveedores(ID_Proveedor),
    FOREIGN KEY (Id_Producto) REFERENCES Productos(ID_Producto)
);

 Insertar datos en la tabla Empleado
*/
/*
insert into Empleado values ('E001', 'Carlos Roel', '3415551234', 'Carlos', '123'),
       ('E002', 'María López', '3415555678', 'mar', 'abc123'),
       ('E003', 'Pedro García', '3415559876', 'pgar', 'az19');

 Insertar datos en la tabla Clientes
insert into Clientes values ('C001', 'Ana Gómez', '3415554321'),
       ('C002', 'Luis Torres', '3415558765'),
       ('C003', 'Sara Ramírez', '3415552345');
	   insert into Clientes values ('C004', 'Carlos Cisneros', '3412079554')





 Insertar datos en la tabla Ventas
insert into Ventas values ('V001', 'C001', 'E001', 'P001', '2023-05-01', 6, 100.00),
       ('V002', 'C002', 'E002', 'P002', '2023-05-02', 9, 50.00),
       ('V003', 'C003', 'E003', 'P003', '2023-05-03', 7, 150.00);

 Insertar datos en la tabla Proveedores
insert into Proveedores values ('PR01', 'Proveedor A', 'F001'),
       ('PR02', 'Proveedor B', 'F002'),
       ('PR03', 'Proveedor C', 'F003');

insert into Compras values ('CM01', 'PR01', 'P001', 5, 120.00, '2023-05-10', 600.00, 600.00),
       ('CM02', 'PR02', 'P002', 10, 100.00, '2023-05-12', 1000.00, 1000.00),
       ('CM03', 'PR03', 'P003', 7, 150.00, '2023-05-15', 1050.00, 1050.00);
	   */

/*
INSERT INTO Productos (ID_Producto, No_Serie, Canciones, Categoria, Precio, ExistenciaDiscos, ExistenciaVinilos)
VALUES ('P001', 'SER001', 'Bohemian Rhapsody - Queen', 'Pop', 10.99, 20, 10),
       ('P002', 'SER002', 'Dancing Queen - ABBA', 'Pop', 8.99, 15, 5),
       ('P003', 'SER003', 'Take On Me - A-ha', 'Pop', 6.99, 30, 20),
       ('P004', 'SER004', 'Thriller - Michael Jackson', 'Pop', 12.99, 25, 15),
       ('P005', 'SER005', 'Stayin'' Alive - Bee Gees', 'Pop', 9.99, 18, 12),
       ('P006', 'SER006', 'Yesterday - The Beatles', 'Pop', 7.99, 22, 8);

INSERT INTO Productos (ID_Producto, No_Serie, Canciones, Categoria, Precio, ExistenciaDiscos, ExistenciaVinilos)
VALUES ('P007', 'SER007', 'Stairway to Heaven - Led Zeppelin', 'Rock', 11.99, 20, 10),
       ('P008', 'SER008', 'Johnny B. Goode - Chuck Berry', 'Rock', 9.99, 15, 5);
insert into Productos values ('P009', 'SER009', 'Jailhouse Rock - Elvis Presley', 'Rock', 7.99, 30, 20),
       ('P010', 'SER010', 'Sweet Child O'' Mine - Guns N'' Roses', 'Rock', 13.99, 25, 15),
       ('P011', 'SER011', 'Walk This Way - Run-D.M.C', 'Rock', 10.99, 18, 12);


INSERT INTO Productos (ID_Producto, No_Serie, Canciones, Categoria, Precio, ExistenciaDiscos, ExistenciaVinilos)
VALUES ('P012', 'SER012', 'Baila morena - Héctor & Tito', 'Regueton', 9.99, 20, 10),
       ('P013', 'SER013', 'Yandel 150 - Feid y Yandel', 'Regueton', 7.99, 15, 5),
       ('P014', 'SER014', 'Pa'''' que retocen - Tego Calderón', 'Regueton', 5.99, 30, 20),
       ('P015', 'SER015', 'Safaera - Bad Bunny, Jowell', 'Regueton', 11.99, 25, 15),
       ('P016', 'SER016', 'Gasolina - Daddy Yankee', 'Regueton', 8.99, 18, 12);

INSERT INTO Productos (ID_Producto, No_Serie, Canciones, Categoria, Precio, ExistenciaDiscos, ExistenciaVinilos)
VALUES ('P017', 'SER017', 'Gracias A Ti - Banda MS', 'Banda', 10.99, 20, 10),
       ('P018', 'SER018', 'Ella Baila Sola - Eslabon Armado', 'Banda', 8.99, 15, 5),
       ('P019', 'SER019', 'El Reemplazo - Banda El Recodo', 'Banda', 6.99, 30, 20),
       ('P020', 'SER020', 'Se Manda Sola - La Adictiva', 'Banda', 12.99, 25, 15),
       ('P021', 'SER021', 'Fuera De Servicio - El Fantasma', 'Banda', 9.99, 18, 12); */

EXEC sp_rename 'Ventas.CantidadDiscos', 'Cantidad', 'COLUMN';


ALTER TABLE Ventas DROP COLUMN CantidadVinilos;
UPDATE Ventas SET FechaVenta = '2023-05-01' WHERE ID_Venta = 'V001';
UPDATE Ventas SET FechaVenta = '2023-05-02' WHERE ID_Venta = 'V002';
UPDATE Ventas SET FechaVenta = '2023-05-03' WHERE ID_Venta = 'V003';


UPDATE Compras SET Total = PrecioCompra;

/*
UPDATE Compras SET PrecioCompra = 95.92  WHERE Id_Compra = 'CM04';
UPDATE Compras SET PrecioCompra = 55.96  WHERE Id_Compra = 'CM05';
UPDATE Compras SET PrecioCompra = 53.94  WHERE Id_Compra = 'CM06';
*/

Si es que queremos eliminar PrecioCompra de la tabla Compras
ALTER TABLE Compras DROP COLUMN PrecioCompra;

ALTER TABLE Proveedores ADD Telefono VARCHAR(10);

UPDATE Proveedores SET Telefono = '5546361271' WHERE ID_Proveedor = 'PR01';
UPDATE Proveedores SET Telefono = '3416327292' WHERE ID_Proveedor = 'PR02';
UPDATE Proveedores SET Telefono = '5567963237' WHERE ID_Proveedor = 'PR03';

DELETE FROM Compras WHERE Id_Compra BETWEEN 'CM07' AND 'CM08';
DELETE FROM Ventas WHERE Id_Venta = 'V007';

CREATE PROCEDURE autenEmpleado
    @Usuario VARCHAR(12),
    @Contraseña VARCHAR(9)
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Realizar la consulta para verificar las credenciales
    SELECT COUNT(*)
    FROM Empleado
    WHERE Usuario = @Usuario AND Contraseña = @Contraseña;
END;

CREATE PROCEDURE ObtenEmpleadoId
    @Usuario VARCHAR(12)
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Realizar la consulta para obtener el ID del empleado
    SELECT ID_Empleado
    FROM Empleado
    WHERE Usuario = @Usuario;
END;


-- Crear el procedimiento almacenado para obtener todos los productos
CREATE PROCEDURE Productos
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Realizar la consulta para obtener todos los productos
CREATE PROCEDURE AllProductos
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Realizar la consulta para obtener todos los productos
    SELECT * FROM Productos;
END;

CREATE PROCEDURE AllClientes
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Realizar la consulta para obtener todos los productos
    SELECT * FROM Clientes;
END;

CREATE PROCEDURE AllVentas
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Realizar la consulta para obtener todas las ventas
    SELECT ID_Venta, ID_Cliente, ID_Empleado, ID_Producto, FechaVenta, Cantidad, Total FROM Ventas;
END;

CREATE PROCEDURE AllCompras
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Realizar la consulta para obtener todas las compras
    SELECT Id_Compra, Id_Proveedor, Id_Producto, Cantidad, Fecha, Total FROM Compras;
END;

CREATE PROCEDURE ProductosRock
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Realizar la consulta para obtener los productos de la categoría "Rock"
    SELECT ID_Producto, No_Serie, Canciones, Categoria, Precio, ExistenciaDiscos, ExistenciaVinilos
    FROM Productos
    WHERE Categoria = 'Rock';
END;

CREATE PROCEDURE ProductosRegueton
AS
BEGIN
    SET NOCOUNT ON;

    -- Realizar la consulta para seleccionar los productos de la categoría "Regueton"
    SELECT ID_Producto, No_Serie, Canciones, Categoria, Precio, ExistenciaDiscos, ExistenciaVinilos
    FROM Productos
    WHERE Categoria = 'Regueton';
END;

CREATE PROCEDURE ProductosBanda
AS
BEGIN
    SET NOCOUNT ON;

    -- Realizar la consulta para seleccionar los productos de la categoría "Banda"
    SELECT ID_Producto, No_Serie, Canciones, Categoria, Precio, ExistenciaDiscos, ExistenciaVinilos
    FROM Productos
    WHERE Categoria = 'Banda';
END;

CREATE PROCEDURE ProductosPop
AS
BEGIN
    SET NOCOUNT ON;

    -- Realizar la consulta para seleccionar los productos de la categoría "Pop"
    SELECT ID_Producto, No_Serie, Canciones, Categoria, Precio, ExistenciaDiscos, ExistenciaVinilos
    FROM Productos
    WHERE Categoria = 'Pop';
END;

CREATE PROCEDURE InsertarCliente
    @ID_Cliente CHAR(4),
    @Nombre VARCHAR(40),
    @TelefonoCliente VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si el ID del cliente ya existe en la base de datos
    IF EXISTS (SELECT 1 FROM Clientes WHERE ID_Cliente = @ID_Cliente)
    BEGIN
        RAISERROR('Ya existe un cliente con el mismo ID.', 16, 1);
        RETURN;
    END;

    -- Verificar si el teléfono del cliente ya existe en la base de datos
    IF EXISTS (SELECT 1 FROM Clientes WHERE TelefonoCliente = @TelefonoCliente)
    BEGIN
        RAISERROR('Ya existe un cliente con el mismo Telefono. Favor de agregar otro número de teléfono.', 16, 1);
        RETURN;
    END;

    -- Insertar el nuevo cliente en la tabla
    INSERT INTO Clientes (ID_Cliente, Nombre, TelefonoCliente)
    VALUES (@ID_Cliente, @Nombre, @TelefonoCliente);

    PRINT 'Cliente agregado correctamente.';
END;

CREATE PROCEDURE BuscarCliente
    @ID_Cliente CHAR(4) = NULL,
    @Nombre VARCHAR(40) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @ID_Cliente IS NULL AND @Nombre IS NULL
    BEGIN
        -- Ambos campos están vacíos, no se realiza ninguna consulta
        PRINT 'Ingrese un ID o un nombre para buscar.';
        RETURN;
    END;

    -- Consultar los clientes según el ID y/o el nombre proporcionados
    SELECT ID_Cliente, Nombre, TelefonoCliente
    FROM Clientes
    WHERE (@ID_Cliente IS NULL OR ID_Cliente = @ID_Cliente)
      AND (@Nombre IS NULL OR Nombre = @Nombre);
END;

CREATE PROCEDURE ActualizarCliente
    @ID_Cliente CHAR(4),
    @Nombre VARCHAR(40) = NULL,
    @TelefonoCliente VARCHAR(10) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si se proporcionó el ID del cliente
    IF @ID_Cliente IS NULL
    BEGIN
        PRINT 'Por favor, ingrese el ID del cliente.';
        RETURN;
    END;

    -- Verificar si al menos dos campos están vacíos
    IF (@Nombre IS NULL AND @TelefonoCliente IS NULL) OR
       (@Nombre IS NOT NULL AND @TelefonoCliente IS NOT NULL)
    BEGIN
        PRINT 'Debe completar al menos 2 campos.';
        RETURN;
    END;

    -- Verificar si el nombre del cliente ya existe en la base de datos
    IF @TelefonoCliente IS NOT NULL
    BEGIN
        IF EXISTS (SELECT 1 FROM Clientes WHERE TelefonoCliente = @TelefonoCliente AND ID_Cliente <> @ID_Cliente)
        BEGIN
            RAISERROR('Ya existe un cliente con el mismo Telefono. Favor de agregar otro número de teléfono.', 16, 1);
            RETURN;
        END;
    END;

    -- Actualizar los datos del cliente
    UPDATE Clientes
    SET Nombre = ISNULL(@Nombre, Nombre),
        TelefonoCliente = ISNULL(@TelefonoCliente, TelefonoCliente)
    WHERE ID_Cliente = @ID_Cliente;

    PRINT 'Cliente actualizado correctamente.';
END;

CREATE PROCEDURE EliminarCliente
    @ID_Cliente CHAR(4)
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si se proporcionó el ID del cliente
    IF @ID_Cliente IS NULL
    BEGIN
        PRINT 'Por favor, ingrese el ID del cliente.';
        RETURN;
    END;

    -- Eliminar el cliente de la tabla
    DELETE FROM Clientes WHERE ID_Cliente = @ID_Cliente;

    -- Verificar si se eliminó el cliente correctamente
    IF @@ROWCOUNT > 0
    BEGIN
        PRINT 'Cliente eliminado exitosamente.';
    END
    ELSE
    BEGIN
        PRINT 'No se encontró el cliente o ocurrió un error en la eliminación.';
    END;
END;

CREATE PROCEDURE ObtenerIDClientes
AS
BEGIN
    SET NOCOUNT ON;

    -- Consulta para obtener los ID_Cliente
    SELECT ID_Cliente FROM Clientes;
END;

CREATE PROCEDURE ObtenerIDProductos
AS
BEGIN
    SET NOCOUNT ON;

    -- Consulta para obtener los ID_Productos
    SELECT ID_Producto FROM Productos;
END;

CREATE PROCEDURE ObtenerIDProveedores
AS
BEGIN
    SET NOCOUNT ON;

    -- Consulta para obtener los ID_Proveedor
    SELECT ID_Proveedor FROM Proveedores;
END;

CREATE PROCEDURE ObtenerUltimoIDVenta
AS
BEGIN
    SET NOCOUNT ON;

    -- Consulta para obtener el último ID_Venta
    SELECT MAX(ID_Venta) AS MaxIDVenta FROM Ventas;
END;

CREATE PROCEDURE ObtenerUltimoIDCompra
AS
BEGIN
    SET NOCOUNT ON;

    -- Consulta para obtener el último ID_Compra
    SELECT MAX(Id_Compra) AS MaxIDCompra FROM Compras;
END;

CREATE PROCEDURE BuscarVentas
    @ID_Venta VARCHAR(10) = NULL,
    @FechaVenta DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @ID_Venta IS NOT NULL AND @FechaVenta IS NOT NULL
    BEGIN
        -- Consulta por ID de venta y fecha de venta
        SELECT * FROM Ventas WHERE ID_Venta = @ID_Venta AND FechaVenta = @FechaVenta;
    END
    ELSE IF @ID_Venta IS NOT NULL
    BEGIN
        -- Consulta solo por ID de venta
        SELECT * FROM Ventas WHERE ID_Venta = @ID_Venta;
    END
    ELSE IF @FechaVenta IS NOT NULL
    BEGIN
        -- Consulta solo por fecha de venta
        SELECT * FROM Ventas WHERE FechaVenta = @FechaVenta;
    END
    ELSE
    BEGIN
        -- No se proporcionaron criterios de búsqueda, devolver un mensaje de error
        SELECT 'Error: No se proporcionaron criterios de búsqueda.' AS ErrorMessage;
    END
END;

CREATE PROCEDURE ActualizarVenta
    @ID_Venta VARCHAR(10),
    @FechaVenta DATE = NULL,
    @Cantidad INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @PrecioProducto FLOAT;
    DECLARE @Total FLOAT;

    -- Obtener el precio del producto asociado a la venta
    SELECT @PrecioProducto = Precio
    FROM Productos P
    INNER JOIN Ventas V ON P.ID_Producto = V.ID_Producto
    WHERE V.ID_Venta = @ID_Venta;

    -- Calcular el total
    IF @Cantidad IS NOT NULL
    BEGIN
        SET @Total = @PrecioProducto * @Cantidad;
    END

    -- Actualizar la venta en la base de datos
    UPDATE Ventas
    SET FechaVenta = ISNULL(@FechaVenta, FechaVenta),
        Cantidad = ISNULL(@Cantidad, Cantidad),
        Total = ISNULL(@Total, Total)
    WHERE ID_Venta = @ID_Venta;
END;

CREATE PROCEDURE ConsultarCompraPorID
    @ID_Compra VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ID_Compra, ID_Proveedor, ID_Producto, Cantidad, Fecha, Total
    FROM Compras
    WHERE ID_Compra = @ID_Compra;
END;

CREATE PROCEDURE ActualizarTablaClientes
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ID_Cliente, Nombre, TelefonoCliente
    FROM Clientes;
END;

CREATE PROCEDURE MostrarProductos
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ID_Producto, No_Serie, Canciones, Categoria, Precio, ExistenciaDiscos, ExistenciaVinilos
    FROM Productos;
END;


select * from Empleado
select * from Clientes
select * from Productos
select * from Proveedores
select * from Ventas
select * from Compras
