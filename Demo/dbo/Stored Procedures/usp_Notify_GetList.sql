-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Notify_GetList]
    -- Add the parameters for the stored procedure here
    @TextSearch NVARCHAR(200)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT n.NotifyID,
           n.ObjectGuid,
           n.Sender,
           n.Title_Vi,
           n.Content_Vi,
		   n.Title_En,
           n.Content_En,
           n.NotifyStatusID,
           n.TimeSend,
           n.CreateDate,
           n.LastUpdate,
           ns.NotifyStatusID,
           ns.NotifyStatusName
    FROM dbo.Notify n
        INNER JOIN dbo.NotifyStatus ns
            ON ns.NotifyStatusID = n.NotifyStatusID
    WHERE (
              @TextSearch IS NULL
              OR @TextSearch = ''
              OR n.Title_Vi LIKE N'%' + @TextSearch + '%'
              OR n.Content_Vi LIKE N'%' + @TextSearch + '%'
			  OR n.Title_En LIKE N'%' + @TextSearch + '%'
              OR n.Content_En LIKE N'%' + @TextSearch + '%'
          )
          AND n.NotifyStatusID <> 3
    ORDER BY n.LastUpdate DESC;

END;
