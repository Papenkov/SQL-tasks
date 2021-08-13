SELECT DISTINCT strftime('%m', date) AS month_number, 
	AVG(Items.price) OVER (PARTITION BY strftime('%m', date)) AS avg_spend  FROM Purchases
	JOIN items ON Purchases.itemid = items.itemid
	JOIN users ON users.userID = Purchases.userid
		WHERE users.age BETWEEN 26 AND 35
