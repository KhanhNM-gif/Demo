-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Notify_InsertUpdate]
    -- Add the parameters for the stored procedure here
    @NotifyID INT,
    @Sender NVARCHAR(200),
    @Title_Vi NVARCHAR(500),
    @Content_Vi NVARCHAR(4000),
	@Title_En NVARCHAR(500),
    @Content_En NVARCHAR(4000),
    @NotifyStatusID INT,
    @TimeSend DATETIME
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    IF (@NotifyID != 0)
    BEGIN
        UPDATE dbo.Notify
        SET Sender = @Sender,
            Title_Vi = @Title_Vi,
            Content_Vi = @Content_Vi,
			Title_En = @Title_En,
            Content_En = @Content_En,
            NotifyStatusID = @NotifyStatusID,
            TimeSend = @TimeSend,
            LastUpdate = CURRENT_TIMESTAMP,
			LastModify = CURRENT_TIMESTAMP
        WHERE NotifyID = @NotifyID;
    END;
    ELSE
    BEGIN
        INSERT INTO Notify
        (
            Sender,
            Title_Vi,
            Content_Vi,
			Title_En,
            Content_En,
            NotifyStatusID,
            TimeSend
        )
        VALUES
        (@Sender, @Title_Vi, @Content_Vi,@Title_En, @Content_En, @NotifyStatusID, @TimeSend);
        SET @NotifyID = @@IDENTITY;
    END;
    SELECT *
    FROM dbo.Notify
    WHERE NotifyID = @NotifyID;
END;
