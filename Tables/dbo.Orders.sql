CREATE TABLE [dbo].[Orders] (
  [order_id] [int] IDENTITY,
  [customer_name] [varchar](100) NULL,
  [status] [varchar](20) NULL,
  [order_date] [date] NULL,
  PRIMARY KEY NONCLUSTERED ([order_id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_Orders_OpenOnly]
  ON [dbo].[Orders] ([order_date])
  WHERE ([status]='Open')
  ON [PRIMARY]
GO