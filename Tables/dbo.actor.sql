CREATE TABLE [dbo].[actor] (
  [actor_id] [int] IDENTITY,
  [first_name] [varchar](45) NOT NULL,
  [last_name] [varchar](75) NOT NULL,
  [last_update] [date] NOT NULL CONSTRAINT [DF_actor_last_update] DEFAULT (getdate()),
  PRIMARY KEY CLUSTERED ([actor_id])
)
ON [PRIMARY]
GO