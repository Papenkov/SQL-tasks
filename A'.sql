select AVG(price) from Purchases
	join items on Purchases.itemid = items.itemid
	join users on users.userID = Purchases.userid
		where users.age between 18 and 25

