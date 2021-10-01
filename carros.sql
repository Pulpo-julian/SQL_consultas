-- EL COMANDO MAS BASICO EN SQL ES EL SIGUIENTE 
--  QUE QUIERE DECIR QUE MES SELECCIONA TODO DE UNA TABLA
-- TRAE TODOS LOS CAMPOS Y TODOS LO REGISTROS
SELECT * FROM tblproducto;

-- CON ESTE COMANDO SELECCIONO LOS CAMPOS DE UNA TABLA
SELECT nombre, costo, existencia FROM tblproducto;


-- SE PUEDE CREAR CAMPOS TEMPORALES QUE MUESTRAN OPERACIONES CON OTROS DATOS DE 
-- OTROS CAMPOS
SELECT nombre, (costo * existencia)
FROM tblproducto;

-- A LOS CAMPOS TEMPORALES SE LES PUEDE COLOCAR UN NOMBRE TEMPORAL
-- COMO ALIAS O APODO CON LA PALABRA AS
SELECT nombre, (costo * existencia)
FROM tblproducto;


SELECT nombre, unidadmedida, costo AS 'valor unidad', existencia, (costo * existencia) AS 'valor total'
FROM tblproducto;


SELECT tblproducto.nombre, tblunidadmedida.descripcion, tblproducto.costo AS 'valor unidad', tblproducto.existencia, 
(tblproducto.costo * tblproducto.existencia) AS 'valor total'
FROM tblproducto INNER JOIN tblunidadmedida ON tblproducto.unidadmedida = tblunidadmedida.codigo;

SELECT tblfactura.numero, tblfactura.fechafact, tblformapago.descripcion AS 'forma de pago'
FROM tblfactura INNER JOIN tblformapago ON tblfactura.formapago = tblformapago.codigo;
