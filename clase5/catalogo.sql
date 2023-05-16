## Creación de tablas proyecto catálogo

-- Creación de tabla marcas
CREATE TABLE marcas
(
    idMarca tinyint unsigned primary key auto_increment not null,
    mkNombre varchar(45) unique not null
);

-- Creación de tabla categorias
CREATE TABLE categorias
(
    idCategoria tinyint unsigned auto_increment not null,
    catNombre varchar(45) unique not null,
    primary key (idCategoria)
);

-- Creación de tabla productos
CREATE TABLE productos
(
    idProducto mediumint unsigned auto_increment not null,
    prdNombre varchar(45) unique not null,
    prdPrecio float(8,2) unsigned not null,
    idMarca tinyint unsigned not null,
    idCategoria tinyint unsigned not null,
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean not null,
    primary key ( idProducto ),
    foreign key ( idMarca )
        references marcas ( idMarca ),
    foreign key ( idCategoria )
        references categorias ( idCategoria )
);