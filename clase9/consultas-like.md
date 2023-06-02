# Consultas de coincidencia ( que contenga )

> Las consultas de coincidencia se utilizan para traer información dónde como filtro vamos a necesitas que contenga cierta cadena de caractéres.

> Traer nombre, precio y descripción de la 
> tabla productos dónde en la descripción contenga la palabra ***Altavoz*** 

    SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdDescripcion LIKE '%altavoz%';

> Utilizamos la palabra reservada ***LIKE***
> Utilizamos el caracter ***%*** como una especie 
> de comodín que podría ocupar uno, varios o ningún caracter.

> Traer nombre, precio, marca y descripción de la
> tabla productos dónde en la descripción contenga la palabra ***Altavoz*** 

    SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion  
    FROM productos AS p, marcas AS m  
    WHERE prdDescripcion LIKE '%altavoz%'  
    AND p.idMarca = m.idMarca;

    SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion  
    FROM productos AS p  
    JOIN marcas AS m  
    ON p.idMarca = m.idMarca  
    WHERE prdDescripcion LIKE '%altavoz%';  

> traer nombre, precio, marca y categoria
> que contenga bluetooth

    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
    FROM productos as p  
    JOIN marcas AS m  
    ON p.idMarca = m.idMarca  
    JOIN categorias AS c  
    ON p.idCategoria = c.idCategoria  
    WHERE prdDescripcion LIKE '%bluetooth%';


> Comodín de 1 (un) caracter
 
    SELECT prdNombre, prdPrecio 
    FROM productos
    WHERE prdNombre LIKE '_40%'
