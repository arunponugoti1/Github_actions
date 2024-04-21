USE  to_publish;
GO
EXEC sp_dropsubscription
          @publication = 'pub1',
          @article     = N'all',
          @subscriber  = N'34.106.169.79'
EXEC msdb.dbo.gcloudsql_transrepl_dropsubscriber
 @subscriber  = N'34.106.169.79'
EXEC msdb.dbo.gcloudsql_transrepl_droppublication
  @db = 'to_publish', @publication='pub1'

EXEC msdb.dbo.gcloudsql_transrepl_replicationdboption
@db='to_publish',
@value=N'false'

EXEC msdb.dbo.gcloudsql_transrepl_remove_distribution
