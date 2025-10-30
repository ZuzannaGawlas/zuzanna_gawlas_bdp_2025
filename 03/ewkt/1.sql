CREATE EXTENSION IF NOT EXISTS postgis;
DROP SCHEMA IF EXISTS cw3 CASCADE;
--1.
CREATE SCHEMA cw3;

SET search_path TO cw3, public;

CREATE TABLE cw3.obiekty (
    id SERIAL PRIMARY KEY,
    nazwa VARCHAR(50),
    geometria GEOMETRY
);

-- a):
INSERT INTO cw3.obiekty (nazwa, geometria) VALUES
('obiekt1', ST_CurveToLine(
    ST_GeomFromText(
        'COMPOUNDCURVE(
            (0 1, 1 1),
            CIRCULARSTRING(1 1, 2 0, 3 1),
            CIRCULARSTRING(3 1, 4 2, 5 1),
            (5 1, 6 1)
        )', 0
    ),
    1
));

-- b)
INSERT INTO cw3.obiekty (nazwa, geometria) VALUES
('obiekt2', ST_CurveToLine(
    ST_GeomFromText(
        'CURVEPOLYGON(
            COMPOUNDCURVE(
                (10 6, 14 6),
                CIRCULARSTRING(14 6, 16 4, 14 2),
                CIRCULARSTRING(14 2, 12 0, 10 2),
                (10 2, 10 6)
            ),
            CIRCULARSTRING(11 2, 12 3, 13 2, 12 1, 11 2)
        )',
        0
    ),
    1
));

-- c)
INSERT INTO cw3.obiekty (nazwa, geometria) VALUES
('obiekt3', ST_GeomFromText('POLYGON((7 15, 10 17, 12 13, 7 15))', 0));

-- d)
INSERT INTO cw3.obiekty (nazwa, geometria) VALUES
('obiekt4', ST_GeomFromText('LINESTRING(20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5)', 0));

-- e)
INSERT INTO cw3.obiekty (nazwa, geometria) VALUES
('obiekt5', ST_GeomFromText('MULTIPOINTZ((30 30 59), (38 32 234))', 0));

-- f)
INSERT INTO cw3.obiekty (nazwa, geometria) VALUES
('obiekt6', ST_GeomFromText('GEOMETRYCOLLECTION(LINESTRING(1 1, 3 2), POINT(4 2))', 0));
