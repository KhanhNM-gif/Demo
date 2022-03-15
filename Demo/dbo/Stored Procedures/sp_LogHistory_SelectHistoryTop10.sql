CREATE PROCEDURE [dbo].[sp_LogHistory_SelectHistoryTop10]
AS 
    BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
        SET NOCOUNT ON ;

        SELECT  top 10 l.CreateDate ,
                l.IP ,
                u.UrlAvatar,
                ISnull(u.UserName,'HT') UserName,
                ISNULL(u.FullName,N'Hệ thống')FullName,
                u.UserDeptName,
                LogContent
        FROM    dbo.LogHistory l
                LEFT JOIN AccountUser u ON l.UserID = u.UserID
				WHERE l.UserID <> 0
        ORDER BY CreateDate DESC
    END
