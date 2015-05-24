/*Handy selections*/

/*Brutto scores*/
SELECT roundStart, firstName, lastname, SUM( score ) AS Brutto
FROM Score, player
WHERE player.golfID=Score.player
GROUP BY roundStart, player
ORDER BY Brutto

/*Netto scores*/


/*HCP*/
SELECT roundStart,  firstname, lastname, hcp 
FROM Score, teerating, round, player
WHERE Score.roundStart = round.dateAndTime AND
	round.teeName = teerating.teeName AND
    player.sex = teerating.sex AND
    player.golfid = round.player AND
    player.golfid = Score.player
GROUP BY concat(player.golfID, round.dateAndTime);