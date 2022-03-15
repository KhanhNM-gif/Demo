CREATE TABLE [dbo].[NotifyStatus] (
    [NotifyStatusID]   INT            IDENTITY (1, 1) NOT NULL,
    [NotifyStatusName] NVARCHAR (100) NULL,
    CONSTRAINT [PK_NotifyStatus] PRIMARY KEY CLUSTERED ([NotifyStatusID] ASC)
);

