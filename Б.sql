SELECT strftime('%m', date) AS date, SUM(Items.price) OVER (PARTITION BY strftime('%m', date)) AS sum FROM Purchases
JOIN items ON Purchases.itemid = items.itemid
JOIN users ON users.userID = Purchases.userid
	WHERE Users.age >= 35
	ORDER BY sum DESC limit 1

