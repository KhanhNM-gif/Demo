-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Notify_UpdateTimeSend]
    -- Add the parameters for the stored procedure here
    @NotifyID INT
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    UPDATE dbo.Notify
    SET 
        NotifyStatusID = 2,
        TimeSend = GETDATE(),
        LastUpdate = CURRENT_TIMESTAMP
    WHERE NotifyID = @NotifyID;

END;
