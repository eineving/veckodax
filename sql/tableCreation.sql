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


CREATE VIEW veckodax.AllRounds AS SELECT roundStart,  firstname, lastname, Round.hcp, Round.teeName, 
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