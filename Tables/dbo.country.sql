CREATE TABLE [dbo].[country] (
  [country_id] [smallint] IDENTITY,
  [country] [varchar](50) NOT NULL,
  [last_update] [datetime] NULL,
  PRIMARY KEY CLUSTERED ([country_id])
)
ON [PRIMARY]
GO