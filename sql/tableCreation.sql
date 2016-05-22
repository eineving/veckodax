CREATE TABLE veckodax.Sex(
	sex VARCHAR(6) PRIMARY KEY
);

INSERT INTO Sex VALUES('male');
INSERT INTO Sex VALUES('female');

CREATE TABLE veckodax.Club(
	id INT AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL, 
	PRIMARY KEY (id)
);

CREATE TABLE veckodax.Player(
	golfID CHAR(9),
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	mail VARCHAR(100) NOT NULL,
	sex VARCHAR(6),
	clubID INT,
	PRIMARY KEY (golfID),
	FOREIGN KEY (sex) REFERENCES Sex(sex),
	FOREIGN KEY (clubID) REFERENCES Club(id)
);

CREATE TABLE veckodax.Course(
	id INT AUTO_INCREMENT,
	name VARCHAR(50),
	clubID INT,
	PRIMARY KEY(id, clubID),
	FOREIGN KEY (clubID) REFERENCES Club(id)
);

CREATE TABLE veckodax.Tee(
	name VARCHAR(20),
	courseID INT,
	clubID INT, 
	PRIMARY KEY (name, courseID, clubID),
	FOREIGN KEY (courseID, clubID) REFERENCES Course(id, clubID)
);

CREATE TABLE veckodax.TeeRating(
	teeName VARCHAR(20),
	courseID INT,
	clubID INT,
	sex VARCHAR(6), 
	cr DOUBLE NOT NULL,
	slope INT NOT NULL,
	PRIMARY KEY (teeName, courseID, clubID, sex),
	FOREIGN KEY (teeName, courseID, clubID) REFERENCES Tee(name, courseID, clubID),
	FOREIGN KEY (sex) REFERENCES Sex(sex)
);

CREATE TABLE veckodax.Round (
	dateAndTime DATETIME,
	hcp DOUBLE,
	player VARCHAR(9),
	marquer VARCHAR(9),
	courseID INT,
	clubID INT,
	teeName VARCHAR(20),
	PRIMARY KEY(dateAndTime, player),
	FOREIGN KEY(player) REFERENCES Player(golfID),
	FOREIGN KEY(marquer) REFERENCES Player(golfID),
	FOREIGN KEY (teeName, courseID, clubID) REFERENCES Tee(name, courseID, clubID),
	FOREIGN KEY (courseID, clubID) REFERENCES Course(id, clubID)
);

CREATE TABLE veckodax.Hole(
	number INT,
	clubID INT,
	courseID INT,
	par INT NOT NULL,
	hcp INT,
	PRIMARY KEY (number, courseID, clubID),
	FOREIGN KEY (courseID, clubID) REFERENCES Course(id, clubID),
	CONSTRAINT 18holes CHECK ((number>0) AND (number<19) AND (hcp>0) AND (hcp<19))
);

CREATE TABLE veckodax.Score(
	number INT,
	clubID INT,
	courseID INT,
	roundStart DATETIME,
	player CHAR(9),
	score INT,
	PRIMARY KEY (number, courseID, clubID, roundStart, player),
	FOREIGN KEY (number, courseID, clubID) REFERENCES Hole(number, courseID, clubID),
	FOREIGN KEY (roundStart, player) REFERENCES Round(dateAndTime, player)
);

CREATE TABLE veckodax.Distance(
	hole INT,
	tee VARCHAR(20),
	courseID INT,
	clubID INT,
	meters INT NOT NULL,
	PRIMARY KEY (hole, tee, courseID, clubID),
	FOREIGN KEY (tee, courseID, clubID) REFERENCES Tee(name, courseID, clubID),
	FOREIGN KEY (hole, courseID, clubID) REFERENCES Hole(number, courseID, clubID)
);


CREATE VIEW veckodax.AllRounds AS SELECT roundStart, golfID, firstname, lastname, Round.hcp, Round.teeName, 
	- round(-Round.hcp*(TeeRating.slope/113)+(TeeRating.cr-sum(Hole.par)),0) AS SHCP,
    sum(score) AS Brutto, sum(score)-round(-Round.hcp*(TeeRating.slope/113)+(TeeRating.cr-sum(Hole.par)),0) AS Netto
FROM Score, TeeRating, Round, Player, Hole
WHERE Score.roundStart = Round.dateAndTime AND
	Round.teeName = TeeRating.teeName AND
    Player.sex = TeeRating.sex AND
    Player.golfid = Round.player AND
    Player.golfid = Score.player AND
    Score.number = Hole.number
