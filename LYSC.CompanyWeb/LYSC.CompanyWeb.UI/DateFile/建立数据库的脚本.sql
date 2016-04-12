USE [bjhksj]
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageEmployees]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--创建p_GetPageEmployees存储过程
create proc [dbo].[p_GetPageEmployees]
@pageIndex int,
@pageSize int,
@totalCount int out
as
select @totalCount=COUNT(1) from dbo.HKSJ_Employees

select * from (
select t.*,ROW_NUMBER() over(order by id)as nnn from dbo.HKSJ_Employees as t
)as m 
where m.nnn between @pageSize*(@pageIndex-1)+1 and @pageIndex*@pageSize
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageMain]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[p_GetPageMain]
(
@pageIndex int,  --当前请求的页码
@pageSize int,    --一页的数量
@totalCount int output --输出多少条数据
)
as
--动态拼接SQL语句
declare @sql nvarchar(2000)
set @sql='select top '+CAST(@pageSize as nvarchar(16))+' * from HKSJ_Main where ID	not in
(
	select top '+CAST((@pageIndex-1)*@pageSize as nvarchar(20))+' ID  from HKSJ_Main order by ID
)
 order by ID';
 exec (@sql)
 select @totalCount=count(0) from HKSJ_Main


GO
/****** Object:  StoredProcedure [dbo].[p_GetPageRelationShip]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_GetPageRelationShip]
(
@pageIndex int,  --当前请求的页码
@pageSize int,    --一页的数量
@totalCount int output --输出多少条数据
)
as
--动态拼接SQL语句
declare @sql nvarchar(2000)
set @sql='select top '+CAST(@pageSize as nvarchar(16))+' * from HKSJ_Relationship where ID	not in
(
	select top '+CAST((@pageIndex-1)*@pageSize as nvarchar(20))+' ID  from HKSJ_Relationship order by ID
)
 order by ID';
 exec (@sql)
 select @totalCount=count(0) from HKSJ_Relationship
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageUSERS]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[p_GetPageUSERS]
(
@pageIndex int,  --当前请求的页码
@pageSize int,    --一页的数量
@totalCount int output --输出多少条数据
)
as
--动态拼接SQL语句
declare @sql nvarchar(2000)
set @sql='select top '+CAST(@pageSize as nvarchar(16))+' * from HKSJ_USERS where ID	not in
(
	select top '+CAST((@pageIndex-1)*@pageSize as nvarchar(20))+' ID  from HKSJ_USERS order by ID
)
 order by ID';
 exec (@sql)
 select @totalCount=count(0) from HKSJ_USERS
GO
/****** Object:  StoredProcedure [dbo].[Pro_GetPageProject]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Pro_GetPageProject]
@pageIndex int,
@pageSize int ,
@totalCount int out
as
select @totalCount=COUNT(1) from HKSJ_Main --一共有多少条数据赋值


select *  from (
	select h.*,ROW_NUMBER() over(order by id) as num from hksj_main as h
) as t
where t.num between (@pageIndex-1)*@pageSize and  @pageIndex*@pageSize--where后面是可以使用@参数


select @totalCount--代表什么：将 返回参数作为一个表返回了，为了在代码中获取返回参数的值的时候可以使用表的方式来获取此数据。

GO
/****** Object:  StoredProcedure [dbo].[UspOutputData]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE       PROCEDURE   [dbo].[UspOutputData]  
  @tablename   sysname  
  AS  
  declare   @column   varchar(1000)  
  declare   @columndata   varchar(1000)  
  declare   @sql   varchar(4000)  
  declare   @xtype   tinyint  
  declare   @name   sysname  
  declare   @objectId   int  
  declare   @objectname   sysname  
  declare   @ident   int  
   
  set   nocount   on  
  set   @objectId=object_id(@tablename)  
   
  if   @objectId   is   null   --   判斷對象是否存在    
  begin    
  print   'The   object   not   exists'    
  return    
  end    
  set     @objectname=object_name(@objectId)  
   
  if     @objectname   is   null   or   charindex(@objectname,@tablename)=0   --此判断不严密  
  begin  
  print   'object   not   in   current   database'  
  return  
  end  
   
  if   OBJECTPROPERTY(@objectId,'IsTable')   <>   1   --   判斷對象是否是table    
  begin    
  print   'The   object   is   not   table'    
  return    
  end    
   
  select   @ident=status&0x80     from   syscolumns   where   id=@objectid   and   status&0x80=0x80  
   
  if   @ident   is   not   null  
  print   'SET   IDENTITY_INSERT   '+@TableName+'   ON'  
   
  declare   syscolumns_cursor   cursor    
  for   select   c.name,c.xtype   from   syscolumns   c  
  where   c.id=@objectid  
  order   by   c.colid  
  open   syscolumns_cursor  
  set   @column=''  
  set   @columndata=''  
  fetch   next   from   syscolumns_cursor   into   @name,@xtype  
  while   @@fetch_status   <>-1  
  begin  
  if   @@fetch_status<>-2  
  begin  
  if   @xtype   not   in(189,34,35,99,98)   --timestamp不需处理，image,text,ntext,sql_variant   暂时不处理  
  begin  
  set   @column=@column+case   when   len(@column)=0   then''   else   ','end+@name  
  set   @columndata=@columndata+case   when   len(@columndata)=0   then   ''   else   ','','','end  
  +case   when   @xtype   in(167,175)   then   '''''''''+'+@name+'+'''''''''   --varchar,char  
  when   @xtype   in(231,239)   then   '''N''''''+'+@name+'+'''''''''   --nvarchar,nchar  
  when   @xtype=61   then   '''''''''+convert(char(23),'+@name+',121)+'''''''''   --datetime  
  when   @xtype=58   then   '''''''''+convert(char(16),'+@name+',120)+'''''''''   --smalldatetime  
  when   @xtype=36   then   '''''''''+convert(char(36),'+@name+')+'''''''''   --uniqueidentifier  
  else   @name   end  
  end  
  end      
  fetch   next   from   syscolumns_cursor   into   @name,@xtype  
  end  
  close   syscolumns_cursor  
  deallocate   syscolumns_cursor  
   
  set   @sql='set   nocount   on   select   ''insert   '+@tablename+'('+@column+')   values(''as   ''--'','+@columndata+','')''   from   '+@tablename  
   
  print   '--'+@sql  
  exec(@sql)  
   
  if   @ident   is   not   null  
  print   'SET   IDENTITY_INSERT   '+@TableName+'   OFF'  
   

GO
/****** Object:  Table [dbo].[HKSJ_Clients]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HKSJ_Clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NOT NULL,
	[softName] [varchar](150) NULL,
	[content] [text] NULL,
	[liaisonPhone] [varchar](22) NULL,
	[liaisonPeple] [varchar](30) NULL,
	[date] [datetime] NOT NULL,
	[peple] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HKSJ_Employees]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HKSJ_Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) NOT NULL,
	[content] [ntext] NOT NULL,
	[people] [varchar](30) NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [int] NOT NULL,
	[MainPeople] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HKSJ_First]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HKSJ_First](
	[Name] [varchar](30) NOT NULL,
	[Matter] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HKSJ_Main]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HKSJ_Main](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) NOT NULL,
	[content] [ntext] NOT NULL,
	[type] [char](8) NOT NULL,
	[Date] [datetime] NOT NULL,
	[people] [varchar](20) NOT NULL,
	[picUrl] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HKSJ_Relationship]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HKSJ_Relationship](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](50) NULL,
	[Zip] [varchar](20) NULL,
	[plane] [varchar](20) NULL,
	[Fax] [varchar](20) NULL,
	[QQ_MSN] [varchar](30) NULL,
	[Date] [datetime] NOT NULL,
	[people] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HKSJ_Services]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HKSJ_Services](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NULL,
	[Context] [text] NULL,
 CONSTRAINT [PK_HKSJ_Services] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HKSJ_USERS]    Script Date: 2012/11/16 10:01:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HKSJ_USERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[LoginName] [varchar](20) NOT NULL,
	[PassWord] [varchar](30) NOT NULL,
	[Plane] [varchar](14) NULL,
	[phone] [varchar](14) NULL,
	[Mail] [varchar](30) NULL,
	[cardNo] [varchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_LoginName] UNIQUE NONCLUSTERED 
(
	[LoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
