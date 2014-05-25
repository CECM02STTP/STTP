SELECT          a.GoodsName, a.Price, a.Quantity, a.SellerID, a.StartTime, b.Picture, b.PictureID, d.SchoolName, d.Region
FROM            dbo.StdntGoods AS a INNER JOIN
                dbo.StdntGoodsPic AS b ON a.GoodsID = b.GoodsID INNER JOIN
                dbo.MemberData AS c ON a.SellerID = c.MemberID INNER JOIN
                dbo.SchoolData AS d ON c.SchoolID = d.SchoolID
WHERE           (b.PictureID IN (SELECT MIN(PictureID) AS Expr1 FROM dbo.StdntGoodsPic GROUP BY GoodsID))