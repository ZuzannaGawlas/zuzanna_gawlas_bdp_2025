INSERT INTO cw2_schema.buildings (name, geometry) VALUES
('BuildingA', ST_GeomFromText('POLYGON((8 4, 10 5.4, 10 1.5, 8 1.5, 8 4))')),
('BuildingB', ST_GeomFromText('POLYGON((4 7, 6 7, 6 5, 4 5, 4 7))')),
('BuildingC', ST_GeomFromText('POLYGON((3 8, 5 8, 5 6, 3 6, 3 8))')),
('BuildingD', ST_GeomFromText('POLYGON((9 9, 10 9, 10 8, 9 8, 9 9))')),
('BuildingF', ST_GeomFromText('POLYGON((1 2, 2 2, 2 1, 1 1, 1 2))'));

INSERT INTO cw2_schema.roads (name, geometry) VALUES
('RoadX', ST_GeomFromText('LINESTRING(0 4.5, 12 4.5)')),
('RoadY', ST_GeomFromText('LINESTRING(7.5 0, 7.5 10.5)'));

INSERT INTO cw2_schema.poi (name, geometry) VALUES
('H', ST_GeomFromText('POINT(5.5 1.5)')),
('I', ST_GeomFromText('POINT(9.5 6)')),
('J', ST_GeomFromText('POINT(6.5 6)')),
('K', ST_GeomFromText('POINT(6 9.5)')),
('G', ST_GeomFromText('POINT(1 3.5)'));