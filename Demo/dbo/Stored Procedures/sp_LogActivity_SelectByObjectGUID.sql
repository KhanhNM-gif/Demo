-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LogActivity_SelectByObjectGUID]
	-- Add the parameters for the stored procedure here
    @ObjectGuid UNIQUEIDENTIFIER
AS 
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON ;

        SELECT  l.ID,
                l.CreateDate,
                l.IP FullName,
                l.LogContent
        FROM    dbo.LogActivity l
        WHERE   l.ObjectGUID = @ObjectGuid
        ORDER BY ID DESC
    END