GROUP BY concat(Player.golfID, Round.dateAndTime)

/*Creating a Course*/

/*Creating the club*/
INSERT INTO Club VALUES (NULL,'Chalmers GK');

/*Creating the course*/
INSERT INTO Course VALUES(NULL, '18-hålsbanan', (SELECT id FROM Club WHERE name = 'Chalmers GK'));

/*Creating the tees*/
INSERT INTO Tee VALUES ('Vit', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Tee VALUES ('Blå', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Tee VALUES ('Gul', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Tee VALUES ('Röd', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Tee VALUES ('Orange', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'));

/* Setting tee rating*/
INSERT INTO TeeRating VALUES ('Vit', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'male',70.1 , 122 );
INSERT INTO TeeRating VALUES ('Vit', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'female',76.5 , 131 );
INSERT INTO TeeRating VALUES ('Gul', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'male',69.4,121);
INSERT INTO TeeRating VALUES ('Gul', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'female',75.2 , 129 );
INSERT INTO TeeRating VALUES ('Blå', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'male',66.9,116);
INSERT INTO TeeRating VALUES ('Blå', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'female',72.2,123);
INSERT INTO TeeRating VALUES ('Röd', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'male',65.5,113);
INSERT INTO TeeRating VALUES ('Röd', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'female',70.5,119);
INSERT INTO TeeRating VALUES ('Orange', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'male',63,110);
INSERT INTO TeeRating VALUES ('Orange', (SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 
	(SELECT id FROM Club WHERE name = 'Chalmers GK'), 'female',67,113);

/*Setting hole hcp*/
INSERT INTO Hole VALUES (1, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 4, 6);
INSERT INTO Hole VALUES (2, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 3,18);
INSERT INTO Hole VALUES (3, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 4,16);
INSERT INTO Hole VALUES (4, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 5,10);
INSERT INTO Hole VALUES (5, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 4,12);
INSERT INTO Hole VALUES (6, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 5,2);
INSERT INTO Hole VALUES (7, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 3,4);
INSERT INTO Hole VALUES (8, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 4,8);
INSERT INTO Hole VALUES (9, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 3,14);
INSERT INTO Hole VALUES (10, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 4, 9);
INSERT INTO Hole VALUES (11, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 3,17);
INSERT INTO Hole VALUES (12, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 5,1);
INSERT INTO Hole VALUES (13, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 4, 11);
INSERT INTO Hole VALUES (14, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 4, 13);
INSERT INTO Hole VALUES (15, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 3,5);
INSERT INTO Hole VALUES (16, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 4, 15);
INSERT INTO Hole VALUES (17, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 5,3);
INSERT INTO Hole VALUES (18, (SELECT id FROM Club WHERE name = 'Chalmers GK'),
	(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), 4,7);

/*Setting distances*/
INSERT INTO Distance VALUES (1, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),359);
INSERT INTO Distance VALUES (1, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),359);
INSERT INTO Distance VALUES (1, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),324);
INSERT INTO Distance VALUES (1, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),324);
INSERT INTO Distance VALUES (1, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),210);

INSERT INTO Distance VALUES (2, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),135);
INSERT INTO Distance VALUES (2, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),135);
INSERT INTO Distance VALUES (2, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),135);
INSERT INTO Distance VALUES (2, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),113);
INSERT INTO Distance VALUES (2, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),108);

INSERT INTO Distance VALUES (3, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),325);
INSERT INTO Distance VALUES (3, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),302);
INSERT INTO Distance VALUES (3, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),294);
INSERT INTO Distance VALUES (3, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),248);
INSERT INTO Distance VALUES (3, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),220);

INSERT INTO Distance VALUES (4, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),419);
INSERT INTO Distance VALUES (4, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),419);
INSERT INTO Distance VALUES (4, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),339);
INSERT INTO Distance VALUES (4, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),339);
INSERT INTO Distance VALUES (4, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),256);

INSERT INTO Distance VALUES (5, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),306);
INSERT INTO Distance VALUES (5, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),291);
INSERT INTO Distance VALUES (5, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),286);
INSERT INTO Distance VALUES (5, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),255);
INSERT INTO Distance VALUES (5, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),196);

