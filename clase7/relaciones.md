# Consultas a varias tablas (relaciones)

> Cuando queremos traer información de dos o más tablas debemos relacionar dichas tablas.

## Table relation
> La técnica ***"table relation"*** se logra 
> mencionando en el FROM las tablas necesarias y luego
> igualando la columna en común a ambas tablas (la columna de relación). 

> Sintáxis: 

    SELECT colTablaPrincipal, colTablaPrincipal, colTablaSecundaria
    FROM tablaPrincipal, tablaSecundaria
    WHERE tablaPrincipal.idForeignKey = tablaSecundaria.idPrimaryKey;

> Dónde idForeignKey es la columna en común
> Dónde idPrimaryKey es la columna en común


> Ejemplo práctico: 

    SELECT destNombre, destPrecio, regNombre  
    FROM destinos, regiones  
    WHERE destinos.idRegion = regiones.idRegion;  

    SELECT prdNombre, prdPrecio, mkNombre  
    FROM productos, marcas  
    WHERE productos.idMarca = marcas.idMarca;  

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos, marcas, categorias  
    WHERE productos.idMarca = marcas.idMarca  
    AND productos.idCategoria = categorias.idCategoria;  

# Tecnica JOIN

> Sintáxis:

    SELECT colTablaPrincipal, colTablaPrincipal, colTablaSecundaria
    FROM tablaPrincipal 
     JOIN tablaSecundaria
      ON tablaPrincipal.idForeignKey = tablaSecundaria.idPrimaryKey;

> Dónde idForeignKey es la columna en común
> Dónde idPrimaryKey es la columna en común

> Ejemplo práctico: 

    SELECT destNombre, destPrecio, regNombre  
    FROM destinos
     JOIN regiones  
    ON destinos.idRegion = regiones.idRegion;  

    SELECT prdNombre, prdPrecio, mkNombre  
    FROM productos  
     JOIN marcas
      ON productos.idMarca = marcas.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  

