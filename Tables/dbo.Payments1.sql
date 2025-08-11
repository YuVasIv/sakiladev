CREATE TABLE [dbo].[Payments1] (
  [payment_id] [int] IDENTITY,
  [amount] [decimal](10, 2) NOT NULL,
  [payment_type] [varchar](20) NOT NULL,
  PRIMARY KEY CLUSTERED ([payment_id]),
  CONSTRAINT [CHK_Payments_Cash_Positive] CHECK ([payment_type]<>'Cash' OR [amount]>(0))
)
ON [PRIMARY]
GO