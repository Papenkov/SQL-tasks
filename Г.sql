select distinct items.itemid, 
    round(100.0 * sum(Items.price) over (Partition by Purchases.itemid) / sum(Items.price) over (), 2) as percents 
from Purchases
join items on Purchases.itemid = items.itemid
join users on users.userID = Purchases.userid
ORDER by percents desc limit 3