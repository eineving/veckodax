Handy selections

SELECT roundStart, player, SUM( score ) AS Brutto
FROM Score
GROUP BY roundStart, player