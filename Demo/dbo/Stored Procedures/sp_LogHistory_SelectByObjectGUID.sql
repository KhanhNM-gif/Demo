-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LogHistory_SelectByObjectGUID]
	-- Add the parameters for the stored procedure here
    @ObjectGuid UNIQUEIDENTIFIER
AS 
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON ;

        SELECT  l.CreateDate ,
                l.IP ,
                u.UrlAvatar,
                 ISnull(u.UserName,'HT') UserName,
                ISNULL(u.FullName,N'Hệ thống') FullName,
                u.UserDeptName,
                LogContent
        FROM    dbo.LogHistory l
                LEFT JOIN AccountUser u ON l.UserID = u.UserID
        WHERE   l.ObjectGUID = @ObjectGuid
        ORDER BY ID DESC
    END
