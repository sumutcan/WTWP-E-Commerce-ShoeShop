USE [SHOESHOP]
GO
/****** Object:  StoredProcedure [dbo].[GetProductsFromCart]    Script Date: 05/22/2012 01:31:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[GetProductsFromCart]
(
	@pno int
)
AS
SELECT StockID FROM CARTPRODUCT WHERE Pno = @pno