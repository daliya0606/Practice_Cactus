USE [320VS]
GO
/****** Object:  Table [dbo].[Cactus]    Script Date: 09.09.2024 19:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cactus](
	[id_Cactus] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[View_id] [int] NULL,
	[Origin] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Cactus] PRIMARY KEY CLUSTERED 
(
	[id_Cactus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 09.09.2024 19:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id_City] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id_City] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 09.09.2024 19:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contracts](
	[number_Contract] [int] IDENTITY(1,1) NOT NULL,
	[Exhibition_id] [int] NULL,
	[Cactus_id] [int] NULL,
	[Reward] [nvarchar](50) NULL,
	[Comments] [nvarchar](150) NULL,
 CONSTRAINT [PK_Contracts] PRIMARY KEY CLUSTERED 
(
	[number_Contract] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exhibitions]    Script Date: 09.09.2024 19:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exhibitions](
	[id_Exhibition] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Date_Start] [date] NULL,
	[Date_End] [date] NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Exhibitions] PRIMARY KEY CLUSTERED 
(
	[id_Exhibition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 09.09.2024 19:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[id_Login] [int] IDENTITY(1,1) NOT NULL,
	[Role_id] [int] NULL,
	[Login] [nvarchar](20) NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[id_Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 09.09.2024 19:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id_Role] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 09.09.2024 19:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[kod_Street] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[City_id] [int] NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[kod_Street] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Views]    Script Date: 09.09.2024 19:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Views](
	[id_View] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Insturction] [nvarchar](500) NULL,
 CONSTRAINT [PK_Views] PRIMARY KEY CLUSTERED 
(
	[id_View] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cactus] ON 

INSERT [dbo].[Cactus] ([id_Cactus], [Name], [View_id], [Origin], [Age], [Price]) VALUES (1, N'Грусона', 1, N'Мексика', 2, 2000)
INSERT [dbo].[Cactus] ([id_Cactus], [Name], [View_id], [Origin], [Age], [Price]) VALUES (2, N'Горизонтальный', 1, N'Калифорния', 10, 4000)
INSERT [dbo].[Cactus] ([id_Cactus], [Name], [View_id], [Origin], [Age], [Price]) VALUES (3, N'Бокасана', 2, N'Мексика', 5, 1500)
INSERT [dbo].[Cactus] ([id_Cactus], [Name], [View_id], [Origin], [Age], [Price]) VALUES (4, N'Пролифера', 2, N'Мадагаскар', 3, 10000)
INSERT [dbo].[Cactus] ([id_Cactus], [Name], [View_id], [Origin], [Age], [Price]) VALUES (5, N'Грацилис', 2, N'Аргентина', 50, 120000)
INSERT [dbo].[Cactus] ([id_Cactus], [Name], [View_id], [Origin], [Age], [Price]) VALUES (6, N'Минускула', 3, N'Боливия', 20, 30000)
INSERT [dbo].[Cactus] ([id_Cactus], [Name], [View_id], [Origin], [Age], [Price]) VALUES (7, N'Фибригиспина', 3, N'Куба', 7, 5000)
INSERT [dbo].[Cactus] ([id_Cactus], [Name], [View_id], [Origin], [Age], [Price]) VALUES (8, N'gbgbgb', 2, N'cdhjsbdsc', NULL, NULL)
INSERT [dbo].[Cactus] ([id_Cactus], [Name], [View_id], [Origin], [Age], [Price]) VALUES (9, N' gfvfcf', 4, N'frcvfr', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Cactus] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([id_City], [Name]) VALUES (1, N'Казань')
INSERT [dbo].[City] ([id_City], [Name]) VALUES (2, N'Москва')
INSERT [dbo].[City] ([id_City], [Name]) VALUES (3, N'Санкт-Петербург')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Contracts] ON 

INSERT [dbo].[Contracts] ([number_Contract], [Exhibition_id], [Cactus_id], [Reward], [Comments]) VALUES (1, 1, 1, N'"Самый большой кактус"', NULL)
INSERT [dbo].[Contracts] ([number_Contract], [Exhibition_id], [Cactus_id], [Reward], [Comments]) VALUES (2, 1, 5, N'"ГранПри"', NULL)
INSERT [dbo].[Contracts] ([number_Contract], [Exhibition_id], [Cactus_id], [Reward], [Comments]) VALUES (3, 1, 7, N'"Самый нарядный кактус"', NULL)
INSERT [dbo].[Contracts] ([number_Contract], [Exhibition_id], [Cactus_id], [Reward], [Comments]) VALUES (4, 2, 2, N'"1 место"', NULL)
INSERT [dbo].[Contracts] ([number_Contract], [Exhibition_id], [Cactus_id], [Reward], [Comments]) VALUES (5, 2, 4, N'"Самый длинный кактус"', NULL)
INSERT [dbo].[Contracts] ([number_Contract], [Exhibition_id], [Cactus_id], [Reward], [Comments]) VALUES (6, 2, 7, N'"Новый вид"', NULL)
INSERT [dbo].[Contracts] ([number_Contract], [Exhibition_id], [Cactus_id], [Reward], [Comments]) VALUES (7, NULL, 3, N'"2 место"', NULL)
INSERT [dbo].[Contracts] ([number_Contract], [Exhibition_id], [Cactus_id], [Reward], [Comments]) VALUES (8, NULL, 6, N'"Самый маленький кактус"', NULL)
INSERT [dbo].[Contracts] ([number_Contract], [Exhibition_id], [Cactus_id], [Reward], [Comments]) VALUES (9, NULL, 7, N'"Открытие года"', NULL)
SET IDENTITY_INSERT [dbo].[Contracts] OFF
GO
SET IDENTITY_INSERT [dbo].[Exhibitions] ON 

INSERT [dbo].[Exhibitions] ([id_Exhibition], [Name], [Date_Start], [Date_End], [Address]) VALUES (1, N'Выставка 1', CAST(N'2023-04-27' AS Date), CAST(N'2024-01-15' AS Date), N'Гоголя 3')
INSERT [dbo].[Exhibitions] ([id_Exhibition], [Name], [Date_Start], [Date_End], [Address]) VALUES (2, N'Выставка 2', CAST(N'2022-06-01' AS Date), CAST(N'2022-06-30' AS Date), N'Пушкина 67')
INSERT [dbo].[Exhibitions] ([id_Exhibition], [Name], [Date_Start], [Date_End], [Address]) VALUES (5, N'Суперский Арсений Вадимович', CAST(N'2024-08-05' AS Date), CAST(N'2024-08-11' AS Date), N'Космонавтов 33')
SET IDENTITY_INSERT [dbo].[Exhibitions] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([id_Login], [Role_id], [Login], [Password]) VALUES (1, 1, N'admin', N'admin')
INSERT [dbo].[Login] ([id_Login], [Role_id], [Login], [Password]) VALUES (2, 2, N'user1', N'user1')
INSERT [dbo].[Login] ([id_Login], [Role_id], [Login], [Password]) VALUES (3, 2, N'user2', N'user2')
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id_Role], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([id_Role], [Name]) VALUES (2, N'User1')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[Street] ([kod_Street], [Name], [City_id]) VALUES (1, N'Баумана', 1)
INSERT [dbo].[Street] ([kod_Street], [Name], [City_id]) VALUES (2, N'Вишневского', 1)
INSERT [dbo].[Street] ([kod_Street], [Name], [City_id]) VALUES (3, N'Гоголя', 1)
GO
SET IDENTITY_INSERT [dbo].[Views] ON 

INSERT [dbo].[Views] ([id_View], [Name], [Insturction]) VALUES (1, N'Эхинокактус', N'Яркий свет, редкий полив, температура 20-25, почва - Хорошо дренированная смесь песка, торфа и дерновой земли, медленно растут, но долго живут. ')
INSERT [dbo].[Views] ([id_View], [Name], [Insturction]) VALUES (2, N'Маммиллярия', N'Яркий свет, полив летом регулярный, полив зимой минимальный, температура 18-25, хорошо дренированная смесь песка, торфа и дерновой земли, многие виды маммиллярий имеют пушистые ареолы, которые могут легко загрязняться, поэтому их нужно периодически очищать мягкой кистью.
')
INSERT [dbo].[Views] ([id_View], [Name], [Insturction]) VALUES (3, N'Ребуция', N'Л.юят яркий свет, летом поливают регулярно, но умеренно. Зимой полив сокращают до минимума, Теплолюбивы, оптимальная температура 18-25°C, Ребуции легко размножаются семенами и черенками.  ')
INSERT [dbo].[Views] ([id_View], [Name], [Insturction]) VALUES (4, N'Опунция', N'Очень любят яркий свет, хорошо переносят прямые солнечные лучи.  Поливают редко, только после полного высыхания почвы.   Теплолюбивы, оптимальная температура 20-30°C. Зимой нужен период покоя при 10-12°C. Хорошо дренированная смесь песка, торфа и дерновой земли. Опунции имеют колючки и глохидии (мелкие волоски), поэтому при обращении с ними нужно быть осторожным.  ')
INSERT [dbo].[Views] ([id_View], [Name], [Insturction]) VALUES (5, N'Нотоктатус', N'Яркий свет, но не прямое солнце, особенно в летние месяцы.  Летом поливают регулярно, но умеренно. Зимой полив сокращают до минимума. Теплолюбивы, оптимальная температура 18-25°C.  Зимой нужен период покоя при 10-12°C. Хорошо дренированная смесь песка, торфа и дерновой земли. Нотоктатусы легко размножаются семенами и черенками.  ')
SET IDENTITY_INSERT [dbo].[Views] OFF
GO
ALTER TABLE [dbo].[Cactus]  WITH CHECK ADD  CONSTRAINT [FK_Cactus_Views] FOREIGN KEY([View_id])
REFERENCES [dbo].[Views] ([id_View])
GO
ALTER TABLE [dbo].[Cactus] CHECK CONSTRAINT [FK_Cactus_Views]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Cactus] FOREIGN KEY([Cactus_id])
REFERENCES [dbo].[Cactus] ([id_Cactus])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Cactus]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Exhibitions] FOREIGN KEY([Exhibition_id])
REFERENCES [dbo].[Exhibitions] ([id_Exhibition])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Exhibitions]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Roles] FOREIGN KEY([Role_id])
REFERENCES [dbo].[Roles] ([id_Role])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Roles]
GO
ALTER TABLE [dbo].[Street]  WITH CHECK ADD  CONSTRAINT [FK_Street_City] FOREIGN KEY([City_id])
REFERENCES [dbo].[City] ([id_City])
GO
ALTER TABLE [dbo].[Street] CHECK CONSTRAINT [FK_Street_City]
GO
