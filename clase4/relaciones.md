# Consultas a varias tablas (relaciones)

> Cuando queremos traer información de dos o más tablas debemos relacionar dichas tablas.

## Table relation
> La técnica ***"table relation"*** se logra igualando la columna en común a ambas tablas (la columna de relación).

> Ejemplo práctico: 

    SELECT destNombre, destPrecio, regNombre
        FROM destinos, regiones
    WHERE destinos.idRegion = regiones.idRegion;
