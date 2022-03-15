CREATE PROC [dbo].[sp_LogHistory_Insert]
    @IP [varchar](40) ,
    @UserID [int] ,
    @FuncId [int] ,
    @ObjectGUID [uniqueidentifier] ,
    @LogContent [nvarchar](2000)
AS 
    BEGIN
        INSERT  INTO dbo.LogHistory
                ( IP ,
                  UserID ,
                  ObjectGUID ,
                  FuncId,
                  LogContent
	          )
        VALUES  ( @IP ,
                  @UserID ,
                  @ObjectGUID ,
                  @FuncId,
                  @LogContent
	          )
    END
