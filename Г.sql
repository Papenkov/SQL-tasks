SELECT DISTINCT items.itemid, 
  round(100.0 * SUM(Items.price) OVER (PARTITION BY Purchases.itemid) / SUM(Items.price) OVER(), 2) AS percents 
    FROM Purchases
        JOIN items ON Purchases.itemid = items.itemid
        JOIN users ON users.userID = Purchases.userid
            ORDER BY percents DESC limit 3
