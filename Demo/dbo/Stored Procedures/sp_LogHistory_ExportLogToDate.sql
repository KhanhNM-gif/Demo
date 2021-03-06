CREATE PROCEDURE [dbo].[sp_LogHistory_ExportLogToDate]
@datefrom DATETIME,
@dateto DATETIME
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    SELECT l.CreateDate,
           l.IP,
           u.UrlAvatar,
           ISNULL(u.UserName, 'HT') UserName,
           ISNULL(u.FullName, N'Hệ thống') FullName,
           u.UserDeptName,
           LogContent
    FROM dbo.LogHistory l
        LEFT JOIN AccountUser u
            ON l.UserID = u.UserID
    WHERE l.CreateDate >= @datefrom AND l.CreateDate <= @dateto
	--CONVERT(VARCHAR(15), l.CreateDate, 111) = CONVERT(VARCHAR, GETDATE(), 111)
      --    AND DATEPART(HOUR, l.CreateDate) = DATEPART(HOUR, GETDATE())
    ORDER BY CreateDate DESC;
END;
