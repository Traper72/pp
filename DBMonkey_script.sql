CREATE DATABASE DBMonkey
GO
USE DBMonkey
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 12.12.2022 13:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[patronymic] [nvarchar](255) NULL,
	[series_passport] [int] NULL,
	[number_passport] [int] NULL,
	[birth_of_date] [datetime] NULL,
	[adress] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[surname] [nvarchar](255) NULL,
 CONSTRAINT [PK_ClientsId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12.12.2022 13:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[id] [int] NOT NULL,
	[id_position] [int] NULL,
	[surname] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[patronymic] [nvarchar](255) NULL,
	[login] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[imgHref] [nvarchar](512) NULL,
 CONSTRAINT [PK_EmployeesId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginHistory]    Script Date: 12.12.2022 13:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginHistory](
	[id] [int] NOT NULL,
	[id_employee] [int] NULL,
	[login_date] [datetime] NOT NULL,
	[id_type_login] [int] NULL,
 CONSTRAINT [PK_LoginHistoryId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12.12.2022 13:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] NOT NULL,
	[datetime_create] [datetime] NULL,
	[id_client] [int] NULL,
	[id_status] [int] NULL,
	[date_close] [datetime] NULL,
	[rental_time] [int] NULL,
	[id_employee] [int] NULL,
 CONSTRAINT [PK_OrdersId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersServices]    Script Date: 12.12.2022 13:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersServices](
	[id] [int] NOT NULL,
	[id_order] [int] NULL,
	[id_service] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 12.12.2022 13:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_PositionsId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 12.12.2022 13:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 12.12.2022 13:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_StatusesId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesLogin]    Script Date: 12.12.2022 13:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesLogin](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_TypesLoginId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462526, N'Андрей', N'Иванович', 1180, 176596, CAST(N'2001-07-14T00:00:00.000' AS DateTime), N'344288, г. Екатеринбург, ул. Чехова, 1, кв. 34', N'gohufreilagrau-3818@yopmail.com', N'Фролов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462527, N'Даниил', N'Всеволодович', 2280, 223523, CAST(N'2001-02-10T00:00:00.000' AS DateTime), N'614164, г. Екатеринбург, ул. Степная, 30, кв. 75', N'xawugosune-1385@yopmail.com', N'Николаев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462528, N'Макар', N'Иванович', 4560, 354155, CAST(N'1998-05-21T00:00:00.000' AS DateTime), N'394242, г. Екатеринбург, ул. Коммунистическая, 43, кв. 57', N'satrahuddusei-4458@yopmail.com', N'Снегирев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462529, N'Иван', N'Ильич', 9120, 554296, CAST(N'1998-10-01T00:00:00.000' AS DateTime), N'660540, г. Екатеринбург, ул. Солнечная, 25, кв. 78', N'boippaxeufrepra-7093@yopmail.com', N'Иванов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462530, N'Анна', N'Глебовна', 2367, 558134, CAST(N'1976-05-31T00:00:00.000' AS DateTime), N'125837, г. Екатеринбург, ул. Шоссейная, 40, кв. 92', N'zapramaxesu-7741@yopmail.com', N'Филиппова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462531, N'Михаил', N'Владимирович', 7101, 669343, CAST(N'1985-11-04T00:00:00.000' AS DateTime), N'125703, г. Екатеринбург, ул. Партизанская, 49, кв. 84', N'rouzecroummegre-3899@yopmail.com', N'Иванов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462532, N'Дмитрий', N'Александрович', 3455, 719630, CAST(N'1998-08-17T00:00:00.000' AS DateTime), N'625283, г. Екатеринбург, ул. Победы, 46, кв. 7', N'ziyeuddocrabri-4748@yopmail.com', N'Власов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462533, N'Екатерина', N'Львовна', 2377, 871623, CAST(N'1984-10-24T00:00:00.000' AS DateTime), N'614611, г. Екатеринбург, ул. Молодежная, 50, кв. 78', N'ketameissoinnei-1951@yopmail.com', N'Серова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462534, N'Ирина', N'Ивановна', 8755, 921148, CAST(N'1976-10-14T00:00:00.000' AS DateTime), N'454311, г. Екатеринбург, ул. Новая, 19, кв. 78', N'yipraubaponou-5849@yopmail.com', N'Борисова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462535, N'Никита', N'Артёмович', 4355, 104594, CAST(N'1999-10-14T00:00:00.000' AS DateTime), N'660007, г. Екатеринбург, ул. Октябрьская, 19, кв. 42', N'crapedocouca-3572@yopmail.com', N'Зайцев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462536, N'Святослав', N'Евгеньевич', 2791, 114390, CAST(N'1985-07-13T00:00:00.000' AS DateTime), N'603036, г. Екатеринбург, ул. Садовая, 4, кв. 13', N'ceigoixakaunni-9227@yopmail.com', N'Медведев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462537, N'Кирилл', N'Алексеевич', 5582, 126286, CAST(N'1976-05-26T00:00:00.000' AS DateTime), N'450983, г. Екатеринбург, ул. Комсомольская, 26, кв. 60', N'yeimmeiwauzomo-7054@yopmail.com', N'Коротков')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462538, N'Арина', N'Максимовна', 2978, 133653, CAST(N'1999-08-13T00:00:00.000' AS DateTime), N'394782, г. Екатеринбург, ул. Чехова, 3, кв. 14', N'poleifenevi-1560@yopmail.com', N'Калашникова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462539, N'Таисия', N'Кирилловна', 7512, 141956, CAST(N'1985-10-13T00:00:00.000' AS DateTime), N'603002, г. Екатеринбург, ул. Дзержинского, 28, кв. 56', N'kauprezofautei-6607@yopmail.com', N'Минина')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462540, N'Серафим', N'Романович', 5046, 158433, CAST(N'1999-04-15T00:00:00.000' AS DateTime), N'450558, г. Екатеринбург, ул. Набережная, 30, кв. 71', N'quaffaullelourei-1667@yopmail.com', N'Наумов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462541, N'Василиса', N'Евгеньевна', 2460, 169505, CAST(N'1999-01-13T00:00:00.000' AS DateTime), N'394060, г. Екатеринбург, ул. Фрунзе, 43, кв. 79', N'jsteele@rojas-robinson.net', N'Воробьева')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462542, N'Александр', N'Андреевич', 3412, 174593, CAST(N'1999-01-07T00:00:00.000' AS DateTime), N'410661, г. Екатеринбург, ул. Школьная, 50, кв. 53', N'vhopkins@lewis-mullen.com', N'Калинин')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462543, N'Милана', N'Владиславовна', 4950, 183034, CAST(N'1999-01-24T00:00:00.000' AS DateTime), N'625590, г. Екатеринбург, ул. Коммунистическая, 20, кв. 34', N'nlewis@yahoo.com', N'Кузнецова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462544, N'Егор', N'Романович', 5829, 219464, CAST(N'1993-09-02T00:00:00.000' AS DateTime), N'625683, г. Екатеринбург, ул. 8 Марта, 20, кв. 21', N'garciadavid@mckinney-mcbride.com', N'Фирсов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462545, N'Агния', N'Александровна', 6443, 208059, CAST(N'1998-09-03T00:00:00.000' AS DateTime), N'400562, г. Екатеринбург, ул. Зеленая, 32, кв. 67', N'cbradley@castro.com', N'Зимина')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462546, N'Андрей', N'Глебович', 7079, 213265, CAST(N'1985-10-23T00:00:00.000' AS DateTime), N'614510, г. Екатеринбург, ул. Маяковского, 47, кв. 72', N'cuevascatherine@carlson.biz', N'Титов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462547, N'Николай', N'Егорович', 8207, 522702, CAST(N'1985-07-27T00:00:00.000' AS DateTime), N'410542, г. Екатеринбург, ул. Светлая, 46, кв. 82', N'thomasmoore@wilson-singh.net', N'Орлов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462548, N'Аиша', N'Михайловна', 9307, 232158, CAST(N'1998-10-04T00:00:00.000' AS DateTime), N'620839, г. Екатеринбург, ул. Цветочная, 8, кв. 100', N'jessica84@hotmail.com', N'Кузнецова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462549, N'Никита', N'Георгиевич', 1357, 242839, CAST(N'1999-04-23T00:00:00.000' AS DateTime), N'443890, г. Екатеринбург, ул. Коммунистическая, 1, кв. 10', N'jessicapark@hotmail.com', N'Куликов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462550, N'София', N'Егоровна', 1167, 256636, CAST(N'1993-10-01T00:00:00.000' AS DateTime), N'603379, г. Екатеринбург, ул. Спортивная, 46, кв. 95', N'ginaritter@schneider-buchanan.com', N'Карпова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462551, N'Дарья', N'Макаровна', 1768, 266986, CAST(N'1976-03-22T00:00:00.000' AS DateTime), N'603721, г. Екатеринбург, ул. Гоголя, 41, кв. 57', N'stephen99@yahoo.com', N'Смирнова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462552, N'Александра', N'Мироновна', 1710, 427875, CAST(N'1999-03-26T00:00:00.000' AS DateTime), N'410172, г. Екатеринбург, ул. Северная, 13, кв. 86', N'lopezlisa@hotmail.com', N'Абрамова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462553, N'Руслан', N'Михайлович', 1806, 289145, CAST(N'1999-10-11T00:00:00.000' AS DateTime), N'420151, г. Екатеринбург, ул. Вишневая, 32, кв. 81', N'lori17@hotmail.com', N'Наумов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462554, N'Никита', N'Матвеевич', 1587, 291249, CAST(N'1997-06-29T00:00:00.000' AS DateTime), N'125061, г. Екатеринбург, ул. Подгорная, 8, кв. 74', N'campbellkevin@gardner.com', N'Бочаров')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462555, N'Давид', N'Ильич', 1647, 306372, CAST(N'1984-03-06T00:00:00.000' AS DateTime), N'630370, г. Екатеринбург, ул. Шоссейная, 24, кв. 81', N'morganhoward@clark.com', N'Соловьев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462556, N'Валерия', N'Дмитриевна', 1742, 316556, CAST(N'1999-09-30T00:00:00.000' AS DateTime), N'614753, г. Екатеринбург, ул. Полевая, 35, кв. 39', N'carsontamara@gmail.com', N'Васильева')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462557, N'Василиса', N'Андреевна', 1474, 326347, CAST(N'1999-04-08T00:00:00.000' AS DateTime), N'426030, г. Екатеринбург, ул. Маяковского, 44, кв. 93', N'kevinpatel@gmail.com', N'Макарова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462558, N'Матвей', N'Викторович', 1452, 339539, CAST(N'1998-08-02T00:00:00.000' AS DateTime), N'450375, г. Екатеринбург, ул. Клубная, 44, кв. 80', N'sethbishop@yahoo.com', N'Алексеев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462559, N'Полина', N'Александровна', 2077, 443480, CAST(N'1976-09-19T00:00:00.000' AS DateTime), N'625560, г. Екатеринбург, ул. Некрасова, 12, кв. 66', N'drollins@schultz-soto.net', N'Никитина')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462560, N'Олеся', N'Алексеевна', 2147, 357518, CAST(N'1999-04-03T00:00:00.000' AS DateTime), N'630201, г. Екатеринбург, ул. Комсомольская, 17, кв. 25', N'pblack@copeland-winters.org', N'Окулова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462561, N'Полина', N'Яновна', 2687, 363884, CAST(N'1976-04-21T00:00:00.000' AS DateTime), N'190949, г. Екатеринбург, ул. Мичурина, 26, кв. 93', N'johnathon.oberbrunner@yahoo.com', N'Захарова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462562, N'Владимир', N'Давидович', 2376, 443711, CAST(N'1998-01-26T00:00:00.000' AS DateTime), N'350501, г. Екатеринбург, ул. Парковая, 2, кв. 7', N'bradly29@gmail.com', N'Зайцев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462563, N'Виталий', N'Даниилович', 2568, 386237, CAST(N'1976-08-11T00:00:00.000' AS DateTime), N'450048, г. Екатеринбург, ул. Коммунистическая, 21, кв. 3', N'stark.cristina@hilpert.biz', N'Иванов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462564, N'Матвей', N'Романович', 2556, 439376, CAST(N'1993-07-12T00:00:00.000' AS DateTime), N'644921, г. Екатеринбург, ул. Школьная, 46, кв. 37', N'bruen.eleanore@yahoo.com', N'Захаров')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462565, N'Степан', N'Степанович', 2737, 407501, CAST(N'1998-09-19T00:00:00.000' AS DateTime), N'614228, г. Екатеринбург, ул. Дорожная, 36, кв. 54', N'percival.halvorson@yahoo.com', N'Иванов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462566, N'Милана', N'Тимуровна', 2581, 441645, CAST(N'1998-05-24T00:00:00.000' AS DateTime), N'350940, г. Екатеринбург, ул. Первомайская, 23, кв. 2', N'javonte71@kuhlman.biz', N'Ткачева')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462567, N'Даниил', N'Иванович', 2675, 427933, CAST(N'1976-01-04T00:00:00.000' AS DateTime), N'344990, г. Екатеринбург, ул. Красноармейская, 19, кв. 92', N'vconnelly@kautzer.com', N'Семенов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462568, N'Вячеслав', N'Дмитриевич', 2967, 434531, CAST(N'1976-07-12T00:00:00.000' AS DateTime), N'410248, г. Екатеринбург, ул. Чкалова, 11, кв. 75', N'anabelle07@schultz.info', N'Виноградов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462569, N'Николь', N'Фёдоровна', 3070, 449655, CAST(N'1976-05-02T00:00:00.000' AS DateTime), N'400839, г. Екатеринбург, ул. 8 Марта, 46, кв. 44', N'nitzsche.katlynn@yahoo.com', N'Соболева')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462570, N'Анна', N'Львовна', 3108, 451174, CAST(N'1985-03-23T00:00:00.000' AS DateTime), N'450539, г. Екатеринбург, ул. Заводская, 3, кв. 81', N'corine16@von.com', N'Тихонова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462571, N'Ульяна', N'Савельевна', 3250, 464705, CAST(N'1999-06-03T00:00:00.000' AS DateTime), N'614591, г. Екатеринбург, ул. Цветочная, 20, кв. 40', N'otha.wisozk@lubowitz.org', N'Кузнецова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462572, N'Анна', N'Германовна', 3392, 471644, CAST(N'1997-07-18T00:00:00.000' AS DateTime), N'400260, г. Екатеринбург, ул. Больничная, 30, кв. 53', N'may.kirlin@hotmail.com', N'Смирнова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462573, N'Анна', N'Давидовна', 3497, 487819, CAST(N'1985-11-06T00:00:00.000' AS DateTime), N'660924, г. Екатеринбург, ул. Молодежная, 32, кв. 59', N'bryana.kautzer@yahoo.com', N'Черепанова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462574, N'Максим', N'Кириллович', 3560, 491260, CAST(N'1999-05-26T00:00:00.000' AS DateTime), N'644133, г. Екатеринбург, ул. Гагарина, 28, кв. 69', N'deborah.christiansen@quigley.biz', N'Григорьев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462575, N'Даниэль', N'Александрович', 3620, 506034, CAST(N'1999-06-14T00:00:00.000' AS DateTime), N'450698, г. Екатеринбург, ул. Вокзальная, 14, кв. 37', N'connelly.makayla@yahoo.com', N'Голубев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462576, N'Юрий', N'Денисович', 3774, 511438, CAST(N'1985-01-26T00:00:00.000' AS DateTime), N'620653, г. Екатеринбург, ул. Западная, 15, кв. 25', N'tatum.collins@fay.org', N'Миронов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462577, N'Михаил', N'Андреевич', 3862, 521377, CAST(N'1976-07-06T00:00:00.000' AS DateTime), N'644321, г. Екатеринбург, ул. Клубная, 32, кв. 10', N'itzel73@anderson.com', N'Терехов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462578, N'Алиса', N'Михайловна', 3084, 535966, CAST(N'1997-02-24T00:00:00.000' AS DateTime), N'603653, г. Екатеринбург, ул. Молодежная, 2, кв. 45', N'arjun39@hotmail.com', N'Орлова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462579, N'Константин', N'Даниилович', 4021, 541528, CAST(N'1993-06-20T00:00:00.000' AS DateTime), N'410181, г. Екатеринбург, ул. Механизаторов, 16, кв. 74', N'ohara.rebeka@yahoo.com', N'Кулаков')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462580, N'Максим', N'Романович', 4109, 554053, CAST(N'1998-05-10T00:00:00.000' AS DateTime), N'394207, г. Екатеринбург, ул. Свердлова, 31, кв. 28', N'danika58@rath.com', N'Кудрявцев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462581, N'Кира', N'Фёдоровна', 4537, 564868, CAST(N'1998-03-14T00:00:00.000' AS DateTime), N'420633, г. Екатеринбург, ул. Матросова, 18, кв. 41', N'janae.bogan@gmail.com', N'Соболева')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462582, N'Арсений', N'Максимович', 4914, 572471, CAST(N'1985-02-18T00:00:00.000' AS DateTime), N'445720, г. Екатеринбург, ул. Матросова, 50, кв. 67', N'vern91@yahoo.com', N'Коновалов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462583, N'Михаил', N'Дмитриевич', 4445, 581302, CAST(N'1999-11-23T00:00:00.000' AS DateTime), N'400646, г. Екатеринбург, ул. Октябрьская, 47, кв. 65', N'mariana.leannon@larkin.net', N'Гусев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462584, N'Варвара', N'Матвеевна', 4743, 598180, CAST(N'1993-09-13T00:00:00.000' AS DateTime), N'644410, г. Екатеринбург, ул. Красная, 17, кв. 69', N'vmoore@gmail.com', N'Суханова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462585, N'Ясмина', N'Васильевна', 4741, 601821, CAST(N'1984-06-24T00:00:00.000' AS DateTime), N'400750, г. Екатеринбург, ул. Школьная, 36, кв. 71', N'damon.mcclure@mills.com', N'Орлова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462586, N'Ксения', N'Константиновна', 4783, 612567, CAST(N'1999-08-01T00:00:00.000' AS DateTime), N'660590, г. Екатеринбург, ул. Дачная, 37, кв. 70', N'grady.reilly@block.com', N'Васильева')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462587, N'Тамара', N'Данииловна', 4658, 621200, CAST(N'1993-05-29T00:00:00.000' AS DateTime), N'426083, г. Екатеринбург, ул. Механизаторов, 41, кв. 26', N'boyd.koss@yahoo.com', N'Борисова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462588, N'Мирон', N'Ильич', 4908, 634613, CAST(N'1985-04-13T00:00:00.000' AS DateTime), N'410569, г. Екатеринбург, ул. Парковая, 36, кв. 17', N'obartell@franecki.info', N'Дмитриев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462589, N'Анна', N'Александровна', 5092, 642468, CAST(N'1985-03-30T00:00:00.000' AS DateTime), N'443375, г. Екатеринбург, ул. Дзержинского, 50, кв. 95', N'reina75@ferry.net', N'Лебедева')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462590, N'Артём', N'Маркович', 5155, 465274, CAST(N'1984-06-02T00:00:00.000' AS DateTime), N'614316, г. Екатеринбург, ул. Первомайская, 48, кв. 31', N'karson28@hotmail.com', N'Пономарев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462591, N'Елена', N'Михайловна', 5086, 666893, CAST(N'1976-05-23T00:00:00.000' AS DateTime), N'445685, г. Екатеринбург, ул. Зеленая, 7, кв. 47', N'damaris61@okon.com', N'Борисова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462592, N'Камиль', N'Максимович', 5333, 675375, CAST(N'1999-06-17T00:00:00.000' AS DateTime), N'614505, г. Екатеринбург, ул. Нагорная, 37, кв. 31', N'carroll.jerod@hotmail.com', N'Моисеев')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462593, N'Дарья', N'Константиновна', 5493, 684572, CAST(N'1984-10-13T00:00:00.000' AS DateTime), N'426629, г. Екатеринбург, ул. Весенняя, 32, кв. 46', N'ron.treutel@quitzon.com', N'Герасимова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462594, N'Мария', N'Марковна', 5150, 696226, CAST(N'1976-12-02T00:00:00.000' AS DateTime), N'603743, г. Екатеринбург, ул. Матросова, 19, кв. 20', N'olen79@yahoo.com', N'Михайлова')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462595, N'Кирилл', N'Максимович', 1308, 703305, CAST(N'1985-05-22T00:00:00.000' AS DateTime), N'450750, г. Екатеринбург, ул. Клубная, 23, кв. 90', N'pacocha.robbie@yahoo.com', N'Коршунов')
