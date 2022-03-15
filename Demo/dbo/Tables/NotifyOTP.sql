CREATE TABLE [dbo].[NotifyOTP] (
    [ID]                    BIGINT       IDENTITY (1, 1) NOT NULL,
    [PhoneNumber]           VARCHAR (50) NULL,
    [SubscriptionNetworkID] INT          NULL,
    [OTPCode]               VARCHAR (50) NULL,
    [IPAddress]             VARCHAR (20) NULL,
    [CreateDate]            DATETIME     CONSTRAINT [DF_NotifyOTP_CreateDate] DEFAULT (getdate()) NULL,
    [ExpriedDate]           DATETIME     NULL,
    CONSTRAINT [PK_NotifyOTP] PRIMARY KEY CLUSTERED ([ID] ASC)
);

