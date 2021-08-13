select DISTINCT strftime('%m', date) as month_number, 
	avg(Items.price) over (partition by strftime('%m', date)) as avg_spend  from Purchases
	join items on Purchases.itemid = items.itemid
	join users on users.userID = Purchases.userid
		where users.age between 26 and 35

