CREATE PROC [dbo].[sp_LogActivity_Insert]
    @IP [varchar](40) ,
    @UserID [int] ,
    @ObjectGUID [uniqueidentifier] ,
    @LogContent [nvarchar](2000)
AS 
    BEGIN
        INSERT  INTO dbo.LogActivity
                ( IP ,
                  UserID ,
                  ObjectGUID ,
                  LogContent
	          )
        VALUES  ( @IP ,
                  @UserID ,
                  @ObjectGUID ,
                  @LogContent
	          )
    END
