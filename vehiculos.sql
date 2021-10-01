SELECT placa, color, numeroChasis, numeroMotor
FROM tblVehiculo;

SELECT tblVehiculo.placa, tblMarca.nombre, tblVehiculo.serie, tblVehiculo.descripcion, tblVehiculo.valorPago
FROM tblVehiculo INNER JOIN tblMarca ON tblVehiculo.marca = tblMarca.codigo;