INSERT [dbo].[Clients] ([id], [name], [patronymic], [series_passport], [number_passport], [birth_of_date], [adress], [email], [surname]) VALUES (45462596, N'test', N'test', 1241, 412341, CAST(N'2022-11-07T18:25:32.000' AS DateTime), N'test', N'test', N'test')
GO
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (101, 1, N'Иванов', N'Иван', N'Иванович', N'Ivanov@namecomp.ru', N'2L6KZG', N'Иванов.jpeg')
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (102, 1, N'Петров', N'Петр', N'Петрович', N'petrov@namecomp.ru', N'uzWC67', N'Петров.jpeg')
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (103, 3, N'Федоров', N'Федор', N'Федорович', N'fedorov@namecomp.ru', N'8ntwUp', N'Федоров.jpeg')
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (104, 2, N'Миронов', N'Вениамин', N'Куприянович', N'mironov@namecomp.ru', N'YOyhfR', N'Миронов.jpeg')
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (105, 2, N'Ширяев', N'Ермолай', N'Вениаминович', N'shiryev@namecomp.ru', N'RSbvHv', N'Ширяев.jpeg')
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (106, 2, N'Игнатов', N'Кассиан', N'Васильевич', N'ignatov@namecomp.ru', N'rwVDh9', N'Игнатов.jpeg')
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (107, 1, N'Хохлов', N'Владимир', N'Мэлсович', N'hohlov@namecomp.ru', N'LdNyos', N'Хохлов.jpeg')
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (108, 1, N'Стрелков', N'Мстислав', N'Георгьевич', N'strelkov@namecomp.ru', N'gynQMT', N'Стрелков.jpeg')
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (109, 1, N'Беляева', N'Лилия', N'Наумовна', N'belyeva@@namecomp.ru', N'AtnDjr', N'Беляева.jpeg')
INSERT [dbo].[Employees] ([id], [id_position], [surname], [name], [patronymic], [login], [password], [imgHref]) VALUES (110, 1, N'Смирнова', N'Ульяна', N'Гордеевна', N'smirnova@@namecomp.ru', N'JlFRCZ', N'Смирнова.jpeg')
GO
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (1, 101, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (2, 102, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (3, 103, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (4, 104, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (5, 105, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (6, 106, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (7, 107, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (8, 108, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (9, 109, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (10, 110, CAST(N'2022-05-15T13:13:00.000' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (11, 101, CAST(N'2022-10-31T21:12:09.733' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (12, 101, CAST(N'2022-10-31T21:12:42.920' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (13, 101, CAST(N'2022-10-31T21:12:52.050' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (14, 101, CAST(N'2022-10-31T21:12:53.557' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (15, 101, CAST(N'2022-10-31T21:12:59.947' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (16, 101, CAST(N'2022-10-31T21:18:56.233' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (17, 101, CAST(N'2022-10-31T21:21:40.377' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (18, 101, CAST(N'2022-10-31T21:22:38.430' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (19, 101, CAST(N'2022-10-31T21:23:44.880' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (20, 101, CAST(N'2022-10-31T21:25:24.103' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (21, 101, CAST(N'2022-10-31T21:25:52.760' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (22, 101, CAST(N'2022-10-31T21:25:52.763' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (23, 101, CAST(N'2022-10-31T21:26:02.057' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (24, 101, CAST(N'2022-10-31T21:26:02.063' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (25, 101, CAST(N'2022-10-31T21:26:09.840' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (26, 101, CAST(N'2022-10-31T21:26:09.847' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (27, 101, CAST(N'2022-10-31T21:29:28.520' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (28, 101, CAST(N'2022-10-31T21:30:02.577' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (29, 101, CAST(N'2022-10-31T21:30:03.247' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (30, 101, CAST(N'2022-10-31T21:30:10.867' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (31, 101, CAST(N'2022-10-31T21:31:22.080' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (32, 101, CAST(N'2022-10-31T21:31:22.097' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (33, 101, CAST(N'2022-10-31T21:31:40.677' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (34, 101, CAST(N'2022-10-31T21:37:16.777' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (35, 101, CAST(N'2022-10-31T21:37:25.263' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (36, 101, CAST(N'2022-10-31T21:37:30.247' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (37, 101, CAST(N'2022-10-31T21:38:42.890' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (38, 101, CAST(N'2022-10-31T21:39:13.170' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (39, 101, CAST(N'2022-10-31T21:39:40.783' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (40, 101, CAST(N'2022-10-31T21:43:23.440' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (41, 101, CAST(N'2022-10-31T21:43:34.543' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (42, 101, CAST(N'2022-10-31T21:53:23.057' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (43, 101, CAST(N'2022-10-31T21:53:42.940' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (44, 101, CAST(N'2022-10-31T21:54:16.170' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (45, 101, CAST(N'2022-10-31T21:56:06.427' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (46, 101, CAST(N'2022-10-31T21:57:45.880' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (47, 101, CAST(N'2022-10-31T21:58:06.863' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (48, 101, CAST(N'2022-10-31T21:58:21.550' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (49, 101, CAST(N'2022-10-31T22:01:24.500' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (50, 101, CAST(N'2022-10-31T22:14:32.420' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (51, 101, CAST(N'2022-10-31T22:16:13.783' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (52, 101, CAST(N'2022-10-31T22:16:30.993' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (53, 101, CAST(N'2022-10-31T22:16:45.007' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (54, 101, CAST(N'2022-10-31T22:17:07.300' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (55, 101, CAST(N'2022-10-31T22:17:36.917' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (56, 101, CAST(N'2022-10-31T22:17:55.130' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (57, 101, CAST(N'2022-10-31T22:18:32.007' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (58, 101, CAST(N'2022-10-31T22:19:35.930' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (59, 101, CAST(N'2022-10-31T22:20:31.603' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (60, 101, CAST(N'2022-10-31T22:20:32.853' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (61, 101, CAST(N'2022-11-01T20:25:50.283' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (62, 101, CAST(N'2022-11-01T20:27:12.550' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (63, 101, CAST(N'2022-11-01T20:27:51.003' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (64, 101, CAST(N'2022-11-01T20:28:02.123' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (65, 101, CAST(N'2022-11-01T20:33:46.803' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (66, 101, CAST(N'2022-11-01T20:50:32.570' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (67, 101, CAST(N'2022-11-01T20:51:09.070' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (68, 101, CAST(N'2022-11-01T21:08:18.107' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (69, 101, CAST(N'2022-11-01T21:09:07.580' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (70, 101, CAST(N'2022-11-01T21:11:10.963' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (71, 101, CAST(N'2022-11-01T21:35:42.573' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (72, 101, CAST(N'2022-11-01T21:36:00.633' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (73, 101, CAST(N'2022-11-01T21:44:22.970' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (74, 101, CAST(N'2022-11-01T21:57:16.153' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (75, 101, CAST(N'2022-11-01T22:06:56.033' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (76, 101, CAST(N'2022-11-01T22:07:31.340' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (77, 101, CAST(N'2022-11-01T22:08:09.317' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (78, 101, CAST(N'2022-11-01T22:08:19.417' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (79, 101, CAST(N'2022-11-01T22:08:35.097' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (80, 101, CAST(N'2022-11-01T22:10:08.943' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (81, 101, CAST(N'2022-11-01T22:12:53.343' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (82, 101, CAST(N'2022-11-01T22:14:41.613' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (83, 101, CAST(N'2022-11-01T22:15:29.230' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (84, 101, CAST(N'2022-11-01T22:15:48.133' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (85, 101, CAST(N'2022-11-03T16:09:39.583' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (86, 101, CAST(N'2022-11-03T16:21:38.257' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (87, 101, CAST(N'2022-11-03T16:27:34.090' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (88, 101, CAST(N'2022-11-03T16:28:40.003' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (89, 101, CAST(N'2022-11-03T16:29:25.490' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (90, 101, CAST(N'2022-11-03T16:30:00.077' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (91, 101, CAST(N'2022-11-03T16:30:15.200' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (92, 101, CAST(N'2022-11-03T16:31:30.090' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (93, 101, CAST(N'2022-11-03T16:32:39.197' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (94, 101, CAST(N'2022-11-03T16:35:52.570' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (95, 101, CAST(N'2022-11-03T16:37:07.047' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (96, 101, CAST(N'2022-11-03T16:40:33.803' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (97, 101, CAST(N'2022-11-03T16:45:45.030' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (98, 101, CAST(N'2022-11-03T16:46:25.523' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (99, 101, CAST(N'2022-11-03T16:47:14.880' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (100, 101, CAST(N'2022-11-03T16:54:26.440' AS DateTime), 1)
GO
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (101, 101, CAST(N'2022-11-03T17:00:29.137' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (102, 101, CAST(N'2022-11-03T17:02:00.097' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (103, 101, CAST(N'2022-11-03T17:02:32.047' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (104, 101, CAST(N'2022-11-03T20:48:41.977' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (105, 101, CAST(N'2022-11-03T20:49:42.423' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (106, 101, CAST(N'2022-11-03T20:50:47.473' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (107, 101, CAST(N'2022-11-03T20:51:15.033' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (108, 101, CAST(N'2022-11-03T20:51:41.697' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (109, 101, CAST(N'2022-11-03T20:52:30.857' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (110, 101, CAST(N'2022-11-03T20:56:12.477' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (111, 101, CAST(N'2022-11-03T20:57:18.093' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (112, 101, CAST(N'2022-11-03T21:03:21.283' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (113, 101, CAST(N'2022-11-04T21:14:00.480' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (114, 101, CAST(N'2022-11-04T21:14:27.763' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (115, 101, CAST(N'2022-11-04T21:14:49.740' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (116, 101, CAST(N'2022-11-04T21:15:10.463' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (117, 101, CAST(N'2022-11-04T21:15:32.593' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (118, 101, CAST(N'2022-11-04T21:17:40.277' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (119, 101, CAST(N'2022-11-04T21:17:53.617' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (120, 101, CAST(N'2022-11-04T21:18:12.880' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (121, 101, CAST(N'2022-11-05T06:18:47.700' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (122, 101, CAST(N'2022-11-05T06:25:24.007' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (123, 101, CAST(N'2022-11-07T15:12:45.927' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (124, 101, CAST(N'2022-11-07T18:16:18.273' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (125, 101, CAST(N'2022-11-07T18:23:21.307' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (126, 101, CAST(N'2022-11-07T18:25:06.330' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (127, 101, CAST(N'2022-11-07T18:25:29.333' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (128, 101, CAST(N'2022-11-07T18:31:03.200' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (129, 101, CAST(N'2022-11-07T19:57:01.460' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (130, 101, CAST(N'2022-11-07T20:11:20.310' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (131, 101, CAST(N'2022-11-07T20:22:18.070' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (132, 101, CAST(N'2022-11-07T20:22:55.667' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (133, 101, CAST(N'2022-11-07T20:24:00.720' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (134, 101, CAST(N'2022-11-07T20:26:54.980' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (135, 101, CAST(N'2022-11-07T20:28:30.360' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (136, 104, CAST(N'2022-11-08T22:00:28.210' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (137, 104, CAST(N'2022-11-08T22:02:21.847' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (138, 104, CAST(N'2022-11-08T22:03:34.717' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (139, 104, CAST(N'2022-11-08T22:07:30.280' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (140, 104, CAST(N'2022-11-08T22:08:04.477' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (141, 104, CAST(N'2022-11-11T12:52:47.090' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (142, 104, CAST(N'2022-11-11T12:57:14.593' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (143, 104, CAST(N'2022-11-11T13:22:33.103' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (144, 104, CAST(N'2022-11-11T13:23:32.763' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (145, 104, CAST(N'2022-11-11T13:26:00.743' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (146, 104, CAST(N'2022-11-11T13:26:28.160' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (147, 104, CAST(N'2022-11-11T13:27:41.193' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (148, 104, CAST(N'2022-11-11T13:27:59.897' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (149, 104, CAST(N'2022-11-11T13:30:00.467' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (150, 101, CAST(N'2022-11-11T18:32:49.800' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (151, 101, CAST(N'2022-11-11T18:34:32.743' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (152, 101, CAST(N'2022-11-11T18:36:42.990' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (153, 101, CAST(N'2022-11-11T18:39:23.473' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (154, 101, CAST(N'2022-11-11T18:40:27.413' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (155, 101, CAST(N'2022-11-11T18:41:30.123' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (156, 101, CAST(N'2022-11-11T18:41:53.547' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (157, 101, CAST(N'2022-11-11T18:44:34.990' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (158, 101, CAST(N'2022-11-11T18:47:59.717' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (159, 101, CAST(N'2022-11-11T18:51:43.010' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (160, 101, CAST(N'2022-11-11T18:52:58.880' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (161, 101, CAST(N'2022-11-11T18:54:43.990' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (162, 101, CAST(N'2022-11-11T18:54:57.330' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (163, 101, CAST(N'2022-11-11T18:55:40.217' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (164, 101, CAST(N'2022-11-11T18:56:35.980' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (165, 101, CAST(N'2022-11-11T18:57:25.020' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (166, 101, CAST(N'2022-11-11T19:01:18.740' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (167, 101, CAST(N'2022-11-11T19:02:12.247' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (168, 101, CAST(N'2022-11-11T19:04:29.713' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (169, 103, CAST(N'2022-11-15T13:28:12.347' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (170, 103, CAST(N'2022-11-15T13:28:57.367' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (171, 101, CAST(N'2022-11-15T13:31:53.660' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (172, 101, CAST(N'2022-11-28T12:42:06.557' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (173, 101, CAST(N'2022-11-28T12:42:54.733' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (174, 103, CAST(N'2022-11-28T12:46:04.123' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (175, 103, CAST(N'2022-11-28T12:47:57.403' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (176, 104, CAST(N'2022-11-28T12:50:58.470' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (177, 104, CAST(N'2022-11-28T12:54:40.340' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (178, 104, CAST(N'2022-11-28T12:56:05.167' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (179, 104, CAST(N'2022-11-28T12:56:45.013' AS DateTime), 1)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (180, 104, CAST(N'2022-11-28T14:28:05.683' AS DateTime), 2)
INSERT [dbo].[LoginHistory] ([id], [id_employee], [login_date], [id_type_login]) VALUES (181, 104, CAST(N'2022-11-28T14:28:06.950' AS DateTime), 2)
GO
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (1, CAST(N'2022-03-12T09:10:00.000' AS DateTime), 45462526, 1, NULL, 2, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (2, CAST(N'2022-03-13T10:10:00.000' AS DateTime), 45462527, 2, NULL, 10, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (3, CAST(N'2022-03-14T11:10:00.000' AS DateTime), 45462528, 2, NULL, 2, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (4, CAST(N'2022-03-15T12:10:00.000' AS DateTime), 45462529, 1, NULL, 10, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (5, CAST(N'2022-03-16T13:10:00.000' AS DateTime), 45462530, 3, CAST(N'2022-04-16T00:00:00.000' AS DateTime), 6, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (6, CAST(N'2022-03-17T14:10:00.000' AS DateTime), 45462531, 1, NULL, 8, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (7, CAST(N'2022-03-18T15:10:00.000' AS DateTime), 45462532, 1, NULL, 4, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (8, CAST(N'2022-03-19T16:10:00.000' AS DateTime), 45462533, 2, NULL, 6, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (9, CAST(N'2022-03-20T10:00:00.000' AS DateTime), 45462534, 2, NULL, 12, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (10, CAST(N'2022-03-21T11:00:00.000' AS DateTime), 45462535, 1, NULL, 2, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (11, CAST(N'2022-03-22T12:00:00.000' AS DateTime), 45462536, 3, CAST(N'2022-03-22T00:00:00.000' AS DateTime), 10, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (12, CAST(N'2022-03-23T13:00:00.000' AS DateTime), 45462537, 2, NULL, 2, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (13, CAST(N'2022-03-24T14:00:00.000' AS DateTime), 45462538, 2, NULL, 10, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (14, CAST(N'2022-03-25T15:00:00.000' AS DateTime), 45462539, 2, NULL, 6, 102)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (15, CAST(N'2022-03-26T16:00:00.000' AS DateTime), 45462540, 3, CAST(N'2022-04-26T00:00:00.000' AS DateTime), 8, 107)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (16, CAST(N'2022-03-27T17:00:00.000' AS DateTime), 45462541, 1, NULL, 4, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (17, CAST(N'2022-03-28T18:00:00.000' AS DateTime), 45462542, 2, NULL, 6, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (18, CAST(N'2022-03-29T19:00:00.000' AS DateTime), 45462543, 2, NULL, 12, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (19, CAST(N'2022-03-30T12:30:00.000' AS DateTime), 45462544, 1, NULL, 2, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (20, CAST(N'2022-03-31T13:30:00.000' AS DateTime), 45462545, 1, NULL, 10, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (21, CAST(N'2022-04-01T14:30:00.000' AS DateTime), 45462546, 3, CAST(N'2022-04-01T00:00:00.000' AS DateTime), 2, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (22, CAST(N'2022-04-02T15:30:00.000' AS DateTime), 45462547, 1, NULL, 10, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (23, CAST(N'2022-04-03T16:30:00.000' AS DateTime), 45462548, 1, NULL, 6, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (24, CAST(N'2022-04-04T17:30:00.000' AS DateTime), 45462549, 2, NULL, 8, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (25, CAST(N'2022-04-05T18:30:00.000' AS DateTime), 45462550, 2, NULL, 4, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (26, CAST(N'2022-04-06T15:30:00.000' AS DateTime), 45462551, 2, NULL, 6, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (27, CAST(N'2022-04-07T16:30:00.000' AS DateTime), 45462552, 2, NULL, 12, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (28, CAST(N'2022-04-08T17:30:00.000' AS DateTime), 45462553, 3, CAST(N'2022-04-08T00:00:00.000' AS DateTime), 2, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (29, CAST(N'2022-04-09T18:30:00.000' AS DateTime), 45462554, 1, NULL, 10, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (30, CAST(N'2022-04-10T19:30:00.000' AS DateTime), 45462555, 2, NULL, 2, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (31, CAST(N'2022-04-11T10:30:00.000' AS DateTime), 45462556, 2, NULL, 10, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (32, CAST(N'2022-04-12T11:30:00.000' AS DateTime), 45462557, 1, NULL, 6, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (33, CAST(N'2022-04-13T12:30:00.000' AS DateTime), 45462558, 1, NULL, 8, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (34, CAST(N'2022-04-14T13:30:00.000' AS DateTime), 45462559, 1, NULL, 4, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (35, CAST(N'2022-04-15T14:30:00.000' AS DateTime), 45462560, 2, NULL, 6, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (36, CAST(N'2022-04-02T15:30:00.000' AS DateTime), 45462561, 2, NULL, 12, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (37, CAST(N'2022-04-03T16:30:00.000' AS DateTime), 45462562, 2, NULL, 2, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (38, CAST(N'2022-04-04T17:30:00.000' AS DateTime), 45462563, 3, CAST(N'2022-04-04T00:00:00.000' AS DateTime), 10, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (39, CAST(N'2022-04-05T10:15:00.000' AS DateTime), 45462564, 2, NULL, 2, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (40, CAST(N'2022-04-06T11:15:00.000' AS DateTime), 45462565, 1, NULL, 10, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (41, CAST(N'2022-04-07T12:15:00.000' AS DateTime), 45462566, 3, CAST(N'2022-04-07T00:00:00.000' AS DateTime), 6, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (42, CAST(N'2022-04-08T13:15:00.000' AS DateTime), 45462567, 2, NULL, 8, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (43, CAST(N'2022-04-09T14:15:00.000' AS DateTime), 45462568, 2, NULL, 4, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (44, CAST(N'2022-04-01T15:15:00.000' AS DateTime), 45462569, 2, NULL, 6, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (45, CAST(N'2022-04-02T16:15:00.000' AS DateTime), 45462570, 2, NULL, 12, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (46, CAST(N'2022-04-03T10:45:00.000' AS DateTime), 45462571, 2, NULL, 8, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (47, CAST(N'2022-04-04T11:45:00.000' AS DateTime), 45462572, 3, CAST(N'2022-04-04T00:00:00.000' AS DateTime), 6, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (48, CAST(N'2022-04-05T12:45:00.000' AS DateTime), 45462573, 1, NULL, 8, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (49, CAST(N'2022-04-06T13:45:00.000' AS DateTime), 45462574, 1, NULL, 4, 101)
INSERT [dbo].[Orders] ([id], [datetime_create], [id_client], [id_status], [date_close], [rental_time], [id_employee]) VALUES (50, CAST(N'2022-04-07T14:45:00.000' AS DateTime), 45462575, 1, NULL, 6, 101)
GO
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (1, 1, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (2, 1, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (3, 1, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (4, 1, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (5, 2, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (6, 2, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (7, 2, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (8, 2, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (9, 2, 123)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (10, 3, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (11, 3, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (12, 3, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (13, 3, 44)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (56, 12, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (57, 12, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (58, 13, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (59, 13, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (60, 13, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (61, 13, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (62, 14, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (63, 14, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (64, 14, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (65, 14, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (66, 14, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (67, 15, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (68, 15, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (69, 15, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (70, 15, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (71, 15, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (72, 15, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (73, 16, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (74, 16, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (75, 16, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (76, 16, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (77, 17, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (78, 17, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (79, 17, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (80, 17, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (81, 17, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (82, 18, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (83, 18, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (84, 18, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (85, 18, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (86, 19, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (87, 19, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (88, 19, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (89, 19, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (90, 19, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (91, 20, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (92, 20, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (93, 20, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (94, 20, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (95, 20, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (96, 20, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (97, 21, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (98, 21, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (99, 21, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (100, 21, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (101, 22, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (102, 22, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (103, 22, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (104, 22, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (105, 22, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (106, 23, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (107, 23, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (108, 23, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (109, 23, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (110, 24, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (111, 24, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (112, 24, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (113, 24, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (114, 24, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (115, 25, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (116, 25, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (117, 25, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (118, 25, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (119, 25, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (120, 25, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (121, 26, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (122, 26, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (123, 26, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (124, 26, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (125, 27, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (126, 27, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (127, 27, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (128, 27, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (129, 27, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (130, 28, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (131, 28, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (132, 28, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (133, 28, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (134, 29, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (135, 29, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (136, 29, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (137, 29, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (138, 29, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (139, 30, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (140, 30, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (141, 30, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (142, 30, 45)
GO
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (143, 30, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (144, 30, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (145, 31, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (146, 31, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (147, 31, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (148, 31, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (149, 32, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (150, 32, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (151, 32, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (152, 32, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (153, 32, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (154, 33, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (155, 33, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (156, 33, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (157, 33, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (158, 34, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (159, 34, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (160, 34, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (161, 34, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (162, 34, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (163, 35, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (164, 35, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (165, 35, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (166, 35, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (167, 35, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (168, 35, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (169, 36, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (170, 36, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (171, 36, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (172, 36, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (173, 37, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (174, 37, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (175, 37, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (176, 37, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (177, 37, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (178, 38, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (179, 38, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (180, 38, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (181, 38, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (182, 39, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (183, 39, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (184, 39, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (185, 39, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (186, 39, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (187, 40, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (188, 40, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (189, 40, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (190, 40, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (191, 40, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (192, 40, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (193, 41, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (194, 41, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (195, 41, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (196, 41, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (197, 42, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (198, 42, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (199, 42, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (200, 42, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (201, 42, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (202, 43, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (203, 43, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (204, 43, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (205, 43, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (206, 44, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (207, 44, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (208, 44, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (209, 44, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (210, 44, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (211, 45, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (212, 45, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (213, 45, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (214, 45, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (215, 45, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (216, 45, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (217, 46, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (218, 46, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (219, 46, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (220, 46, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (221, 47, 336)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (222, 47, 34)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (223, 47, 31)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (224, 47, 353)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (225, 47, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (226, 48, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (227, 48, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (228, 48, 99)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (229, 48, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (230, 49, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (231, 49, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (232, 49, 92)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (233, 49, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (234, 49, 57)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (235, 50, 88)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (236, 50, 98)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (237, 50, 45)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (238, 50, 89)
INSERT [dbo].[OrdersServices] ([id], [id_order], [id_service]) VALUES (239, 50, 353)
GO
INSERT [dbo].[Positions] ([id], [name]) VALUES (1, N'Продавец')
INSERT [dbo].[Positions] ([id], [name]) VALUES (2, N'Старший смены')
INSERT [dbo].[Positions] ([id], [name]) VALUES (3, N'Администратор')
GO
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (31, N'Прокат опорного оборудования для катка', 500.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (34, N'Обучение катанию на коньках', 1000.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (44, N'Прокат салазок', 450.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (45, N'Прокат набора защитного оборудования', 800.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (57, N'Прокат ледянки', 300.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (88, N'Катание на  катке', 400.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (89, N'Прокат детских коньков', 800.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (92, N'Прокат санок', 300.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (98, N'Прокат шлема', 300.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (99, N'Прокат вартушки', 100.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (123, N'Катание на горках', 500.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (336, N'Прокат коньков', 1200.0000)
INSERT [dbo].[Services] ([id], [name], [price]) VALUES (353, N'Заточка коньков', 500.0000)
GO
INSERT [dbo].[Statuses] ([id], [name]) VALUES (1, N'Новая')
INSERT [dbo].[Statuses] ([id], [name]) VALUES (2, N'В прокате')
INSERT [dbo].[Statuses] ([id], [name]) VALUES (3, N'Закрыта')
GO
INSERT [dbo].[TypesLogin] ([id], [name]) VALUES (1, N'Успешно')
INSERT [dbo].[TypesLogin] ([id], [name]) VALUES (2, N'Неуспешно')
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Positions] FOREIGN KEY([id_position])
REFERENCES [dbo].[Positions] ([id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Positions]
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_Employees] FOREIGN KEY([id_employee])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_Employees]
GO
ALTER TABLE [dbo].[LoginHistory]  WITH CHECK ADD  CONSTRAINT [FK_LoginHistory_TypesLogin] FOREIGN KEY([id_type_login])
REFERENCES [dbo].[TypesLogin] ([id])
GO
ALTER TABLE [dbo].[LoginHistory] CHECK CONSTRAINT [FK_LoginHistory_TypesLogin]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([id_employee])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Clients] FOREIGN KEY([id_client])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Clients]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Statuses] FOREIGN KEY([id_status])
REFERENCES [dbo].[Statuses] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Statuses]
GO
ALTER TABLE [dbo].[OrdersServices]  WITH CHECK ADD  CONSTRAINT [FK_OrdersServices_Orders] FOREIGN KEY([id_order])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrdersServices] CHECK CONSTRAINT [FK_OrdersServices_Orders]
GO
ALTER TABLE [dbo].[OrdersServices]  WITH CHECK ADD  CONSTRAINT [FK_OrdersServices_Services] FOREIGN KEY([id_service])
REFERENCES [dbo].[Services] ([id])
GO
ALTER TABLE [dbo].[OrdersServices] CHECK CONSTRAINT [FK_OrdersServices_Services]
GO
