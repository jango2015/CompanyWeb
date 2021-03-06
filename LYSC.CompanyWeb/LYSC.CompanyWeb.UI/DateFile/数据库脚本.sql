
create database bjhksj
go
/****** Object:  StoredProcedure [dbo].[p_GetPageEmployees]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_GetPageEmployees]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_GetPageEmployees]
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageMain]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_GetPageMain]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_GetPageMain]
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageRelationShip]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_GetPageRelationShip]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_GetPageRelationShip]
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageUSERS]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_GetPageUSERS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_GetPageUSERS]
GO
/****** Object:  StoredProcedure [dbo].[Pro_GetPageProject]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pro_GetPageProject]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Pro_GetPageProject]
GO
/****** Object:  StoredProcedure [dbo].[UspOutputData]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UspOutputData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[UspOutputData]
GO
/****** Object:  Table [dbo].[HKSJ_Clients]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Clients]') AND type in (N'U'))
DROP TABLE [dbo].[HKSJ_Clients]
GO
/****** Object:  Table [dbo].[HKSJ_Employees]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Employees]') AND type in (N'U'))
DROP TABLE [dbo].[HKSJ_Employees]
GO
/****** Object:  Table [dbo].[HKSJ_First]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_First]') AND type in (N'U'))
DROP TABLE [dbo].[HKSJ_First]
GO
/****** Object:  Table [dbo].[HKSJ_Main]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Main]') AND type in (N'U'))
DROP TABLE [dbo].[HKSJ_Main]
GO
/****** Object:  Table [dbo].[HKSJ_Relationship]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Relationship]') AND type in (N'U'))
DROP TABLE [dbo].[HKSJ_Relationship]
GO
/****** Object:  Table [dbo].[HKSJ_Services]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Services]') AND type in (N'U'))
DROP TABLE [dbo].[HKSJ_Services]
GO
/****** Object:  Table [dbo].[HKSJ_USERS]    Script Date: 11/14/2012 08:52:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_USERS]') AND type in (N'U'))
DROP TABLE [dbo].[HKSJ_USERS]
GO
/****** Object:  Table [dbo].[HKSJ_USERS]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_USERS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HKSJ_USERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[LoginName] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[PassWord] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Plane] [varchar](14) COLLATE Chinese_PRC_CI_AS NULL,
	[phone] [varchar](14) COLLATE Chinese_PRC_CI_AS NULL,
	[Mail] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[cardNo] [varchar](18) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HKSJ_USERS__00551192] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ_LoginName] UNIQUE NONCLUSTERED 
(
	[LoginName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[HKSJ_USERS] ON
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (95, N'lxx', N'lxx', N'lxx', N'223', N'5454', N'232@qq.com', N'34343')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (96, N'hyl', N'hyl', N'hyl', N'11111111111111', N'11111', N'111111111@qq.com', N'111111111111')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (102, N'hylhyl', N'343', N'hylhyl', N'123456', N'123456', N'123456@qq.com', N'123456')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (156, N'王卯东', N'王卯东', N'123', N'343', N'343', N'934@qq.com', N'34343333333')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (165, N'54', N'4545', N'343', N'343', N'34', N'343@qq.com', N'343')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (166, N'4544', N'5665', N'76', N'343', N'454', N'', N'343')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (170, N'67698', N'89', N'898', N'898', N'45', NULL, NULL)
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (173, N'hyx', N'hyx', N'hyx', N'232', N'23232', N'343@qq.com', N'ASDSA')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (174, N'3343', N'eredf', N'342', N'342', N'22', N'343@qq.com', N'2432')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (177, N'23', N'232232', N'23', N'232', N'232', N'232', N'2322')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (179, N'mike', N'mike', N'123', N'111222', N'123443', N'sdfhjs@163.com', N'93287')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (180, N'mike', N'michael', N'111', N'111222', N'123443', N'sdfhjs@163.com', N'93287')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (183, N'王卯东', N'ARMdong', N'123', N'05518902112', N'15156068249', N'armdong@163.com', N'1112222')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (184, N'343433', N'34', N'343', N'343', N'343', N'343@qq.com', N'343')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (186, N'2343', N'434334343', N'3434343', N'343343', N'3434', N'4343@qq.bvf', N'434343')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (187, N' 5454', N'4545454', N'54', N'5454', N'5454', N'5454', N'545454')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (188, N' 3443343', N' 4343343', N' 343343', N' 343', N' 343', N' 4343434', N' 3434343')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (203, N'232', N'erwre', N'232', N'232', N'232', N'343@qq.com', N'232')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (204, N'223232', N'2323232', N'32323', N'23232', N'32323', N'23232', N'323232')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (208, N'1', N'1', N'1', N'1', N'18643071392', N'11', N'111')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (210, N'343433', N'45454', N'45454', N'5454', N'45454', N'45454', N'5455')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (214, N'111', N'1111', N'', N'111', N'18643071392', N'11', N'222')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (216, N'11', N'11132', N'', N'232', N'232', N'111', N'232')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (220, N'11', N'111', N'111', N'', N'', N'', N'')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (221, N'343', N'3434343', N'343434', N'3434', N'34343', N'343@qq.com', N'242')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (222, N'232', N'3232', N'3232', N'3232', N'3232', N'323232@qq.com', N'23232')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (223, N'2543535', N'5353533', N'5345464', N'6646', N'464646', N'4664@qq.ghg', N'gfgf')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (224, N'色夫人￥#*￥', N'12#4の', N'请12', N'为为', N'轻微 ', N'lhl@q2we.com', N'112')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (226, N'hyl', N'33', N'33', N'', N'', N'', N'')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (227, N'sdsds', N'safsf', N'sdssds', N'34343', N'3434', N'9343@qq.com', NULL)
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (228, N'sdsds', N'ssdsafsf', N'sdssds', N'34343', N'3434', N'9343@qq.com', NULL)
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (229, N'wewew', N'erere', N'erereere', N'', N'', N'', N'')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (230, N'wewew', N'wewrwerwe', N'werwerwerw', N'', N'', N'wew', N'')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (232, N'水电费', N'双方都', N'水电费', N'说的', N'省市', N'水电费@sdf.com', N'肯定')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (234, N'qqqqq', N'三千二百三十四', N'34344', N'11111111111111', N'11111111111111', N'是打发斯蒂芬@2q.com', N'婉多任务人')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (238, N'说的', N'撒旦 ', N'撒旦 ', N'撒旦', N'是第三代', N'爱上@23.com', N'为玩儿')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (241, N'去委屈委屈', N'轻微', N'轻微', N'轻微', N'轻微', N'轻微@为.com', N'111111111111111111')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (243, N'轻武器', N'为', N'王企鹅', N'轻微', N'轻微', N'轻微@123.com', N'111111111111111111')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (246, N'王志波', N'我叫铁蛋', N'123', N'123', N'123', N'123@333.com', N'323')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (247, N'343433', N'3434', N'34343', N'', N'', N'', N'')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (249, N'3434343', N'hyl1', N'343434', N'3434343', N'34343', N'4343434@qq.com', N'34343')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (250, N'343433', N'w4343543543', N'35353', N'353535435', N'35353', N'53535@qq.com', N'3535435334')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (251, N'343433', N'42', N'wrwe', N'wer', N'wrw', N'', N'wrw')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (252, N'wrw', N'wrwe', N'wrwerwe', N'werw', N'werw', N'343@qq.com', N'wrwe')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (254, N'lxx', N'hyllxx', N'110', N'343', N'343', N'34@qq.com', N'110')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (255, N'lxx', N'hy1llxx', N'110', N'343', N'343', N'34@qq.com', N'110')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (256, N'lxx', N'h2y1llxx', N'110', N'343', N'343', N'34@qq.com', N'110')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (257, N'34343334', N'34343', N'343', N'343', N'433', N'343@qq.com', N'343')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (260, N'34333334343', N'34334343', N'3434', N'3563', N'343', N'34343', N'343')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (264, N'王卯东', N'ARM', N'WangMaodong', N'13156062812', N'15538773321', N'1233@sdf.cn', N'a')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (269, N'1', N'123', N'1', N'1', N'123', N'214@12.c', N'234242')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (273, N'按时吃饭地方', N'受到处罚法第三次 ', N'士大夫成大事', N'士大夫是的', N'是的范德萨', N'是的飞@sad.cd', N'20.00')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (274, N'是的vf', N'vsdf', N'的风格v大个', N'的风格v', N'的vgff', N'sdgbfd@fdg.cb', N'13235.00')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (276, N'这倒是的效果不能', N'大大大', N'事实上', N'胜多负少', N'是的非官方', N'是大法官@dg.fxd', N'123456765432')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (278, N'wewwew', N'ewwe', N'wewew', N'时代方式', N'fds', N'sfs@qq.cpom', N'wrwxcvfdxv')
INSERT [dbo].[HKSJ_USERS] ([ID], [UserName], [LoginName], [PassWord], [Plane], [phone], [Mail], [cardNo]) VALUES (279, N'社会生活但是', N'社会生活但是', N'上海时代方式', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[HKSJ_USERS] OFF
/****** Object:  Table [dbo].[HKSJ_Services]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Services]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HKSJ_Services](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[Context] [text] COLLATE Chinese_PRC_CI_AS NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[HKSJ_Services] ON
INSERT [dbo].[HKSJ_Services] ([ID], [Name], [Context]) VALUES (1, N'第九组', N'<p>
	&nbsp;&nbsp;&nbsp;&nbsp;北京华科世佳软件开发有限公司地处国家计算机应用软件研发腹地——北京市海淀区上地信息产业基地，具有明显的人才优势、技术优势和环境优势。我公司在2004年12月通过了北京市科委的软件企业认证和北京市软件行业协会软件产品的认定。
</p>
<p>
	&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; 毛主席万岁！<img src="http://192.168.1.250:8099/admin/kindeditor-4.1.3/plugins/emoticons/images/20.gif" border="0" alt="" />
</p>')
INSERT [dbo].[HKSJ_Services] ([ID], [Name], [Context]) VALUES (2, N'第九组', N'<p>
	北京华科世佳软件开发有限公司地处国家计算机应用软件研发腹地——北京市
海淀区上地信息产业基地，具有明显的人才优势、技术优势和环境优势。我公司在2004年12月通过了
北京市科委的软件企业认证和北京市软件行业协会软件产品的认定。
</p>
<p>
	北京华科世佳软件开发有限公司自成立以来，一直致力于房地产业管理类软件的研发，公司始终以为客户创造一
流产品为目标，锻造品质、精益求精、力臻完美。从产品的研发到售后服务，
</p>
<p>
	我们始终站在用户的角度去考虑问题，逐步形成了华科软件“简洁易用”的鲜明特点，深受广大用户的欢迎。
</p>
<p>
	我公司与房地产事业有着深厚的情结，公司内的数位专家均有多年从事房地产权属管理、金融管理、
房地产测绘的实际工作经验，对房管工作的要求、流程十分熟悉，为公司产品的适用性、易用性、及功能的全面性提供了保障。
</p>')
SET IDENTITY_INSERT [dbo].[HKSJ_Services] OFF
/****** Object:  Table [dbo].[HKSJ_Relationship]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Relationship]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HKSJ_Relationship](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[Zip] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[plane] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[Fax] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[QQ_MSN] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[Date] [datetime] NOT NULL,
	[people] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__HKSJ_Relationshi__7E6CC920] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[HKSJ_Relationship] ON
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (7, N'华科世家软件开发有限公司', N'010001', N'010888888', N'010666666', N'149008596', CAST(0x00008ECC00000000 AS DateTime), N'xx')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (8, N'拉维克软件为了看人家', N'23423', N'23423423', N'23423', N'149008596', CAST(0x00009DC6005D7050 AS DateTime), N'xx')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (10, N'联想总部', N'010008', N'250250250', N'1', N'222iu', CAST(0x00009DC7009BBC5C AS DateTime), N'xx')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (11, N'baidu', N'20015', N'023136654', N'321354', N'321321', CAST(0x00009DC700A87ADC AS DateTime), N'韩迎龙')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (19, N'hyl', N'11111111111', N'11111111111', N'11111111111', N'111111111111', CAST(0x0000806800000000 AS DateTime), N'责任')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (20, N'222', N'222', N'222', N'222', N'222', CAST(0x0000806800000000 AS DateTime), N'222')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (21, N'343', N'34343', N'434', N'343', N'吊死扶伤', CAST(0x0000806800C5C100 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (22, N'343', N'34343', N'434', N'343', N'343', CAST(0x0000806800000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (23, N'343', N'34343', N'434', N'343', N'343', CAST(0x0000806800000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (25, N'343', N'34343', N'434', N'3', N'343', CAST(0x0000806800C5C100 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (26, N'343', N'34343', N'434', N'343', N'343', CAST(0x0000806800000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (27, N'343', N'34343', N'434', N'343', N'343', CAST(0x0000806800000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (28, N'343', N'34343', N'434', N'343', N'343', CAST(0x0000806800000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (29, N'343', N'34343', N'434', N'343', N'343', CAST(0x0000806800000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (30, N'343', N'34343', N'434', N'343', N'343', CAST(0x0000806800000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (31, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (32, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (33, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (34, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (35, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (36, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (37, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (39, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (40, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (41, N'ww', N'三万多', N'却往往', N'wew', N'wew', CAST(0x0000806800C5C100 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (42, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (43, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (45, N'ww', N'ew', N'ewew', N'wew', N'wew', CAST(0x0000806800000000 AS DateTime), N'wew')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (46, N'223', N'232', N'232', N'232', N'232', CAST(0x0000806800000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (54, N'23232', N'34343', N'4343', N'434', N'34343', CAST(0x0000A10F00000000 AS DateTime), N'434343')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (55, N'23232', N'34343', N'4343', N'434', N'34343', CAST(0x0000A10F00000000 AS DateTime), N'434343')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (56, N'撒旦', N'撒旦', N'爱上说的 ', N'阿什顿', N'撒旦', CAST(0x0000A10700000000 AS DateTime), N'说的 ')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (57, N'212', N'123', N'123', N'123', N'123', CAST(0x0000A0F800000000 AS DateTime), N'123')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (61, N'啊沃尔沃轻微为二万人玩儿玩儿玩儿', N'的水电费', N'水电费水电费', N'撒旦水电费', N'地方撒旦', CAST(0x0000A10600000000 AS DateTime), N'旦是')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (62, N'我叫王志波', N'323', N'443', N'45345', N'4344343', CAST(0x0000A10600000000 AS DateTime), N'铁蛋')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (63, N'陇原商城', N'223232', N'1111232', N'2323232', N'4343434343', CAST(0x0000A10800000000 AS DateTime), N'hyl')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (64, N'4343', N'343', N'3433', N'34', N'3434', CAST(0x0000A10200000000 AS DateTime), N'3434343')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (65, N'4343', N'343', N'3433', N'34', N'3434', CAST(0x0000A10200000000 AS DateTime), N'3434343')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (66, N'3', N'353', N'353', N'353', N'353', CAST(0x00009F8D00000000 AS DateTime), N'453')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (67, N'3453', N'3453', N'353', N'3543', N'353', CAST(0x0000A0F900000000 AS DateTime), N'3453')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (68, N'3453', N'3453', N'353', N'3543', N'353', CAST(0x0000A0F900000000 AS DateTime), N'3453')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (69, N'545', N'4545', N'4545', N'454', N'5454', CAST(0x0000A10A00000000 AS DateTime), N'4545')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (70, N'454', N'454', N'454', N'454', N'454', CAST(0x0000A10100000000 AS DateTime), N'45454')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (71, N'454', N'454', N'454', N'454', N'454', CAST(0x0000A10100000000 AS DateTime), N'45454')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (72, N'43', N'434', N'34343', N'343', N'4343', CAST(0x0000A10100000000 AS DateTime), N'34343')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (73, N'34534', N'353', N'3453', N'34534', N'345', CAST(0x0000A10200000000 AS DateTime), N'5354353')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (74, N'34534', N'353', N'3453', N'34534', N'345', CAST(0x0000A10200000000 AS DateTime), N'5354353')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (75, N'343', N'343', N'43', N'443', N'4343', CAST(0x0000A10900000000 AS DateTime), N'34343')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (76, N'2423', N'24', N'224', N'223', N'4224', CAST(0x0000A10900000000 AS DateTime), N'42234')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (77, N'2423', N'24', N'224', N'223', N'4224', CAST(0x0000A10900000000 AS DateTime), N'42234')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (78, N'3242', N'242', N'2342', N'242', N'242', CAST(0x0000A10900000000 AS DateTime), N'242')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (79, N'3242', N'242', N'2342', N'242', N'242', CAST(0x0000A10900000000 AS DateTime), N'242')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (80, N'3242', N'242', N'2342', N'242', N'242', CAST(0x0000A10900000000 AS DateTime), N'242')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (81, N'3452', N'234', N'24', N'32423', N'42423', CAST(0x0000A0E500000000 AS DateTime), N'2423')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (82, N'232', N'234', N'22', N'34223', N'23', CAST(0x0000A0DD00000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (83, N'232', N'234', N'22', N'34223', N'23', CAST(0x0000A0DD00000000 AS DateTime), N'232')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (84, N'23342', N'3453', N'345', N'334', N'3543', CAST(0x0000A10100000000 AS DateTime), N'3543')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (85, N'4353', N'3453', N'4353', N'34543', N'353', CAST(0x0000A0E500000000 AS DateTime), N'453')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (86, N'4353', N'3453', N'4353', N'34543', N'353', CAST(0x0000A0E500000000 AS DateTime), N'453')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (87, N'232', N'232', N'323', N'2323', N'2344', CAST(0x0000A0FC00000000 AS DateTime), N'343')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (88, N'343', N'343', N'343', N'34', N'334', CAST(0x0000A10200000000 AS DateTime), N'343')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (89, N'343', N'343', N'343', N'34', N'33', CAST(0x0000A0E500000000 AS DateTime), N'343')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (90, N'哈哈哈', N'飞11', N'123', N'123', N' 23132', CAST(0x0000A10900000000 AS DateTime), N'342')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (91, N'123', N'123', N'123', N'13', N'123', CAST(0x0000A10900000000 AS DateTime), N'23')
INSERT [dbo].[HKSJ_Relationship] ([ID], [Address], [Zip], [plane], [Fax], [QQ_MSN], [Date], [people]) VALUES (95, N'哈哈和多哈', N'侮辱我去', N'WRQdf', N'erwre', N'rwrew', CAST(0x0000A10900C5C100 AS DateTime), N'ere')
SET IDENTITY_INSERT [dbo].[HKSJ_Relationship] OFF
/****** Object:  Table [dbo].[HKSJ_Main]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Main]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HKSJ_Main](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NOT NULL,
	[type] [char](8) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Date] [datetime] NOT NULL,
	[people] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[picUrl] [varchar](250) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HKSJ_Main__7C8480AE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[HKSJ_Main] ON
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (22, N'华科资金监管系统', N'<div>
	<h3>
		<span id="lbTitle">华科资金监管系统
		<h3>
			<span id="lbTitle">华科资金监管系统
			<h3>
				<span id="lbTitle">华科资金监管系统
				<h3>
					<span id="lbTitle">华科资金监管系统
					<h3>
						<span id="lbTitle">华科资金监管系统
						<h3>
							<span id="lbTitle">华科资金监管系统</span>
						</h3>
						<p>
							<span>
							<h3>
								<span id="lbTitle">华科资金监管系统
								<h3>
									<span id="lbTitle">华科资金监管系统
									<h3>
										<span id="lbTitle">华科资金监管系统
										<h3>
											<span id="lbTitle">华科资金监管系统
											<h3>
												<span id="lbTitle">华科资金监管系统
												<h3>
													<span id="lbTitle">华科资金监管系统</span>
												</h3>
</span>
											</h3>
</span>
										</h3>
</span>
									</h3>
</span>
								</h3>
</span>
							</h3>
<br />
</span>
						</p>
</span>
					</h3>
</span>
				</h3>
</span>
			</h3>
</span>
		</h3>
</span>
	</h3>
</div>', N'1       ', CAST(0x0000A0FF00A66DDC AS DateTime), N'hyl', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (29, N'新闻动态', N'34334343', N'1       ', CAST(0x0000A0FF0090B691 AS DateTime), N'hyl', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (30, N'公司新闻', N'33443rttretgretetre<img src="http://localhost:21071/admin/kindeditor-4.1.3/plugins/emoticons/images/0.gif" border="0" alt="" />', N'1       ', CAST(0x0000A0FE00A47BD0 AS DateTime), N'hyl', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (31, N'企业资质', N'<div>这是编辑企业资质的地方</div>
<div> </div>
<div><img alt="" src="/HksjWeb/Admin/fckeditor/editor/images/smiley/msn/sad_smile.gif" /></div>
<div> </div>', N'1       ', CAST(0x0000A0FF00A67610 AS DateTime), N'hyl', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (35, N'公司企业文化', N'<div>北京华科世佳软件开发有限公司自成立以来，一直致力于房地产业管理类软件的研发，公司始终以为客户创造一流产品为目标，锻造品质、精益求精、力臻完美。从产品的研发到售后服务</div>
<div>sdf地方</div>
<div>df</div>
<div>第三方</div>
<div>dsf                                                                                                                                                士大夫<img height="111" width="111" align="right" alt="" src="/HksjWeb/UploadFiles/image/btn_return.jpg" /></div>
<div>，我们始终站在用户的角度去考虑问题，逐步形成了华科软件“简洁易用”的鲜<img alt="" src="/HksjWeb/Admin/fckeditor/editor/images/smiley/msn/sad_smile.gif" />明特点，深受广大用户的欢迎。jhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh<br />
为把握快速发展的全国市场，北京华科软件诚邀您的加盟。</div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div> </div>
<div>tyrftrt</div>
<div>rtrtt</div>', N'1       ', CAST(0x0000A0FF00A67D4F AS DateTime), N'hyl', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (38, N'你好吗', N'<div>理解的老师家收到了ghhjghjgjgjh5665565665</div>', N'1       ', CAST(0x0000A0FE0164E824 AS DateTime), N'hyl', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (39, N'华科中标北京房管局资金监管项目', N'<div>老师家地方牢牢地飞龙觉得是浪费</div>', N'1       ', CAST(0x0000A0FF00D1578D AS DateTime), N'hyl', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (42, N'测试添加和删除都', N'<div>
	死了的警方了解的是发来的负了伤收到发了就是的浪费实例放假垃圾分到了的撒谎佛啊和igoqhlkadsh啦来的撒浪费
</div>
<div>
	&nbsp;
</div>
<p>
	再测试 一边修改
</p>
<p>
	gfdsgg
</p>
<p>
	<br />
</p>
<p>
	sfdfsafsfdsadfsgfdsgdsg
</p>', N'1       ', CAST(0x0000A11700000000 AS DateTime), N'hyl', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (43, N'公司即将开通中国房地产综合服务网----敬请期待', N'<div>理解垃圾地方</div>
<div>再次修改一下1</div>
<div>修改一下2</div>
<div>再修改一下3。这次保证每问题了啊。。。。</div>', N'1       ', CAST(0x00009DC900A8E6AC AS DateTime), N'录歌', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (47, N'测试分页4', N'<div>测试分页</div>', N'1       ', CAST(0x00009DC900AA337C AS DateTime), N'测试分页4', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (49, N'测试分页7', N'<div>测试分页</div>', N'1       ', CAST(0x00009DC900AA3F34 AS DateTime), N'测试分页6', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (50, N'测试分页11', N'<div>测试分页11测试分页11测试分页11</div>', N'1       ', CAST(0x0000A0FE016A2B5D AS DateTime), N'hyl', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (51, N'测试分页12', N'<div>测试分页11测试分页11测试分页11</div>', N'00000102', CAST(0x00009DC900AA7648 AS DateTime), N'马路', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (53, N'测试分页14', N'<div>测试分页11测试分页11测试分页11</div>', N'1       ', CAST(0x00009DC900AA7FA8 AS DateTime), N'马路', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (54, N'测试分页15', N'<div>测试分页11测试分页11测试分页11</div>', N'1       ', CAST(0x00009DC900AA8458 AS DateTime), N'马路', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (55, N'测试分页16', N'<div>测试分页11测试分页11测试分页11</div>', N'1       ', CAST(0x00009DC900AA8908 AS DateTime), N'马路', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (56, N'测试分页17', N'<div>
	测试分页11测试分页11测试分页11
</div>', N'00000102', CAST(0x00009DBC00000000 AS DateTime), N'马路', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (57, N'测试分页18', N'<div>
	我去去哦无
</div>', N'学校    ', CAST(0x00009DDF00C5C100 AS DateTime), N'马路消息', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (58, N'测试分页19', N'<div>测试分页11测试分页11测试分页11</div>', N'1       ', CAST(0x00009DC900AA9BC8 AS DateTime), N'马路', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (59, N'测试分页111', N'<div>测试分页11测试分页11测试分页11</div>', N'1       ', CAST(0x00009DC900AAA2D0 AS DateTime), N'马路', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (60, N'测试分页112', N'<div>测试分页11测试分页11测试分页11</div>', N'1       ', CAST(0x00009DC900AAA8AC AS DateTime), N'马路', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (61, N'测试分页123', N'<div>测试分页11测试分页11测试分页11</div>', N'1       ', CAST(0x00009DC900AAB20C AS DateTime), N'马路', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (68, N'华科统计发布系统', N'<div>
<h3 style="font-style: normal; font-size: 16px; font-weight: bold"><span id="lbTitle">华科统计发布系统
<h3 style="font-style: normal; font-size: 16px; font-weight: bold"><span id="lbTitle">华科统计发布系统</span></h3>
</span></h3>
</div>', N'1       ', CAST(0x00009DDB0113CFD0 AS DateTime), N'ww', N'../images/img_prd_Statistics.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (72, N'华科一手房网上备案系统', N'<div>
<h3 style="text-align: right"><big><span style="font-size: medium"><span id="lbTitle">华科一手房网上备案系统 </span></span></big></h3>
<h3><span style="font-size: medium"><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
</span></span><span style="font-size: medium"><span id="lbTitle">
<h3 style="text-align: right"><big><span id="lbTitle">华科一手房网上备案<img alt="" src="/HksjWeb/Admin/fckeditor/editor/images/smiley/msn/teeth_smile.gif" />系统 </span></big></h3>
</span></span><span style="font-size: x-small"><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
<h3>&nbsp;</h3>
</span></span><span style="font-size: medium"><span id="lbTitle">
<h3>&nbsp;</h3>
</span></span><big><span id="lbTitle">
<h3>&nbsp;</h3>
</span></big><span id="lbTitle">
<h3><span style="font-size: medium"><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
</span></span><span style="font-size: medium"><span id="lbTitle">
<h3 style="text-align: right"><big><span id="lbTitle">华科一手房网上备案系统 </span></big></h3>
</span></span><span style="font-size: x-small"><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
<h3>&nbsp;</h3>
</span></span><span style="font-size: medium"><span id="lbTitle">
<h3>&nbsp;</h3>
</span></span><big><span id="lbTitle">
<h3>&nbsp;</h3>
</span></big><span id="lbTitle">
<h3><span style="font-size: medium"><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
</span></span><span style="font-size: medium"><span id="lbTitle">
<h3 style="text-align: right"><big><span id="lbTitle">华科一手房网上备案系统 </span></big></h3>
</span></span><span style="font-size: x-small"><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
<h3>&nbsp;</h3>
</span></span><span style="font-size: medium"><span id="lbTitle">
<h3>&nbsp;</h3>
</span></span><big><span id="lbTitle">
<h3>&nbsp;</h3>
</span></big><span id="lbTitle">
<h3><span style="font-size: medium"><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
</span></span><span style="font-size: medium"><span id="lbTitle">
<h3 style="text-align: right"><big><span id="lbTitle">华科一手房网上备案</span></big></h3>
</span></span><span style="font-size: x-small"><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
</span></span><big><span style="font-size: x-small"><span id="lbTitle">
<h3 style="text-align: right"><span style="font-size: medium"><span id="lbTitle">系</span></span></h3>
</span></span></big><span style="font-size: medium"><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
</span></span><big><span id="lbTitle">
<h3 style="text-align: right">&nbsp;</h3>
</span></big><span id="lbTitle">
<h3 style="text-align: right"><span id="lbTitle">统</span></h3>
</span></h3>
</span></h3>
</span></h3>
</span></h3>
</div>', N'1       ', CAST(0x00009DDB01251C54 AS DateTime), N'wsas', N'../images/img_prd_NewHouse.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (73, N'华科从业主题管理系统', N'<div>
<h3 style="font-style: normal; font-size: 16px; font-weight: bold"><span id="lbTitle">华科从业主题管理系统</span></h3>
<div><span>华科从业主题管理系统华科从业主题管理系统华科从业主题管理系统</span></div>
<div><span>华科从业主题管理系统</span></div>
<div><span>华科从业主题管理系统v华科从业主题管理系统华科从业主题管理系统华科从业主题管理系统</span></div>
</div>', N'1       ', CAST(0x00009DDC00A1BB84 AS DateTime), N'eee', N'../images/img_prd_Practitioners.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (74, N'华科住房保障管理系统', N'<div>
<h3 style="font-style: normal; font-size: 16px; font-weight: bold"><span id="lbTitle">华科住房保障管理系统</span></h3>
<div><span>
<h3 style="font-style: normal; font-size: 16px; font-weight: bold"><span id="lbTitle">华科住房保障管理系统
<h3 style="font-style: normal; font-size: 16px; font-weight: bold"><span id="lbTitle">华科住房保障管理系统
<h3 style="font-style: normal; font-size: 16px; font-weight: bold"><span id="lbTitle">华科住房保障管理系统
<h3 style="font-style: normal; font-size: 16px; font-weight: bold"><span id="lbTitle">华科住房保障管理系统
<h3 style="font-style: normal; font-size: 16px; font-weight: bold"><span id="lbTitle">华科住房保障管理系统</span></h3>
</span></h3>
</span></h3>
</span></h3>
</span></h3>
</span></div>
</div>', N'1       ', CAST(0x00009DDC00A1CE44 AS DateTime), N'ee', N'../images/img_prd_HousingSecurity.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (83, N'华科房地产项目管理系统', N'<div>
<h3><span id="lbTitle">华科房地产项目管理系统 </span></h3>
<h3><span id="lbTitle">华科房地产项<img src="/HksjWeb/Admin/fckeditor/editor/images/smiley/msn/confused_smile.gif" alt="" />目管理系统 </span></h3>
<h3><span id="lbTitle">华科房地产项目管理系统 </span></h3>
<h3><span id="lbTitle">华科房地产项目管理系统sdnfljsldfjlsdjflsdjfllsdflnnnnnnnnnnnnnnnnnnnnbbbbscc-----===-=-=-====-===0-1111111111111111122222</span></h3>
<div><span>sdfdsfffffffffffffffffffffffffffffffffffffffff===============================-------------</span></div>
</div>', N'1       ', CAST(0x00009DDC00C65CDC AS DateTime), N'dsf', N'../images/img_prd_ProjectManagement.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (86, N'华科维修基金管理系统', N'华科世家维修基金管理系统', N'1       ', CAST(0x00009DDC00E20C5C AS DateTime), N'767yy', N'../images/img_prd_MaintenanceFunds.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (93, N'公司介绍', N'<div>
<div class="cont">
<p>北京华科世佳软件开发有限公司地处国家计算机应用软件研发腹地&mdash;&mdash;北京市海淀区上地信息产业基地，具有明显的人才优势、技术优势和环境优势。我公司在2004年12月通过了北京市科委的软件企业认证和北京市软件行业协会软件产品的认定。</p>
<p>北京华科世佳软件开发有限公司自成立以来，一直致力于房地产业管理类软件的研发，公司始终以为客户创造一流产品为目标，锻造品质、精益求精、力臻完美。从产品的研发到售后服务，</p>
<p>我们始终站在用户的角度去考虑问题，逐步形成了华科软件&ldquo;简洁易用&rdquo;的鲜明特点，深受广大用户的欢迎。</p>
<p>我公司与房地产事业有着深厚的情结，公司内的数位专家均有多年从事房地产权属管理、金融管理、房地产测绘的实际工作经验，对房管工作的要求、流程十分熟悉，为公司产品的适用性、易用性、及功能的全面性提供了保障。</p>
</div>
</div>', N'1       ', CAST(0x00009DDD00C51840 AS DateTime), N'马伦', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (94, N'客户服务', N'<div>
<div class="cont">
<p>北京华科世佳软件开发有限公司地处国家计算机应用软件研发腹地&mdash;&mdash;北京市海淀区上地信息产业基地，具有明显的人才优势、技术优势和环境优势。我公司在2004年12月通过了北京市科委的软件企业认证和北京市软件行业协会软件产品的认定。</p>
<p>北京华科世佳软件开发有限公司自成立以来，一直致力于房地产业管理类软件的研发，公司始终以为客户创造一流产品为目标，锻造品质、精益求精、力臻完美。从产品的研发到售后服务，</p>
<p>我们始终站在用户的角度去考虑问题，逐步形成了华科软件&ldquo;简洁易用&rdquo;的鲜明特点，深受广大用户的欢迎。</p>
<p>我公司与房地产事业有着深厚的情结，公司内的数位专家均有多年从事房地产权属管理、金融管理、房地产测绘的实际工作经验，对房管工作的要求、流程十分熟悉，为公司产品的适用性、易用性、及功能的全面性提供了保障。</p>
</div>
</div>', N'1       ', CAST(0x00009DDD00F2F094 AS DateTime), N'马伦', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (95, N'华科测绘管理系统', N'<p>随着房产市场的不断发展,房产测绘工作日益成为房产管理中的重要环节。目前一般的工作流程是由房产测绘工作人员现场测量后,进行手工计算整理,形成测绘成果,这种方式存在花费时间长,工作人员工作量大,计算结果容易出错、计算结果需要详细校验、成果资料不规范等等诸多不便,满足不了当前房测面积量大、时限短、要求高的需求。因此,为减轻测绘计算人员的工作负荷,提高工作效率、办事效率,实现房产测绘信息共享,进一步适应房地产业发展和房地产产权管理的需要,有必要研制一套房产测绘管理信息系统。 论文在对房产测绘及其软件开发现状进行充分调研的基础上,通过对房产测绘自身特性的剖析,以及对实现房产测绘网络化管理的技术性和经济性两方面的可行性研究,提出了实现房产测绘管理信息系统的系统解决方案。论文对系统的实现提出了具体的方案,并已完成了所有功能的软件编程和实验室调试。 华科测试管理系统主要解决了以下几个问题: ①通过认真深入地分析房产测绘网络化管理的需求及其具体内涵,再结合对现代网络系统的体系结构发展趋势的研究,提出了实现房产测绘管理信息系统的指导思想、设计原则,并确定了房产测绘单位实施房产测绘网络综合管理的具体功能。 ②结合房产测绘管理信息系统的功能和计算机应用的现状和发展,华科测绘管理系统对房产测绘管理信息系统业务数据流程和物理结构做出了分析研究,通过对多方案的比较,提出了系统的逻辑结构,进而确定了系统的硬件结构网络设计和软件设计的方案。</p>', N'1       ', CAST(0x00009DDD00F5F988 AS DateTime), N'ml', N'../images/img_prd_Mapping.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (104, N'23232', N'韩迎龙', N'1       ', CAST(0x0000A0FA00D18D52 AS DateTime), N'2323232', N'李潇絮_李凯利108.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (105, N'343', N'45454', N'1       ', CAST(0x0000A0FA00F20962 AS DateTime), N'54454', NULL)
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (106, N'韩迎龙', N'李潇絮', N'1       ', CAST(0x0000A0FF00D33C4A AS DateTime), N'hyl', N'projectimages/00000000-0000-0000-0000-000000000000静宁,我的家乡.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (112, N'4545454', N'4545454545454545', N'1       ', CAST(0x0000A0FE01451D97 AS DateTime), N'hyl', N'projectimages/6cdfc300-eefc-4a56-8c60-f22991ac359d值得怀念的日子003.JPG')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (113, N'34343', N'3434343343', N'1       ', CAST(0x0000A0FE0145FFC3 AS DateTime), N'hyl', N'projectimages/63eb7e13-a923-4149-b1df-2c0cabc5c7bd值得怀念的日子003.JPG')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (114, N'343434343', N'34343343', N'1       ', CAST(0x0000A0FE016AA97C AS DateTime), N'hyl', N'projectimages/00000000-0000-0000-0000-000000000000李潇絮_李凯利111.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (115, N'李潇絮', N'你行啊偶像', N'1       ', CAST(0x0000A0FE01541814 AS DateTime), N'hyl', N'projectimages/594cae3f-8b68-41b7-94f2-a26a2f593d6e李潇絮_李凯利108.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (116, N'韩迎龙', N'李潇絮韩迎龙', N'1       ', CAST(0x0000A0FF0090F1DD AS DateTime), N'hyl', N'projectimages/54349b3d-5dc5-436e-811c-d4f17805e33c李潇絮_李凯利118.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (117, N'2323232', N'343434343', N'1       ', CAST(0x0000A0FF00A561D3 AS DateTime), N'hyl', N'projectimages/b074c335-69f3-47a1-9521-f8a8d0ed726c李潇絮_李凯利107.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (118, N'343而谈了分哥特人', N'额武广铁路文哥特供特日哥', N'1       ', CAST(0x0000A0FF00A57302 AS DateTime), N'hyl', N'projectimages/a5bda735-2245-4b1a-bf6b-62812160e0a6李潇絮_李凯利104.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (119, N'11', N'', N'1       ', CAST(0x0000A10100000000 AS DateTime), N'11', N'undefined')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (120, N'', N'', N'1       ', CAST(0x0000A10100000000 AS DateTime), N'', N'undefined')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (121, N'', N'', N'1       ', CAST(0x0000A10100000000 AS DateTime), N'', N'undefined')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (122, N'111', N'', N'1       ', CAST(0x0000A10800000000 AS DateTime), N'11', N'undefined')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (123, N'232', N'', N'1       ', CAST(0x0000A10100000000 AS DateTime), N'222', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (124, N'99999', N'', N'1       ', CAST(0x0000A10200000000 AS DateTime), N'99999', N'C:\fakepath\李潇絮_李凯利107.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (125, N'11', N'', N'1       ', CAST(0x0000A10100000000 AS DateTime), N'11', N'C:\fakepath\李潇絮_李凯利106.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (126, N'222', N'', N'1       ', CAST(0x0000A11100000000 AS DateTime), N'222', N'C:\fakepath\李潇絮_李凯利107.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (127, N'222', N'', N'1       ', CAST(0x0000A11100000000 AS DateTime), N'222', N'C:\fakepath\李潇絮_李凯利107.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (128, N'1232132', N'', N'1       ', CAST(0x0000A10100000000 AS DateTime), N'123213', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (130, N'KKKK', N'<strong><em><span style="color:#E53333;">韩迎龙我爱你啊</span></em></strong><strong><em><span style="color:#E53333;"></span></em></strong><strong><em><span style="color:#E53333;">', N'1       ', CAST(0x0000A10800000000 AS DateTime), N'hyl', N'C:\fakepath\.net.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (131, N'KKKK', N'<strong><em><span style="color:#E53333;">韩迎龙我爱你啊</span></em></strong><strong><em><span style="color:#E53333;"></span></em></strong><strong><em><span style="color:#E53333;">', N'1       ', CAST(0x0000A10800000000 AS DateTime), N'hyl', N'C:\fakepath\.net.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (132, N'342', N'ewrw', N'1       ', CAST(0x0000A10900000000 AS DateTime), N'3453', N'C:\fakepath\.net.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (133, N'23', N'23232', N'1       ', CAST(0x0000A10300000000 AS DateTime), N'232', N'C:\fakepath\复杂HTTP协议.png')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (134, N'23', N'23232士大夫&nbsp;', N'1       ', CAST(0x0000A10300C5C100 AS DateTime), N'232', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (135, N'23', N'23232', N'1       ', CAST(0x0000A10300000000 AS DateTime), N'232', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (136, N'232', N'23232事实&nbsp;&nbsp;', N'1       ', CAST(0x0000A10900C5C100 AS DateTime), N'232', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (138, N'232', N'232323豆腐 的事实', N'1       ', CAST(0x0000A10900C5C100 AS DateTime), N'232', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (139, N'11', N'2323212121', N'1       ', CAST(0x0000A10A00000000 AS DateTime), N'121', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (144, N'a', N'a', N'1       ', CAST(0x0000A10800000000 AS DateTime), N'a', N'C:\fakepath\a.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (145, N'a', N'a', N'1       ', CAST(0x0000A10800000000 AS DateTime), N'a', N'C:\fakepath\a.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (146, N'a', N'a', N'1       ', CAST(0x0000A10800000000 AS DateTime), N'a', N'C:\fakepath\a.jpg')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (148, N'沙僧', N'大师傅', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (149, N'沙僧', N'大师傅', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (150, N'沙僧', N'大师傅', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (151, N'沙僧', N'大师傅', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (152, N'沙僧', N'大师傅', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (153, N'沙僧', N'大师傅', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (154, N'沙僧', N'大师傅', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (155, N'唐僧', N'大师傅似的', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (156, N'唐僧', N'大师傅似的', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (157, N'唐僧', N'大师傅似的', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (158, N'唐僧', N'大师傅似的', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (159, N'唐僧', N'大师傅似的', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (160, N'唐僧', N'大师傅似的', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (161, N'唐僧', N'大师傅似的', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (162, N'唐僧', N'大师傅似的', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (163, N'唐僧', N'大师傅似的', N'1       ', CAST(0x0000A10500000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (164, N'悟空', N'大师傅似的', N'1       ', CAST(0x0000A0FD00000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (165, N'悟空', N'大师傅似的', N'1       ', CAST(0x0000A0FD00000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (166, N'悟空', N'大师傅似的', N'1       ', CAST(0x0000A0FD00000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (167, N'悟空', N'大师傅似的', N'1       ', CAST(0x0000A0FD00000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (168, N'悟空', N'大师傅似的', N'1       ', CAST(0x0000A0FD00000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (169, N'悟空', N'大师傅似的', N'1       ', CAST(0x0000A0FD00000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (170, N'悟空', N'大师傅似的', N'1       ', CAST(0x0000A0FD00000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (171, N'悟空', N'大师傅似的', N'1       ', CAST(0x0000A0FD00000000 AS DateTime), N'', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (172, N'a', N'a', N'1       ', CAST(0x0000A10200000000 AS DateTime), N'asf', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (173, N'a', N'a', N'1       ', CAST(0x0000A10200000000 AS DateTime), N'asf', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (174, N'a', N'a', N'1       ', CAST(0x0000A10200000000 AS DateTime), N'asf', N'')
INSERT [dbo].[HKSJ_Main] ([ID], [title], [content], [type], [Date], [people], [picUrl]) VALUES (175, N'a', N'<img src="http://localhost:21071/admin/kindeditor-4.1.3/plugins/emoticons/images/20.gif" border="0" alt="" />a343434334235', N'1       ', CAST(0x0000A10200C5C100 AS DateTime), N'asf', N'3434343')
SET IDENTITY_INSERT [dbo].[HKSJ_Main] OFF
/****** Object:  Table [dbo].[HKSJ_First]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_First]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HKSJ_First](
	[Name] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Matter] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HKSJ_First__060DEAE8] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[HKSJ_First] ([Name], [Matter]) VALUES (N'', N'')
INSERT [dbo].[HKSJ_First] ([Name], [Matter]) VALUES (N'韩迎龙', N'事情')
/****** Object:  Table [dbo].[HKSJ_Employees]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Employees]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HKSJ_Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NOT NULL,
	[people] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [int] NOT NULL,
	[MainPeople] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HKSJ_Employees__0425A276] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[HKSJ_Employees] ON
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (1, N'.net工程师', N'conte94', N'mlss', CAST(0x0000A10000000000 AS DateTime), 2, N'hello')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (3, N'___81', N'conte81', N'mlss', CAST(0x00009DC3011B5FC0 AS DateTime), 2, N'hello')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (4, N'___3', N'conte3', N'mlss', CAST(0x00009DC3011C0C04 AS DateTime), 2, N'hello')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (5, N'___99', N'conte99', N'mlss', CAST(0x00009DC3011C1564 AS DateTime), 2, N'hello')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (6, N'___78', N'conte78', N'mlss', CAST(0x00009DC3011DF4B0 AS DateTime), 2, N'hello')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (7, N'___6', N'conte6', N'mlss', CAST(0x00009DC3011E3D58 AS DateTime), 2, N'vfffffffffffff')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (8, N'343', N'343', N'34', CAST(0x0000A10900000000 AS DateTime), 343, N'343')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (9, N'343', N'343', N'34', CAST(0x0000A10900000000 AS DateTime), 343, N'343')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (10, N'343', N'343', N'34', CAST(0x0000A10900000000 AS DateTime), 343, N'343')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (11, N'343', N'343', N'34', CAST(0x0000A0FA00000000 AS DateTime), 343, N'34343')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (12, N'343', N'343', N'34', CAST(0x0000A0FA00000000 AS DateTime), 343, N'34343')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (13, N'343', N'343', N'34', CAST(0x0000A0FA00000000 AS DateTime), 343, N'34343')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (15, N'243', N'2342', N'2423', CAST(0x0000A10800000000 AS DateTime), 242, N'23423')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (16, N'42', N'234', N'234', CAST(0x0000A10900000000 AS DateTime), 42, N'43223')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (17, N'42', N'234', N'234', CAST(0x0000A10900000000 AS DateTime), 42, N'43223')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (18, N'432', N'2342', N'234', CAST(0x0000A10B00000000 AS DateTime), 3432, N'23432')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (19, N'432', N'2342', N'234', CAST(0x0000A10B00000000 AS DateTime), 3432, N'23432')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (20, N'432', N'2342', N'234', CAST(0x0000A10B00000000 AS DateTime), 3432, N'23432')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (21, N'43234', N'2342', N'2342', CAST(0x0000A10E00000000 AS DateTime), 43323, N'432432')
INSERT [dbo].[HKSJ_Employees] ([ID], [title], [content], [people], [date], [status], [MainPeople]) VALUES (22, N'43234', N'2342', N'2342', CAST(0x0000A10300000000 AS DateTime), 43323, N'432432')
SET IDENTITY_INSERT [dbo].[HKSJ_Employees] OFF
/****** Object:  Table [dbo].[HKSJ_Clients]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HKSJ_Clients]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HKSJ_Clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[softName] [varchar](150) COLLATE Chinese_PRC_CI_AS NULL,
	[content] [text] COLLATE Chinese_PRC_CI_AS NULL,
	[liaisonPhone] [varchar](22) COLLATE Chinese_PRC_CI_AS NULL,
	[liaisonPeple] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[date] [datetime] NOT NULL,
	[peple] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__HKSJ_Clients__07F6335A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[HKSJ_Clients] ON
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (3, N'公主岭111', N'网上售房', N'韩迎龙李潇絮韩迎龙李潇絮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙<img src="http://localhost:21071/admin/kindeditor-4.1.3/plugins/emoticons/images/11.gif" border="0" alt="" />李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙<span><span><span><span><span><span><span><span><span><span><span><span><span><span><span><span><span><span><span><span><span>迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮<span>韩迎龙李潇絮韩迎龙李潇絮</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;', N'051123462', N'李亮', CAST(0x0000A10801815068 AS DateTime), N'小风')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (4, N'青铜鞋1121', N'网上售房', N'方与圆《做人要反，做事要圆》，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，<img src="http://localhost:21071/admin/kindeditor-4.1.3/plugins/emoticons/images/19.gif" border="0" alt="" />，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<img src="http://localhost:21071/admin/kindeditor-4.1.3/plugins/emoticons/images/1.gif" border="0" alt="" /><span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做<img src="http://localhost:21071/admin/kindeditor-4.1.3/plugins/emoticons/images/22.gif" border="0" alt="" />事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要<img src="http://localhost:21071/admin/kindeditor-4.1.3/plugins/emoticons/images/11.gif" border="0" alt="" />反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，<span>方与圆《做人要反，做事要圆</span><span>》</span><span>，，，</span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span></span>', N'123213213', N'王', CAST(0x0000A10801627667 AS DateTime), N'晓峰')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (6, N'ww', N'ww', N'4353534<img src="http://localhost:21071/admin/kindeditor-4.1.3/plugins/emoticons/images/12.gif" border="0" alt="" />', N'ww', N'ww', CAST(0x0000A10F00000000 AS DateTime), N'ww')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (8, N'wew', N'wew', N'343erwerw', N'ew', N'ewew', CAST(0x0000A108013D77E5 AS DateTime), N'ew')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (11, N'sds', N'sdfs', N'343erwerw', N'343', N'韩龙', CAST(0x0000A108013DD925 AS DateTime), N'时候')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (22, N'qweq', N'rwqe', N'<img src="http://192.168.1.250:8099/admin/kindeditor-4.1.3/plugins/emoticons/images/11.gif" border="0" alt="" />武器鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅鹅红么十多个 史蒂芬森大幅度<img src="http://localhost:21071/admin/kindeditor-4.1.3/plugins/emoticons/images/11.gif" border="0" alt="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;', N'qqeq', N'ewqew', CAST(0x0000A1080165E230 AS DateTime), N'adawe')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (30, N'4353', N'453', N'4534', N'3453', N'345', CAST(0x0000A108017F2AE1 AS DateTime), N'33543')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (31, N'43534543', N'353', N'3535', N'3453345', N'35', CAST(0x0000A108017F365D AS DateTime), N'3535')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (32, N'353', N'3453', N'3534', N'353', N'345', CAST(0x0000A108017F6236 AS DateTime), N'34')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (33, N'453', N'35', N'3453', N'3533453', N'353', CAST(0x0000A108017F8F06 AS DateTime), N'3453')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (34, N'353', N'435', N'353', N'353', N'345', CAST(0x0000A108017F97E9 AS DateTime), N'3543')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (35, N'353', N'543', N'453', N'35343535', N'435', CAST(0x0000A108017FA043 AS DateTime), N'35345')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (36, N'4353', N'3534', N'45353', N'353435334535', N'3543', CAST(0x0000A108017FA92B AS DateTime), N'5353')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (37, N'3432', N'242', N'242', N'2432', N'2424', CAST(0x0000A1080181349E AS DateTime), N'24')
INSERT [dbo].[HKSJ_Clients] ([id], [title], [softName], [content], [liaisonPhone], [liaisonPeple], [date], [peple]) VALUES (38, N'422', N'2423', N'23432', N'24322342', N'242', CAST(0x0000A10801813E62 AS DateTime), N'234')
SET IDENTITY_INSERT [dbo].[HKSJ_Clients] OFF
/****** Object:  StoredProcedure [dbo].[UspOutputData]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UspOutputData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE       PROCEDURE   [dbo].[UspOutputData]  
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
  print   ''The   object   not   exists''    
  return    
  end    
  set     @objectname=object_name(@objectId)  
   
  if     @objectname   is   null   or   charindex(@objectname,@tablename)=0   --此判断不严密  
  begin  
  print   ''object   not   in   current   database''  
  return  
  end  
   
  if   OBJECTPROPERTY(@objectId,''IsTable'')   <>   1   --   判斷對象是否是table    
  begin    
  print   ''The   object   is   not   table''    
  return    
  end    
   
  select   @ident=status&0x80     from   syscolumns   where   id=@objectid   and   status&0x80=0x80  
   
  if   @ident   is   not   null  
  print   ''SET   IDENTITY_INSERT   ''+@TableName+''   ON''  
   
  declare   syscolumns_cursor   cursor    
  for   select   c.name,c.xtype   from   syscolumns   c  
  where   c.id=@objectid  
  order   by   c.colid  
  open   syscolumns_cursor  
  set   @column=''''  
  set   @columndata=''''  
  fetch   next   from   syscolumns_cursor   into   @name,@xtype  
  while   @@fetch_status   <>-1  
  begin  
  if   @@fetch_status<>-2  
  begin  
  if   @xtype   not   in(189,34,35,99,98)   --timestamp不需处理，image,text,ntext,sql_variant   暂时不处理  
  begin  
  set   @column=@column+case   when   len(@column)=0   then''''   else   '',''end+@name  
  set   @columndata=@columndata+case   when   len(@columndata)=0   then   ''''   else   '','''','''',''end  
  +case   when   @xtype   in(167,175)   then   ''''''''''''''''''+''+@name+''+''''''''''''''''''   --varchar,char  
  when   @xtype   in(231,239)   then   ''''''N''''''''''''+''+@name+''+''''''''''''''''''   --nvarchar,nchar  
  when   @xtype=61   then   ''''''''''''''''''+convert(char(23),''+@name+'',121)+''''''''''''''''''   --datetime  
  when   @xtype=58   then   ''''''''''''''''''+convert(char(16),''+@name+'',120)+''''''''''''''''''   --smalldatetime  
  when   @xtype=36   then   ''''''''''''''''''+convert(char(36),''+@name+'')+''''''''''''''''''   --uniqueidentifier  
  else   @name   end  
  end  
  end      
  fetch   next   from   syscolumns_cursor   into   @name,@xtype  
  end  
  close   syscolumns_cursor  
  deallocate   syscolumns_cursor  
   
  set   @sql=''set   nocount   on   select   ''''insert   ''+@tablename+''(''+@column+'')   values(''''as   ''''--'''',''+@columndata+'','''')''''   from   ''+@tablename  
   
  print   ''--''+@sql  
  exec(@sql)  
   
  if   @ident   is   not   null  
  print   ''SET   IDENTITY_INSERT   ''+@TableName+''   OFF''  
   
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Pro_GetPageProject]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pro_GetPageProject]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[Pro_GetPageProject]
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageUSERS]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_GetPageUSERS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[p_GetPageUSERS]
(
@pageIndex int,  --当前请求的页码
@pageSize int,    --一页的数量
@totalCount int output --输出多少条数据
)
as
--动态拼接SQL语句
declare @sql nvarchar(2000)
set @sql=''select top ''+CAST(@pageSize as nvarchar(16))+'' * from HKSJ_USERS where ID	not in
(
	select top ''+CAST((@pageIndex-1)*@pageSize as nvarchar(20))+'' ID  from HKSJ_USERS order by ID
)
 order by ID'';
 exec (@sql)
 select @totalCount=count(0) from HKSJ_USERS' 
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageRelationShip]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_GetPageRelationShip]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[p_GetPageRelationShip]
(
@pageIndex int,  --当前请求的页码
@pageSize int,    --一页的数量
@totalCount int output --输出多少条数据
)
as
--动态拼接SQL语句
declare @sql nvarchar(2000)
set @sql=''select top ''+CAST(@pageSize as nvarchar(16))+'' * from HKSJ_Relationship where ID	not in
(
	select top ''+CAST((@pageIndex-1)*@pageSize as nvarchar(20))+'' ID  from HKSJ_Relationship order by ID
)
 order by ID'';
 exec (@sql)
 select @totalCount=count(0) from HKSJ_Relationship' 
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageMain]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_GetPageMain]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE proc [dbo].[p_GetPageMain]
(
@pageIndex int,  --当前请求的页码
@pageSize int,    --一页的数量
@totalCount int output --输出多少条数据
)
as
--动态拼接SQL语句
declare @sql nvarchar(2000)
set @sql=''select top ''+CAST(@pageSize as nvarchar(16))+'' * from HKSJ_Main where ID	not in
(
	select top ''+CAST((@pageIndex-1)*@pageSize as nvarchar(20))+'' ID  from HKSJ_Main order by ID
)
 order by ID'';
 exec (@sql)
 select @totalCount=count(0) from HKSJ_Main

' 
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetPageEmployees]    Script Date: 11/14/2012 08:52:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_GetPageEmployees]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--创建p_GetPageEmployees存储过程
create proc [dbo].[p_GetPageEmployees]
@pageIndex int,
@pageSize int,
@totalCount int out
as
select @totalCount=COUNT(1) from dbo.HKSJ_Employees

select * from (
select t.*,ROW_NUMBER() over(order by id)as nnn from dbo.HKSJ_Employees as t
)as m 
where m.nnn between @pageSize*(@pageIndex-1)+1 and @pageIndex*@pageSize' 
END
GO
