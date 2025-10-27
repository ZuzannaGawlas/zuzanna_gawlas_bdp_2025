SELECT 
    name,
    ST_Y(ST_Centroid(geometry)) AS centroid_y
FROM cw2_schema.buildings
WHERE ST_Y(ST_Centroid(geometry)) > 4.5;