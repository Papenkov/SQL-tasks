select strftime('%m', date) as date, sum(Items.price) over (partition by strftime('%m', date)) as sum from Purchases
join items on Purchases.itemid = items.itemid
join users on users.userID = Purchases.userid
	where Users.age >= 35
	order by sum desc limit 1




