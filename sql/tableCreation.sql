CREATE TABLE Sex(
	sex VARCHAR(6) PRIMARY KEY
);

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
	FOREIGN KEY (courseID) REFERENCES Course(id),
	FOREIGN KEY (clubID) REFERENCES Club(id)
);

CREATE TABLE TeeRating(
	teeName VARCHAR(20),
	courseID INT,
	clubID INT,
	sex VARCHAR(6), 
	cr DOUBLE NOT NULL,
	slope INT NOT NULL,
	PRIMARY KEY (teeName, courseID, clubID, sex),
	FOREIGN KEY (teeName) REFERENCES Tee(name),
	FOREIGN KEY (courseID) REFERENCES Course(id),
	FOREIGN KEY (clubID) REFERENCES Club(id),
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
	FOREIGN KEY(player) REFERENCES Player(golfID)
	FOREIGN KEY(marquer) REFERENCES Player(golfID)
	FOREIGN KEY (teeName) REFERENCES Tee(name),
	FOREIGN KEY (courseID) REFERENCES Course(id),
	FOREIGN KEY (clubID) REFERENCES Club(id)
);

CREATE TABLE Hole(
	number INT,
	clubID INT,
	courseID INT,
	par INT NOT NULL,
	hcp INT,
	PRIMARY KEY (number, courseID, clubID),
	FOREIGN KEY (courseID) REFERENCES Course(id),
	FOREIGN KEY (clubID) REFERENCES Club(id),
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
	FOREIGN KEY (courseID) REFERENCES Course(id),
	FOREIGN KEY (clubID) REFERENCES Club(id),
	FOREIGN KEY (roundStart) REFERENCES Round(dateAndTime),
	FOREIGN KEY (player) REFERENCES Player(golfID)
);

CREATE TABLE Distance(
	hole INT,
	tee VARCHAR(20),
	courseID INT,
	clubID INT,
	meters INT NOT NULL,
	PRIMARY KEY (hole, tee, courseID, clubID),
	FOREIGN KEY (courseID) REFERENCES Course(id),
	FOREIGN KEY (clubID) REFERENCES Club(id),
	FOREIGN KEY (hole) REFERENCES Hole(number),
	FOREIGN KEY	(tee) REFERENCES Tee(name)
);