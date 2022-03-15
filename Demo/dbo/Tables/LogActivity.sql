CREATE TABLE [dbo].[LogActivity] (
    [ID]         BIGINT           IDENTITY (1, 1) NOT NULL,
    [CreateDate] DATETIME         DEFAULT (getdate()) NOT NULL,
    [IP]         VARCHAR (40)     DEFAULT ('') NOT NULL,
    [UserID]     INT              DEFAULT ((0)) NOT NULL,
    [ObjectGUID] UNIQUEIDENTIFIER NOT NULL,
    [LogContent] NVARCHAR (2000)  DEFAULT ('') NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

