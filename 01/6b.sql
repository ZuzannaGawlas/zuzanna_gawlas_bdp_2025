SELECT 
    name,
    ST_AsText(geometry) AS wkt_geometry,
    ST_Area(geometry) AS area,
    ST_Perimeter(geometry) AS perimeter
FROM cw2_schema.buildings
WHERE name = 'BuildingA';