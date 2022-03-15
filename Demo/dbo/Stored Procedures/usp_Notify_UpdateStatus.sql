-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Notify_UpdateStatus]
    -- Add the parameters for the stored procedure here
    @NotifyID INT,
	@NotifyStatusID INT
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

   UPDATE dbo.Notify SET NotifyStatusID =@NotifyStatusID,TimeSend=CURRENT_TIMESTAMP,LastUpdate=CURRENT_TIMESTAMP WHERE NotifyID = @NotifyID;

END;
