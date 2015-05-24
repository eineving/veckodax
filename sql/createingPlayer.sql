/*Creating players*/
INSERT INTO Player VALUES ('950501002', 'Adam', 'Eineving', 'adam@eineving.se', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Player VALUES ('930311006', 'Daniel', 'Eineving', 'daniel@eineving.se', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Player VALUES ('670514011', 'Lena', 'Eineving', 'lena.eineving@volvo.com', 'female',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Player VALUES ('640412010', 'Thomas', 'Eineving', 'thomas.eineving@wipcore.se', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Player VALUES ('940910020', 'Gustav', 'Berneblad', 'gustav@berneblad.se', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Player VALUES ('921208026', 'Jonathan', 'Prim', '', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));