INSERT INTO Distance VALUES (6, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),506);
INSERT INTO Distance VALUES (6, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),506);
INSERT INTO Distance VALUES (6, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),457);
INSERT INTO Distance VALUES (6, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),457);
INSERT INTO Distance VALUES (6, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),316);

INSERT INTO Distance VALUES (7, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),187);
INSERT INTO Distance VALUES (7, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),187);
INSERT INTO Distance VALUES (7, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),154);
INSERT INTO Distance VALUES (7, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),154);
INSERT INTO Distance VALUES (7, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),124);

INSERT INTO Distance VALUES (8, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),382);
INSERT INTO Distance VALUES (8, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),342);
INSERT INTO Distance VALUES (8, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),300);
INSERT INTO Distance VALUES (8, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),300);
INSERT INTO Distance VALUES (8, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),230);

INSERT INTO Distance VALUES (9, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),140);
INSERT INTO Distance VALUES (9, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),129);
INSERT INTO Distance VALUES (9, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),120);
INSERT INTO Distance VALUES (9, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),110);
INSERT INTO Distance VALUES (9, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),107);

INSERT INTO Distance VALUES (10, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),347);
INSERT INTO Distance VALUES (10, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),327);
INSERT INTO Distance VALUES (10, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),315);
INSERT INTO Distance VALUES (10, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),300);
INSERT INTO Distance VALUES (10, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),190);

INSERT INTO Distance VALUES (11, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),177);
INSERT INTO Distance VALUES (11, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),177);
INSERT INTO Distance VALUES (11, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),146);
INSERT INTO Distance VALUES (11, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),146);
INSERT INTO Distance VALUES (11, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),143);

INSERT INTO Distance VALUES (12, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),477);
INSERT INTO Distance VALUES (12, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),447);
INSERT INTO Distance VALUES (12, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),435);
INSERT INTO Distance VALUES (12, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),375);
INSERT INTO Distance VALUES (12, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),265);

INSERT INTO Distance VALUES (13, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),343);
INSERT INTO Distance VALUES (13, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),333);
INSERT INTO Distance VALUES (13, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),320);
INSERT INTO Distance VALUES (13, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),290);
INSERT INTO Distance VALUES (13, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),200);

INSERT INTO Distance VALUES (14, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),269);
INSERT INTO Distance VALUES (14, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),269);
INSERT INTO Distance VALUES (14, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),260);
INSERT INTO Distance VALUES (14, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),228);
INSERT INTO Distance VALUES (14, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),190);

INSERT INTO Distance VALUES (15, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),159);
INSERT INTO Distance VALUES (15, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),159);
INSERT INTO Distance VALUES (15, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),128);
INSERT INTO Distance VALUES (15, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),128);
INSERT INTO Distance VALUES (15, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),125);

INSERT INTO Distance VALUES (16, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),300);
INSERT INTO Distance VALUES (16, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),294);
INSERT INTO Distance VALUES (16, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),288);
INSERT INTO Distance VALUES (16, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),272);
INSERT INTO Distance VALUES (16, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),219);

INSERT INTO Distance VALUES (17, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),483);
INSERT INTO Distance VALUES (17, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),483);
INSERT INTO Distance VALUES (17, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),390);
INSERT INTO Distance VALUES (17, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),390);
INSERT INTO Distance VALUES (17, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),300);

INSERT INTO Distance VALUES (18, 'Vit',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),410);
INSERT INTO Distance VALUES (18, 'Gul',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),370);
INSERT INTO Distance VALUES (18, 'Blå',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),312);
INSERT INTO Distance VALUES (18, 'Röd',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),312);
INSERT INTO Distance VALUES (18, 'Orange',(SELECT Course.id FROM Course, Club WHERE Course.name = '18-hålsbanan' AND Club.name = 'Chalmers GK'), (SELECT id FROM Club WHERE name = 'Chalmers GK'),252);

/*Creating players*/
INSERT INTO Player VALUES ('950501002', 'Adam', 'Eineving', 'adam@eineving.se', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Player VALUES ('930311006', 'Daniel', 'Eineving', 'daniel@eineving.se', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Player VALUES ('670514011', 'Lena', 'Eineving', 'lena@eineving.se', 'female',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));
INSERT INTO Player VALUES ('640412010', 'Thomas', 'Eineving', 'thomas@einevingse', 'male',(
	SELECT id FROM Club WHERE name = 'Chalmers GK'));