CREATE TABLE [dbo].[Notify] (
    [NotifyID]       INT              IDENTITY (1, 1) NOT NULL,
    [ObjectGuid]     UNIQUEIDENTIFIER CONSTRAINT [DF_Notify_ObjectGuid] DEFAULT (newid()) NULL,
    [SourceID]       BIGINT           NULL,
    [Sender]         NVARCHAR (200)   NULL,
    [Title_Vi]       NVARCHAR (500)   NULL,
    [Content_Vi]     NVARCHAR (4000)  NULL,
    [Title_En]       NVARCHAR (500)   NULL,
    [Content_En]     NVARCHAR (4000)  NULL,
    [NotifyStatusID] INT              NULL,
    [TimeSend]       DATETIME         NULL,
    [CreateDate]     DATETIME         CONSTRAINT [DF_Notify_CreateDate] DEFAULT (getdate()) NULL,
    [LastUpdate]     DATETIME         CONSTRAINT [DF_Notify_LastUpdate] DEFAULT (getdate()) NULL,
    [LastModify]     DATETIME         CONSTRAINT [DF_Notify_LastModify] DEFAULT (getdate()) NULL,
    [Test]           DATETIME         NULL,
    CONSTRAINT [PK_Notify] PRIMARY KEY CLUSTERED ([NotifyID] ASC)
);

