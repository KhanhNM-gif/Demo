-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Notify_GetOneBySenderName]
    -- Add the parameters for the stored procedure here
    @SenderName NVARCHAR(50)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

  SELECT * FROM dbo.NotifySender WHERE SenderName=@SenderName;

END;
