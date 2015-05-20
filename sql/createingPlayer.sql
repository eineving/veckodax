Creating a player

/*Creating players*/
INSERT INTO Player VALUES ('950501002', 'Adam', 'Eineving', 'adam@eineving.se', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Player VALUES ('930311006', 'Daniel', 'Eineving', 'daniel@eineving.se', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));

/*Creating Round*/
INSERT INTO Round VALUES('2015-05-19 15:30:00', 1.3, '950501002', '930311006',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');
INSERT INTO Round VALUES('2015-05-19 15:30:00', 4.3,'930311006', '950501002',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');

INSERT INTO Score VALUES(1, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(2, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 2);
INSERT INTO Score VALUES(3, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(4, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(5, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 3);
INSERT INTO Score VALUES(6, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(7, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 3);
INSERT INTO Score VALUES(8, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(9, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 3);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 6);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 3);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 5);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);