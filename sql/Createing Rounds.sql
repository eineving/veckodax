/*CREATING ROUNDS */


/*Creating Round*/
INSERT INTO Round VALUES('2015-05-19 15:30:00', 1.3, '950501002', '930311006',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');
INSERT INTO Round VALUES('2015-05-19 15:30:00', -4.3,'930311006', '950501002',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');
/*Setting scores*/
INSERT INTO Score VALUES(1, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(2, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 2);
INSERT INTO Score VALUES(3, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(4, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(5, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 3);
INSERT INTO Score VALUES(6, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(7, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 3);
INSERT INTO Score VALUES(8, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(9, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 3);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 6);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 3);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 5);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '950501002', 4);

INSERT INTO Score VALUES(1, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 4);
INSERT INTO Score VALUES(2, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 4);
INSERT INTO Score VALUES(3, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 4);
INSERT INTO Score VALUES(4, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 4);
INSERT INTO Score VALUES(5, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 7);
INSERT INTO Score VALUES(6, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 6);
INSERT INTO Score VALUES(7, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 4);
INSERT INTO Score VALUES(8, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 4);
INSERT INTO Score VALUES(9, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 3);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 5);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 3);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 5);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 4);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 4);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 3);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 4);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 6);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-19 15:30:00', '930311006', 5);




/*Creating Round*/
INSERT INTO Round VALUES('2015-05-22 11:20:00', 1.3, '950501002', '930311006',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');
INSERT INTO Round VALUES('2015-05-22 11:20:00', -4.3,'930311006', '950501002',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');

INSERT INTO Score VALUES(1 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(2 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(3 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(4 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(5 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(6 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 3);
INSERT INTO Score VALUES(7 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(8 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 3);
INSERT INTO Score VALUES(9 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 3);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 3);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 3);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 2);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 5);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '950501002', 4);

INSERT INTO Score VALUES(1, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 5);
INSERT INTO Score VALUES(2, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 3);
INSERT INTO Score VALUES(3, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 5);
INSERT INTO Score VALUES(4, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 5);
INSERT INTO Score VALUES(5, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 4);
INSERT INTO Score VALUES(6, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 6);
INSERT INTO Score VALUES(7, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 4);
INSERT INTO Score VALUES(8, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 4);
INSERT INTO Score VALUES(9, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 3);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 5);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 2);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 5);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 4);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 5);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 3);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 5);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 5);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-22 11:20:00', '930311006', 4);



/*Creating Round*/
INSERT INTO Round VALUES('2015-05-23 11:20:00', -4.2, '940910020', '921208026',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');
INSERT INTO Round VALUES('2015-05-23 11:20:00', -4.0,'921208026', '940910020',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');

INSERT INTO Score VALUES(1, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 3);
INSERT INTO Score VALUES(2, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 4);
INSERT INTO Score VALUES(3, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 4);
INSERT INTO Score VALUES(4, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 4);
INSERT INTO Score VALUES(5, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 4);
INSERT INTO Score VALUES(6, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 5);
INSERT INTO Score VALUES(7, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 3);
INSERT INTO Score VALUES(8, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 5);
INSERT INTO Score VALUES(9, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 4);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 6);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 3);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 5);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 5);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 4);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 3);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 4);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 4);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '940910020', 5);

INSERT INTO Score VALUES(1, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 5);
INSERT INTO Score VALUES(2, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 3);
INSERT INTO Score VALUES(3, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 4);
INSERT INTO Score VALUES(4, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 4);
INSERT INTO Score VALUES(5, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 4);
INSERT INTO Score VALUES(6, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 7);
INSERT INTO Score VALUES(7, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 6);
INSERT INTO Score VALUES(8, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 7);
INSERT INTO Score VALUES(9, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 3);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 5);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 5);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 5);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 4);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 3);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 4);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 4);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 5);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 11:20:00', '921208026', 5);


/*Creating Round*/
INSERT INTO Round VALUES('2015-05-23 09:20:00', 1.9, '950501002', '670514011',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');
INSERT INTO Round VALUES('2015-05-23 09:20:00', -4.3,'930311006', '640412010',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Vit');
INSERT INTO Round VALUES('2015-05-23 09:20:00', -11.2, '640412010', '930311006',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Gul');
INSERT INTO Round VALUES('2015-05-23 09:20:00', -13.3,'670514011', '950501002',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'), 'Röd');

INSERT INTO Score VALUES(1 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 5);
INSERT INTO Score VALUES(2 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 3);
INSERT INTO Score VALUES(3 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 4);
INSERT INTO Score VALUES(4 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 4);
INSERT INTO Score VALUES(5 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 4);
INSERT INTO Score VALUES(6 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 5);
INSERT INTO Score VALUES(7 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 3);
INSERT INTO Score VALUES(8 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 4);
INSERT INTO Score VALUES(9 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 3);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 4);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 4);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 5);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 4);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 4);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 3);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 4);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 5);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '950501002', 5);

INSERT INTO Score VALUES(1 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 6);
INSERT INTO Score VALUES(2 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 3);
INSERT INTO Score VALUES(3 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 4);
INSERT INTO Score VALUES(4 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 7);
INSERT INTO Score VALUES(5 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 4);
INSERT INTO Score VALUES(6 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 6);
INSERT INTO Score VALUES(7 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 4);
INSERT INTO Score VALUES(8 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 6);
INSERT INTO Score VALUES(9 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 3);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 5);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 3);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 6);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 4);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 4);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 3);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 6);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 4);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '930311006', 3);

INSERT INTO Score VALUES(1 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 5);
INSERT INTO Score VALUES(2 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 3);
INSERT INTO Score VALUES(3 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 4);
INSERT INTO Score VALUES(4 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 6);
INSERT INTO Score VALUES(5 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 6);
INSERT INTO Score VALUES(6 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 5);
INSERT INTO Score VALUES(7 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 4);
INSERT INTO Score VALUES(8 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 4);
INSERT INTO Score VALUES(9 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 4);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 6);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 4);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 6);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 5);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 5);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 4);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 6);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 6);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '670514011', 6);

INSERT INTO Score VALUES(1 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 4);
INSERT INTO Score VALUES(2 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 5);
INSERT INTO Score VALUES(3 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 4);
INSERT INTO Score VALUES(4 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 4);
INSERT INTO Score VALUES(5 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 4);
INSERT INTO Score VALUES(6 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 6);
INSERT INTO Score VALUES(7 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 5);
INSERT INTO Score VALUES(8 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 4);
INSERT INTO Score VALUES(9 , (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 4);
INSERT INTO Score VALUES(10, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 6);
INSERT INTO Score VALUES(11, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 4);
INSERT INTO Score VALUES(12, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 5);
INSERT INTO Score VALUES(13, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 4);
INSERT INTO Score VALUES(14, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 5);
INSERT INTO Score VALUES(15, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 4);
INSERT INTO Score VALUES(16, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 5);
INSERT INTO Score VALUES(17, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 5);
INSERT INTO Score VALUES(18, (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),'2015-05-23 09:20:00', '640412010', 5);




