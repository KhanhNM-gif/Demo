﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Notify_GetOne]
    -- Add the parameters for the stored procedure here
    @NotifyID INT
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

  SELECT * FROM dbo.Notify WHERE NotifyID=@NotifyID;

END;
