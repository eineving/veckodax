/*Handy selections*/

/*Brutto scores*/
SELECT roundStart, firstName, lastname, SUM( score ) AS Brutto
FROM Score, player
WHERE player.golfID=Score.player
GROUP BY roundStart, player
ORDER BY Brutto

/*Netto scores*/


/*HCP*/
SELECT roundStart,  firstname, lastname, round.hcp, round.teeName, teerating.cr, teerating.slope, 
	round(-round.hcp*(teerating.slope/113)+(teerating.cr-sum(hole.par)),0) AS SHCP, sum(hole.par) AS Par
FROM Score, teerating, round, player, Hole
WHERE Score.roundStart = round.dateAndTime AND
	round.teeName = teerating.teeName AND
    player.sex = teerating.sex AND
    player.golfid = round.player AND
    player.golfid = Score.player AND
    Score.number = hole.number
GROUP BY concat(player.golfID, round.dateAndTime);

