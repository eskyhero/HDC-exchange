if object_id('temptb','table')>0 drop table temptb;
 declare @sql varchar(max)
 declare @icount int
 declare @I int
 set @sql='drop table '
 set @i=1
 select name,IDENTITY(int,1,1) id into temptb from sys.tables t where name like 'tmp%' 
 and not exists(select 1 from T_BAS_TEMPORARYTABLENAME where FTABLENAME=t.name) and create_date<=DATEADD(n,-5, GETDATE())
 select @icount=@@ROWCOUNT
 while @i<@icount
 begin
   select @sql=@sql+name+',' from temptb where id between @i and @i+49
   if @@ROWCOUNT>0
       set @sql=substring(@sql,1,len(@sql)-1)+';'
   set @i=@i+50
   exec(@sql)
   set @sql='drop table '
 end
 if object_id('temptb','table')>0 drop table temptb; 