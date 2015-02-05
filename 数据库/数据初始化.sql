 

/*
请在运行此脚本之前备份目标数据库。
*/
 
BEGIN TRANSACTION

INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281da4', N'系统设置', NULL, NULL, N'tu2011', 111, N'1000', N'展开', NULL, NULL, CAST(0x0000A2690120D21B AS DateTime), N'Admin', N'叶子')
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281da5', N'个人设置', NULL, NULL, N'tu0625', 222, N'1001', N'展开', NULL, NULL, CAST(0x0000A3AE000E0FEE AS DateTime), N'Admin', N'叶子')
 INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281da3', N'基础设置', N'1307311605187265267d33f281da4', NULL, N'tu0504', 111, N'10001000', N'展开', NULL, NULL, CAST(0x0000A269010CA72C AS DateTime), N'Admin', N'叶子')
 
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281d11', N'异常捕获', N'1307311605187265267d33f281da3', N'SysException', N'tu1101', 666, N'100010001001', N'展开', NULL, NULL, CAST(0x0000A26901279E11 AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281d12', N'菜单管理', N'1307311605187265267d33f281da4', N'SysMenu', N'tu0701', 444, N'10001003', N'展开', NULL, NULL, CAST(0x0000A3AE00FD3931 AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281da0', N'角色管理', N'1307311605187265267d33f281da4', N'SysRole', N'tu0525', 666, N'10001005', N'展开', NULL, NULL, CAST(0x0000A3AE00FD668E AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281da1', N'日志管理', N'1307311605187265267d33f281da3', N'SysLog', N'tu1001', 555, N'100010001000', N'展开', NULL, NULL, CAST(0x0000A3AE00F3A761 AS DateTime), N'Admin', NULL)

INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281da8', N'人员管理', N'1307311605187265267d33f281da4', N'SysPerson', N'tu0625', 333, N'10001002', N'展开', NULL, NULL, CAST(0x0000A269011F70B9 AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281da9', N'数据字典', N'1307311605187265267d33f281da3', N'SysField', N'tu0704', 777, N'100010001002', N'展开', NULL, NULL, CAST(0x0000A26900E7B755 AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1307311605187265267d33f281df2', N'狼奔网站', N'1307311605187265267d33f281da5', N'http://www.langben.com', N'langben', 222, N'10011000', N'展开', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1310181133541969540a9ad916764', N'操作管理', N'1307311605187265267d33f281da4', N'SysOperation', N'tu0901', 555, N'10001004', N'展开', N'Admin', CAST(0x0000A25B00BE95D8 AS DateTime), CAST(0x0000A3AE00FD7AFD AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1311011720196053073ccff5a1c7c', N'部门管理', N'1307311605187265267d33f281da4', N'SysDepartment', N'tu1201', 222, N'10001001', N'展开', N'Admin', CAST(0x0000A269011DBB44 AS DateTime), CAST(0x0000A3AE00FD20D3 AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1409221354139895985a030594898', N'通知中心', N'1307311605187265267d33f281da4', N'SysNotice', N'tu1209', 1111, N'10001007', N'展开', N'Admin', CAST(0x0000A3AE00E51FDC AS DateTime), CAST(0x0000A3AE00F30E8B AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'140922135507916683068629c5d43', N'邮件模板', N'1307311605187265267d33f281da4', N'SysEmailTemp', N'tu0620', 2222, N'10001008', N'展开', N'Admin', CAST(0x0000A3AE00E56037 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'1409221355486530130826b670994', N'短信模板', N'1307311605187265267d33f281da4', N'SysMessageTemp', N'tu1010', 4444, N'10001010', N'展开', N'Admin', CAST(0x0000A3AE00E58F30 AS DateTime), CAST(0x0000A3AE00EB0927 AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'14092213562939634331abbbe7395', N'邮件发送记录', N'1307311605187265267d33f281da4', N'SysEmail', N'tu0520', 3333, N'10001009', N'展开', N'Admin', CAST(0x0000A3AE00E5BF3C AS DateTime), CAST(0x0000A3AE00EAF659 AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'14092214142483385492f3a6614c2', N'短信发送记录', N'1307311605187265267d33f281da4', N'SysMessage', N'tu0810', 5555, N'10001011', N'展开', N'Admin', CAST(0x0000A3AE00EAAB00 AS DateTime), CAST(0x0000A3AE00F2E2C8 AS DateTime), N'Admin', NULL)
INSERT [dbo].[SysMenu] ([Id], [Name], [ParentId], [Url], [Iconic], [Sort], [Remark], [State], [CreatePerson], [CreateTime], [UpdateTime], [UpdatePerson], [IsLeaf]) VALUES (N'140922145246539504969e3105325', N'公告管理', N'1307311605187265267d33f281da4', N'SysAnnouncement', N'tu0605', 1000, N'10001006', N'展开', N'Admin', CAST(0x0000A3AE00F5354A AS DateTime), NULL, NULL, NULL)



INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [EmailAddress], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e24e', N'Admin', N'狼奔', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '350020527@qq.com', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e222', N'WangXiaoxia', N'王晓霞', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e333', N'QuXiaolin', N'曲晓林', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e444', N'SongFulai', N'宋福来', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e555', N'WangYuyan', N'王语嫣', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')
INSERT INTO [dbo].[SysPerson] ([Id], [Name], [MyName], [Password], [SurePassword], [State], [CreateTime], [CreatePerson], [LogonIP], [LogonNum],[PageStyle]) VALUES (N'1311061516356389621569df3e666', N'LiuYiyang', N'刘一阳', N'8nMmN/pfIBY=', N'8nMmN/pfIBY=',  N'开启', '131106 15:16:35.640', N'Admin', '127.0.0.1', 2,'default')

