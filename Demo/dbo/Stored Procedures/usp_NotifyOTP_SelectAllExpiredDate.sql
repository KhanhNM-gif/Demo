-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_NotifyOTP_SelectAllExpiredDate]
	-- Add the parameters for the stored procedure here
	@ExpriedDate DATETIME
AS 
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON ;

        SELECT  *
        FROM    dbo.NotifyOTP
        WHERE   ExpriedDate > @ExpriedDate
    END
