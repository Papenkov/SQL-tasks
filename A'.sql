SELECT AVG(price) FROM Purchases
	JOIN Items ON Purchases.itemid = Items.itemid
	JOIN Users ON Users.userID = Purchases.userid
		WHERE Users.age BETWEEN 18 AND 25

# оператор BETWEEN включает в выборку крайние значения