INSERT INTO [dbo].[SysRole] ([Id], [Name], [Description], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281da6', N'超级管理员', N'具有全部的菜单和操作', NULL, NULL, '131101 14:54:55.583', N'Admin')

INSERT INTO [dbo].[SysRoleSysPerson] ([SysPersonId], [SysRoleId]) VALUES (N'1311061516356389621569df3e24e', N'1307311605187265267d33f281da6')
INSERT INTO [dbo].[SysOperation] ([Id], [Name], [Function], [Iconic], [Sort], [Remark], [State], [CreateTime], [CreatePerson]) VALUES (N'1310181134390713796477e27c097', N'创建', N'flexiCreate', N'icon-add', 222, NULL, NULL, '131018 11:34:39.000', N'Admin')
INSERT INTO [dbo].[SysOperation] ([Id], [Name], [Function], [Iconic], [Sort], [Remark], [State], [CreateTime], [CreatePerson]) VALUES (N'131018155411503738459acd560d4', N'修改', N'flexiModify', N'icon-edit', 444, NULL, NULL, '131018 15:54:11.000', N'Admin')
INSERT INTO [dbo].[SysOperation] ([Id], [Name], [Function], [Iconic], [Sort], [Remark], [State], [CreateTime], [CreatePerson]) VALUES (N'1310181554235506134d5697ad13c', N'删除', N'flexiDelete', N'icon-remove', 333, NULL, NULL, '131018 15:54:23.000', N'Admin')
INSERT INTO [dbo].[SysOperation] ([Id], [Name], [Function], [Iconic], [Sort], [Remark], [State], [CreateTime], [CreatePerson]) VALUES (N'13101815543634748843f1d3c904c', N'详细', N'getView', N'icon-details', 111, NULL, NULL, '131018 15:54:36.000', N'Admin')
 
INSERT [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da8', N'1310181134390713796477e27c097')
INSERT [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da8', N'131018155411503738459acd560d4')
INSERT [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da8', N'1310181554235506134d5697ad13c')
INSERT [dbo].[SysMenuSysOperation] ([SysMenuId], [SysOperationId]) VALUES (N'1307311605187265267d33f281da8', N'13101815543634748843f1d3c904c')				  
 
 
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'140922152306417596000a505a5c7', N'1310181133541969540a9ad916764', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'14092215230641759600146c34f1a', N'1307311605187265267d33f281df2', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'1409221523064175960068077cc91', N'14092214142483385492f3a6614c2', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'140922152306417596016aea95c9d', N'14092213562939634331abbbe7395', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'14092215230641759601caf26aa48', N'1307311605187265267d33f281da8', N'1310181554235506134d5697ad13c', N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'140922152306417596020a5e90e89', N'1307311605187265267d33f281da0', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'14092215230641759602c559b60c6', N'1409221355486530130826b670994', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'14092215230641759603430b2279a', N'1307311605187265267d33f281da1', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'14092215230641759603501480082', N'140922135507916683068629c5d43', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'1409221523064175960400e2b8556', N'1307311605187265267d33f281da4', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'140922152306417596043884e8754', N'1307311605187265267d33f281da8', N'1310181134390713796477e27c097', N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'140922152306417596044cc730e75', N'140922145246539504969e3105325', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'1409221523064175960662e399999', N'1307311605187265267d33f281d12', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'140922152306417596066c2b79244', N'1409221354139895985a030594898', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'140922152306417596075a8ca408e', N'1307311605187265267d33f281da8', N'131018155411503738459acd560d4', N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'14092215230641759607bf34aa086', N'1311011720196053073ccff5a1c7c', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'14092215230641759608ca9cdafe7', N'1307311605187265267d33f281da3', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'1409221523064175960be97658d59', N'1307311605187265267d33f281da5', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'1409221523064175960cd69b4c1ab', N'1307311605187265267d33f281da9', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'1409221523064175960d3a4228cc0', N'1307311605187265267d33f281d11', NULL, N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'1409221523064175960db2e18c1a0', N'1307311605187265267d33f281da8', N'13101815543634748843f1d3c904c', N'1307311605187265267d33f281da6')
INSERT [dbo].[SysMenuSysRoleSysOperation] ([Id], [SysMenuId], [SysOperationId], [SysRoleId]) VALUES (N'1409221523064175960eb253eae45', N'1307311605187265267d33f281da8', NULL, N'1307311605187265267d33f281da6')



INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311105187265267d33f281df3', N'是', NULL, N'SysEmailTemp', N'IsDefault', 111, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311105187265267d33f281df4', N'否', NULL, N'SysEmailTemp', N'IsDefault', 222, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281d99', N'展开', NULL, N'SysMenu', N'State', 111, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281999', N'折叠', NULL, N'SysMenu', N'State', 222, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281df3', N'开启', NULL, N'SysPerson', N'State', 111, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1307311605187265267d33f281df4', N'关闭', NULL, N'SysPerson', N'State', 222, NULL, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'13112209551672144939a6262d8e5', N'男', NULL, N'SysPerson', N'Sex', 111, N'SysPerson男', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220955257836593c4a4bbea87', N'女', NULL, N'SysPerson', N'Sex', 111, N'SysPerson女', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220956161414228ccc2b579f8', N'北京市', NULL, N'SysPerson', N'Province', 111, N'SysPerson+Province+北京市',NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220956340783488723f958e59', N'上海市', NULL, N'SysPerson', N'Province', 222, N'SysPerson+Province+上海市', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220957265297953ba74f034d3', N'海淀区', N'1311220956161414228ccc2b579f8', N'SysPerson', N'City', 111, N'SysPerson+City+海淀区', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220957429042713f2c8c544c5', N'东城区', N'1311220956161414228ccc2b579f8', N'SysPerson', N'City', 111, N'SysPerson+City+东城区', NULL, N'Admin', NULL, NULL)
INSERT INTO [dbo].[SysField] ([Id], [MyTexts], [ParentId], [MyTables], [MyColums], [Sort], [Remark], [CreateTime], [CreatePerson], [UpdateTime], [UpdatePerson]) VALUES (N'1311220958318400832b4af840c44', N'中关村', N'1311220957265297953ba74f034d3', N'SysPerson', N'Village', 111, N'SysPerson+Village+中关村', NULL, N'Admin', NULL, NULL)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281234','市场部',null,'北京市朝阳区',111)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281235','财务部',null,'北京市海淀区',222)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281236','人力部',null,'北京市朝阳区',333)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281237','规划','1307311605187265267d33f281236','北京市朝阳区',111)
INSERT INTO[dbo].[SysDepartment]([Id],[Name],[ParentId],[Address],[Sort])
VALUES('1307311605187265267d33f281238','招聘','1307311605187265267d33f281236','北京市朝阳区',222)
INSERT [dbo].[SysAnnouncement] ([Id], [Title], [Message], [State], [CreateTime], [CreatePerson]) VALUES (N'1408231959411063352ca07edc847', N'新系统开通公告', N'<p><br />
尊敬的各位朋友：<br />
&nbsp;&nbsp;&nbsp; 为了给广大客户更好的提供服务，新系统已开通，以全新的面貌为您服务。<br />
&nbsp;&nbsp;&nbsp; 如您遇到任何问题，请拨打我们的QQ<span style="color:#B22222">350020527</span>，我们将竭诚为您提供更优质的服务。</p>

<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 狼奔（北京）科技有限公司<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2014年9月6日</p>
', N'开启', NULL, NULL)
INSERT INTO [dbo].[SysEmailTemp]
           ([Id]
           ,[Mail_name]
           ,[Subject]
           ,[Content]
           ,[Reply_email]
           ,[IsDefault]
        )
     VALUES
           ('14090515150232976744f80d07a79'
           ,'修改密码发送的邮件通知'
           ,'修改密码成功'
           ,'	{{用户名}}，你好：<br />  恭喜你，修改密码成功，新密码为：{{密码}}<br />  谢谢。'
           ,'clark@langben.com'
           ,'是'
           )
COMMIT TRANSACTION
