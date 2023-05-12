# Consultas con filtreado de registros

> Filtrar registros significa traer algunos registros que cumplan alguna condición  

> Para especificar la condición de filtrado utilizamos 
> la palabra *** WHERE *** 

> Ejemplo práctico:
> Traer nombre y precio de destinos
> con un precio que no supere los 8000 

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio < 8000;  

> Traer nombre y precio de destinos
> con un precio que no supere los 8000 
> ni tampoco sea menor a 6600  

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio <= 8000  
        AND destPrecio >= 6600;  

> Ahora el mismo resultado usando la palabra 
> *** BETWEEN *** 

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio  
            BETWEEN 6600 AND 8000;  

> Traer nombre y precio de la región 5

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion = 5;  

> Traer nombre y precio de los destinos 
> de la región 5 y además
> de los destinos de la región 3  

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion = 5  
        OR idRegion = 3;  

> Mismo resultado usando la función IN() 

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion IN ( 3, 5 );  
    
