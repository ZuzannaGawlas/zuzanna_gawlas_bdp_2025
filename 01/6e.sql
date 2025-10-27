SELECT 
    ST_Distance(b.geometry, p.geometry) AS distance
FROM cw2_schema.buildings b
JOIN cw2_schema.poi p ON p.name = 'K'
WHERE b.name = 'BuildingC';
