-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_NotifyOTP_SelectByPhoneNumber]
    -- Add the parameters for the stored procedure here
    @PhoneNumber VARCHAR(20),
    @OTPCode VARCHAR(20)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    IF (@PhoneNumber = '' AND @OTPCode = '')
        SELECT 1 ID,
               DATEADD(DAY, 1, CURRENT_TIMESTAMP) ExpriedDate;
    ELSE
        SELECT *
        FROM NotifyOTP
        WHERE PhoneNumber = @PhoneNumber
              AND OTPCode = @OTPCode;
END;
