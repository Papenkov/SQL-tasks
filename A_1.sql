WITH result_table AS (
  SELECT COUNT(I.itemID) AS cnt, sum(I.price) AS sum  FROM Purchases AS P
	JOIN Items AS I ON P.itemid = I.itemid
	JOIN Users AS U ON U.userID = P.userid
		WHERE U.age BETWEEN 18 AND 25
    	GROUP BY strftime('%m', date)
  )
  
 SELECT AVG(sum/cnt) AS AVG_per_month FROM result_table
