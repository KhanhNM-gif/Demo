CREATE TABLE [dbo].[NotifySender] (
    [SenderID]   INT           NOT NULL,
    [SenderName] NVARCHAR (50) NULL,
    [UrlIcon]    NVARCHAR (50) NULL,
    CONSTRAINT [PK_NotifySender] PRIMARY KEY CLUSTERED ([SenderID] ASC)
);

