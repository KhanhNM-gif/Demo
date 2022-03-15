-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[usp_NotifyOTP_SelectCountByPhoneNumber]
    -- Add the parameters for the stored procedure here
    @PhoneNumber VARCHAR(20)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT ID
    FROM dbo.NotifyOTP
    WHERE PhoneNumber = @PhoneNumber
          AND CreateDate > DATEADD(MINUTE, -5, CURRENT_TIMESTAMP);
END;
