-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_NotifyOTP_Insert]
	-- Add the parameters for the stored procedure here
    @PhoneNumber VARCHAR(20) ,
	@SubscriptionNetworkID INT,
    @OTPCode VARCHAR(20) ,
	@IPAddress VARCHAR(20) ,
    @CreateDate DATETIME ,
    @ExpriedDate DATETIME
AS 
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON ;

        DECLARE @ID BIGINT

        INSERT  INTO dbo.NotifyOTP
                ( PhoneNumber ,
				  SubscriptionNetworkID,
                  OTPCode ,
				  IPAddress,
                  CreateDate ,
                  ExpriedDate
                )
        VALUES  ( @PhoneNumber , -- PhoneNumber - varchar(50)
		          @SubscriptionNetworkID,
                  @OTPCode , -- OTPCode - varchar(50)
				  @IPAddress,
                  @CreateDate , -- CreateDate - datetime
                  @ExpriedDate -- ExpriedDate - datetime
                )
            
        SET @ID = @@IDENTITY
         
        SELECT  @ID ID   
    END
