# Modificaciones de datos.

> Para modificar datos de uno o varios registros de una tabla 
> utilizamos el comando *** UPDATE***  

> Sintáxis: 

    UPDATE nombreTabla   
      SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2  
      WHERE campoID = valorID;

> Ejemplo práctico:  

    UPDATE destinos  
        SET  
            destPrecio = 8750  
        WHERE idDestino = 4;   

