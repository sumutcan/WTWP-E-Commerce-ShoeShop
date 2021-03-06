USE [SHOESHOP]
GO
/****** Object:  StoredProcedure [dbo].[GetTOP5Product]    Script Date: 05/22/2012 02:48:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[SearchProduct]
(
	@kriter nvarchar(50)
)
as
SELECT  
INVENTORY.StockID,
PRODUCT.ProductID, 
PRODUCT.Gender, 
PRODUCER.ProducerName, 
PRODUCT.Description, 
INVENTORY.Size, 
INVENTORY.Color, 
INVENTORY.PricePerPiece

FROM  PRODUCT, PRODUCER, INVENTORY
WHERE PRODUCER.ProducerID = PRODUCT.ProducerID and
INVENTORY.ProductID = PRODUCT.ProductID and 
(PRODUCT.Description LIKE '%'+@kriter+'%' or PRODUCER.ProducerName LIKE '%'+@kriter+'%' or INVENTORY.Color LIKE '%'+@kriter+'%')


