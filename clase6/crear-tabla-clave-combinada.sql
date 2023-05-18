CREATE TABLE vuelos
(
	idVuelo mediumint unsigned auto_increment primary key not null,
    idPais tinyint unsigned not null,
    idAeropuerto smallint unsigned not null,
    idAerolinea smallint unsigned not null,
    idRutaAerea smallint unsigned not null,
    clave varchar(6) default( concat( idAerolinea, idRutaAerea )) not null
);

INSERT INTO vuelos 
	VALUES ( DEFAULT, 28, 54, 12, 5232, default );
    
SELECT * FROM vuelos;