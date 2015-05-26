CREATE TABLE Sex(
	sex VARCHAR(6) PRIMARY KEY
);

INSERT INTO sex VALUES('male');
INSERT INTO sex VALUES('female');

CREATE TABLE Club(
	id INT AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL, 
	PRIMARY KEY (id)
);

CREATE TABLE Player(
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

CREATE TABLE Course(
	id INT AUTO_INCREMENT,
	name VARCHAR(50),
	clubID INT,
	PRIMARY KEY(id, clubID),
	FOREIGN KEY (clubID) REFERENCES Club(id)
);

CREATE TABLE Tee(
	name VARCHAR(20),
	courseID INT,
	clubID INT, 
	PRIMARY KEY (name, courseID, clubID),
	FOREIGN KEY (courseID, clubID) REFERENCES Course(id, clubID)
);

CREATE TABLE TeeRating(
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

CREATE TABLE Round (
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

CREATE TABLE Hole(
	number INT,
	clubID INT,
	courseID INT,
	par INT NOT NULL,
	hcp INT,
	PRIMARY KEY (number, courseID, clubID),
	FOREIGN KEY (courseID, clubID) REFERENCES Course(id, clubID),
	CONSTRAINT 18holes CHECK ((number>0) AND (number<19) AND (hcp>0) AND (hcp<19))
);

CREATE TABLE Score(
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

CREATE TABLE Distance(
	hole INT,
	tee VARCHAR(20),
	courseID INT,
	clubID INT,
	meters INT NOT NULL,
	PRIMARY KEY (hole, tee, courseID, clubID),
	FOREIGN KEY (tee, courseID, clubID) REFERENCES Tee(name, courseID, clubID),
	FOREIGN KEY (hole, courseID, clubID) REFERENCES Hole(number, courseID, clubID)
);


CREATE VIEW AllRounds AS SELECT roundStart,  firstname, lastname, round.hcp, round.teeName, 
	- round(-round.hcp*(teerating.slope/113)+(teerating.cr-sum(hole.par)),0) AS SHCP,
    sum(score) AS Brutto, sum(score)-round(-round.hcp*(teerating.slope/113)+(teerating.cr-sum(hole.par)),0) AS Netto
FROM Score, teerating, round, player, Hole
WHERE Score.roundStart = round.dateAndTime AND
	round.teeName = teerating.teeName AND
    player.sex = teerating.sex AND
    player.golfid = round.player AND
    player.golfid = Score.player AND
    Score.number = hole.number
GROUP BY concat(player.golfID, round.dateAndTime)