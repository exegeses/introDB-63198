CREATE VIEW lista_precios AS
SELECT destNombre AS Destino,
       destPrecio AS 'Precio Contado',
       destPrecio * 1.05 AS 'Precio Lista',
       regNombre AS Región
FROM destinos AS d
         JOIN regiones AS r
              ON d.idRegion = r.idRegion
ORDER BY d.idRegion, destPrecio;