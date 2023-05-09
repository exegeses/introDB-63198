# Consultas en SQL

## Consultas a server

> Para hacer consultas al server utilizamos
> la palabra reservada ***SELECT***

    SELECT CURDATE();  

## Consultas a tablas de una base de datos

> Para generar consultas a tablas de una BBDD
> también utilizamos la sentencia ***"SELECT"***,  
> pero además debemos especificar las/s tablas  
> con la palabra ***FROM***  

    SELECT * FROM destinos;  

> Si queremos trar sólo los datos de algunas (no todas)
> de las columnas

> Sintáxis

    SELECT nCampo3, campo5  
        FROM nTabla;  

> Ejemplo Práctico  
 
    SELECT destNombre, destPrecio
        FROM destinos;

## Orden de registros

> Para ordenas registros utilizamos
> las palabras ***ORDER BY***

> Sintáxis

    SELECT nCampo3, campo5  
        FROM nTabla  
        ORDER BY nCampo4;  

> Ejemplo práctico 

    SELECT destNombre, destPrecio  
    FROM destinos  
    ORDER BY destPrecio;  

    SELECT destNombre, destPrecio  
    FROM destinos  
    ORDER BY idRegion, destPrecio;  