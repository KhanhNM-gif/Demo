CREATE PROC [dbo].[sp_LogError_Insert]
    @ID [bigint] OUTPUT ,
    @LogContent [nvarchar](MAX) ,
    @TypeLog TINYINT = 0
AS 
    BEGIN
        INSERT  INTO dbo.LogError
                ( LogContent, TypeLog )
        VALUES  ( @LogContent, @TypeLog )
        SET @ID = SCOPE_IDENTITY()
    END
