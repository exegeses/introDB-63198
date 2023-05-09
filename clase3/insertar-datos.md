# Insertar datos en una tabla

> Para insertar datos en una tabla utilizamos el comando *** INSERT *** 
> ***Nota:*** vamos a ver dos variantes de la sintáxis de este comando

## Sintáxis completa ( mencionamos los nombres de las columnas )  

    INSERT INTO nombreTabla  
        ( nCol2, nCol4, nCol5 )  
      VALUES  
        ( val2, val4, val5 )

> Ejemplo práctico: 
 
    INSERT INTO billeteras  
        ( nombre, precio, stock )  
      VALUES  
        ( 'Ledger Nano S', 16000, 30 );

## Sintáxis simplificada ( NO mencionamos los nombres de las columnas )  

    INSERT INTO nombreTabla
      VALUES  
        ( val1, val2, val3, val4 );

    INSERT INTO billeteras
      VALUES  
        ( DEFAULT, 'Trezor One', 19500, 30 );

## Insertar mútiples registros

    INSERT INTO billeteras
      VALUES  
    (DEFAULT, 'Trezor T', 78000, 20),
    (DEFAULT, 'Ledger nano X', 56000, 20);