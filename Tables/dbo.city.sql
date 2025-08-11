CREATE TABLE [dbo].[city] (
  [city_id] [int] IDENTITY,
  [city] [varchar](50) NOT NULL,
  [country_id] [smallint] NOT NULL,
  [last_update] [datetime] NOT NULL,
  PRIMARY KEY CLUSTERED ([city_id])
)
ON [PRIMARY]
GO

CREATE INDEX [idx_fk_country_id]
  ON [dbo].[city] ([country_id])
  ON [PRIMARY]
GO