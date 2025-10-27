SELECT 
    name,
    ST_Area(geometry) AS area
FROM cw2_schema.buildings
ORDER BY name ASC;