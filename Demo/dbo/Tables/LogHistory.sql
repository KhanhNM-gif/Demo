CREATE TABLE [dbo].[LogHistory] (
    [ID]         BIGINT           IDENTITY (1, 1) NOT NULL,
    [CreateDate] DATETIME         DEFAULT (getdate()) NOT NULL,
    [IP]         VARCHAR (40)     DEFAULT ('') NOT NULL,
    [UserID]     INT              DEFAULT ((0)) NOT NULL,
    [ObjectGUID] UNIQUEIDENTIFIER NULL,
    [FuncId]     INT              NULL,
    [LogContent] NVARCHAR (2000)  DEFAULT ('') NOT NULL,
    [UserName]   VARCHAR (30)     DEFAULT ('') NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

