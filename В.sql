SELECT Items.itemid FROM Purchases
  JOIN items ON Purchases.itemid = items.itemid
  JOIN users ON users.userID = Purchases.userid
	WHERE date > date('now', '-1 year')
	GROUP BY Items.itemid
    	ORDER BY SUM(price) DESC limit 1
