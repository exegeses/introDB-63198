# Creación de tabla destinos
CREATE TABLE destinos
(
    idDestino smallint unsigned primary key auto_increment not null,
    destNombre varchar(50) unique not null,
    idRegion tinyint unsigned not null,
        FOREIGN KEY (idRegion)
            REFERENCES regiones (idRegion),
    destPrecio float(8,2) unsigned not null,
    destAsientos tinyint unsigned not null,
    destDisponibles tinyint unsigned not null,
    destActivo boolean default 1
);
