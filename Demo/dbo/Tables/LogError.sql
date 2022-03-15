CREATE TABLE [dbo].[LogError] (
    [ID]             BIGINT          IDENTITY (1, 1) NOT NULL,
    [CreateDate]     DATETIME        DEFAULT (getdate()) NOT NULL,
    [LogContent]     NVARCHAR (4000) DEFAULT ('') NULL,
    [StatusId]       TINYINT         DEFAULT ((0)) NOT NULL,
    [ProcessContent] NVARCHAR (MAX)  NULL,
    [TypeLog]        TINYINT         DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

