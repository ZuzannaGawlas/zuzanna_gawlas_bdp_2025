SELECT 
    name,
    ST_Perimeter(geometry) AS perimeter,
    ST_Area(geometry) AS area
FROM cw2_schema.buildings
ORDER BY area DESC
LIMIT 2;