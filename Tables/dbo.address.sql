CREATE TABLE [dbo].[address] (
  [address_id] [int] IDENTITY,
  [address] [varchar](50) NOT NULL,
  [address2] [varchar](50) NULL,
  [district] [varchar](20) NOT NULL,
  [city_id] [int] NOT NULL,
  [postal_code] [varchar](10) NULL,
  [phone] [varchar](20) NOT NULL,
  [last_update] [datetime] NOT NULL,
  PRIMARY KEY CLUSTERED ([address_id])
)
ON [PRIMARY]
GO

CREATE INDEX [idx_fk_city_id]
  ON [dbo].[address] ([city_id])
  ON [PRIMARY]
GO