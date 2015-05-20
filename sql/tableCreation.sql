CREATE TABEL Sex(
	sex VARCHAR(6) PRIMARY KEY
);

CREATE TABEL Club(
	id INT AUTO_INCREMENT,
	name CARCHAR(50),
	PRIMARY KEY id
);

CREATE TABEL Player(
	golfID CHAR(9),
	firstName VARCHAR(50),
	lastName VARCHAR(50),
	sex VARCHAR(6),
	clubID INT,
	PRIMARY KEY (golfID),
	FOREIGN KEY (sex) REFERENCES Sex(sex),
	FOREIGN KEY (clubID) REFERENCES Club(id)
);

CREATE TABEL Course(
	id INT AUTO_INCREMENT,
	name VARCHAR(50);
	par INT,
	clubID INT,
	PRIMARY KEY(id, clubID),
	FOREIGN KEY (clubID) REFERENCES Club(id)
);

CREATE TABEL Tee(
	name VARCHAR(20),
	courseID INT,
	clubID INT, 
	PRIMARY KEY (name, courseID, clubID),
	FOREIGN KEY (courseID) REFERENCES Course(id),
	FOREIGN KEY (clubID) REFERENCES Club(id)
);

CREATE TABEL TeeRating(
	teeName VARCHAR(20),
	courseID INT,
	clubID INT,
	sex VARCHAR(6), 
	PRIMARY KEY (teeName, courseID, clubID, sex),
	FOREIGN KEY (teeName) REFERENCES Tee(name),
	FOREIGN KEY (courseID) REFERENCES Course(id),
	FOREIGN KEY (clubID) REFERENCES Club(id),
	FOREIGN KEY (sex) REFERENCES Sex(sex)
);

CREATE TABEL Round (
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
	FOREIGN KEY (clubID) REFERENCES Club(id),
);