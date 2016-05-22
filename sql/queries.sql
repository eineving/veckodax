/*Handy selections*/

/*Brutto scores*/
SELECT roundStart, firstName, lastname, SUM( score ) AS Brutto
FROM Score, Player
WHERE Player.golfID=Score.player
GROUP BY roundStart, player
ORDER BY Brutto

/*Netto scores*/


/*HCP*/
SELECT roundStart,  firstname, lastname, Round.hcp, Round.teeName, TeeRating.cr, TeeRating.slope, 
	round(-Round.hcp*(TeeRating.slope/113)+(TeeRating.cr-sum(Hole.par)),0) AS SHCP, sum(Hole.par) AS Par
FROM Score, TeeRating, Round, Player, Hole
WHERE Score.roundStart = Round.dateAndTime AND
	Round.teeName = TeeRating.teeName AND
    Player.sex = TeeRating.sex AND
    Player.golfid = Round.player AND
    Player.golfid = Score.player AND
    Score.number = Hole.number
GROUP BY concat(Player.golfID, Round.dateAndTime);

