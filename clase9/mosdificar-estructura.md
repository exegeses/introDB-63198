# Modificación de la estructura de una tabla

## Cambiar nombre de una columna

    ALTER TABLE nombreTabla  
        CHANGE nombreColViejo nombreColNuevo tipo;  

    ALTER TABLE destinos  
        CHANGE destAsientos totales tinyint unsigned not null;

## Cambiar el tipo de datos de una columna

    ALTER TABLE nombreTabla  
        MODIFY nombreCol tipo;

    ALTER TABLE destinos  
        MODIFY destNombre varchar(60) not null;

## Agregar una columna al final de una tabla  

    ALTER TABLE nombreTabla  
        ADD nombreCol tipo;

    ALTER TABLE billeteras  
        ADD descripcion varchar(500) not null;

## Agregar una columna nueva después de una columna existente

    ALTER TABLE nombreTabla  
        ADD nombreColNueva tipo AFTER nombreColExistente;

    ALTER TABLE billeteras  
        ADD descripcion varchar(500) not null
        AFTER precio;

## Eliminar una columna 

    ALTER TABLE nombreTabla  
        DROP nombreColumna;

    ALTER TABLE billeteras  
        DROP descripcion;