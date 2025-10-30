SELECT
  ST_Area( ST_Buffer( ST_ShortestLine(o3.geometria, o4.geometria), 5 ) ) AS area_bufor_5
FROM cw3.obiekty o3
JOIN cw3.obiekty o4 ON o3.nazwa = 'obiekt3' AND o4.nazwa = 'obiekt4';
