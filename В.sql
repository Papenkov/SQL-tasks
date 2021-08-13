select Items.itemid from Purchases
join items on Purchases.itemid = items.itemid
join users on users.userID = Purchases.userid
	where date > date('now', '-1 year')
	group by Items.itemid
    order by sum(price) desc limit 1




