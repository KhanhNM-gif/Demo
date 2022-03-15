-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Notify_GetOneBySourceID]
    -- Add the parameters for the stored procedure here
    @SourceID BIGINT
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

  SELECT * FROM dbo.Notify WHERE SourceID=@SourceID;

END;
