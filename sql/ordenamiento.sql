SELECT * FROM Products
ORDER BY price ASC NULLS LAST;/*NULLS LAST SE USA CON ASC*/
/*Ordena ascendentemente(ASC) por defecto podemos usar DESC, LIMIT O UNION*/
SELECT * FROM Products
ORDER BY ProductName DESC NULLS FIRST;/*NULLS FIRST SE USA CON DESC*/
ORDER BY RAMDON();/*ORDEN RAMDON*/
ORDER BY ProductName, SupplierID DESC;/*LE DAMOS UN DOBLE FILTRO PARA ORDENAR*/
SELECT DISTINCT ProductName FROM Products ORDER BY ProductName ASC

/*
ORDEN ASCENDENTE
NULL
NUMEROS
CARACTERES ESPECIALES
LETRAS
*/

