UPDATE cw3.obiekty
SET geometria = ST_GeomFromText(
    'POLYGON((20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5, 20 20))',
    0
)
WHERE nazwa = 'obiekt4';

-- sprawdzam typ po konwersji
SELECT nazwa, ST_GeometryType(geometria)
FROM cw3.obiekty
WHERE nazwa = 'obiekt4';