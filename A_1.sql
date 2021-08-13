SELECT DISTINCT strftime('%m', date) AS month_number, 
	AVG(Items.price) OVER (PARTITION BY strftime('%m', date)) AS avg_spend  FROM Purchases
	JOIN Items ON Purchases.itemid = Items.itemid
	JOIN Users ON Users.userID = Purchases.userid
		WHERE Users.age BETWEEN 18 AND 25
		
# выдает результат средних трат по месяцам
