# Crear tablas en una base de datos

## Creación de tablas

> Para crear una tabla utilizamos el comando  
> "CREATE TABLE"

> Sintáxis: 

    CREATE TABLE nombre  
    (  
        nombreCampo tipo características,
        nombreCampo2 tipo características,
        nombreCampo3 tipo características,
        nombreCampo4 tipo características
    );  

> Ejemplo práctico:  

    CREATE TABLE billeteras  
    (
        id tinyint unsigned auto_increment primary key  not null,  
        nombre varchar(30) not null,  
        precio float(8,2) unsigned not null,  
        stock tinyint unsigned not null  
    );