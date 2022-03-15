-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_NotifyOTP_UpdateOTPByPhoneNumber]
    -- Add the parameters for the stored procedure here
    @PhoneNumber VARCHAR(20)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

	UPDATE dbo.NotifyOTP SET OTPCode = NULL WHERE PhoneNumber = @PhoneNumber
   
END;
