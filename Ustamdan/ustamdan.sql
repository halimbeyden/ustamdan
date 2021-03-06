USE [Ustamdan]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Areas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Areas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comments]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserFullName] [nvarchar](max) NULL,
	[UserEmail] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[PostedDate] [datetime] NOT NULL,
	[PostId] [int] NULL,
	[UserId] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[PostRefId] [int] NOT NULL,
	[CategotyRefId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PostCategory] PRIMARY KEY CLUSTERED 
(
	[PostRefId] ASC,
	[CategotyRefId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostMedias]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostMedias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MediaUrl] [nvarchar](max) NULL,
	[Type] [int] NOT NULL,
	[Post_Id] [int] NULL,
 CONSTRAINT [PK_dbo.PostMedias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Posts]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[PostContent] [nvarchar](max) NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateModified] [datetime] NOT NULL,
	[MediaURL] [nvarchar](max) NULL,
	[AuthorId] [nvarchar](128) NULL,
	[Type] [int] NOT NULL,
	[IsPublished] [bit] NOT NULL,
	[IsCommentEnabled] [bit] NOT NULL,
	[IsSharingEnabled] [bit] NOT NULL,
	[Language] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[HasLocation] [bit] NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[AreaId] [int] NULL,
 CONSTRAINT [PK_dbo.Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostTag]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTag](
	[PostRefId] [int] NOT NULL,
	[TagRefId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.PostTag] PRIMARY KEY CLUSTERED 
(
	[PostRefId] ASC,
	[TagRefId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tags]    Script Date: 11/16/2016 7:19:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201611131727268_AutomaticMigration', N'Ustamdan.Migrations.Configuration', 0x1F8B0800000000000400ED1DD96EE4B8F13D40FE41E8A724F0BA7D64179B81BD0BAF3D4E8CD81EC3C7206F03BA45B795D5D12BA9676C04F9B23CE493F20B21451D3C2592A20E0F06030CDC3C8AC5AA62B15424ABFEF79FFF1EFDFC1285DE67986641121F2FF677F7161E8C57891FC4EBE3C5367FFAEEC7C5CF3FFDFE7747EFFDE8C5FB58B53BC4ED50CF383B5E3CE7F9E6DD7299AD9E6104B2DD2858A549963CE5BBAB245A023F591EECEDFD65B9BFBF8408C402C1F2BCA3DB6D9C07112C7EA09FA749BC829B7C0BC2ABC487615696A39ABB02AA770D22986DC00A1E2F1EB21C443E887749D38577120600A17107C3A78507E238C9418E907CF790C1BB3C4DE2F5DD061580F0FE750351BB271066B044FE5DD35C771E7B07781ECBA663056AB5CDF2243204B87F581266C977B722EFA2261C22DD7B44E2FC15CFBA20DFF1E2248560E1F103BD3B0D53DC48A0ECEE2F61B2DEC59D76BCAA6AA716012429F8DF8E77BA0DF36D0A8F63B8CD5310EE7837DBC73058FD1DBEDE27BFC2F838DE86218D17C20CD53105A8E8264D3630CD5F6FE15389ED85BFF0966CBF25DFB1EE46F52173B988F3C38385778D06078F21ACD94ECDFB2E4F52F85718C314E4D0BF01790ED318C38005E184D1B9B1F0FFD56848CED07A597857E0E512C6EBFCF97881FE5C78E7C10BF4AB921283873840CB0B75CAD32DEC1AE412C4EB2D580F30D035F81CAC0B427043DE24598E56D52D0C8BDAEC39D890C5B58B6B3E11213A4F93E83609CBE645E1A77B90AE618E304DF89ABB649BAE38148E968D7CB64A2D06632CB5B8D337A9958C751FE4E1F0627B06B3551A6C881E1B782CCC6AB47FE468FEC3CF0BD1FC144934A27C35162EBA0FB02A10B8D60D0B896CF01438007605FD003CDC5E0E4E81936DFE9CA48DC44A06DA3FF8D1C140187C3D48A57D48A1216D2EB2626D67CF0D9D7F49908602B105A8D3248A90A4BD8F712F07F0EE9E0126A02378C36D17DC4077481B6D33813F55B121DA7F03D965B202B4BAB0A700D2825BBFA6C05982786F2E3397C86C7401076F7F827AD7DD89C9566BBE1157DBADB811575BB43606C56A6FC1A1ACE7B1288A1578903A534C4E419A6C3318168A4E8D10D78CC38BA995A3C73631C73287EB240D608B0145B711F0ABAA54C8D5F5A698DD83750B4EA496C30617CAF1286A6418681B75279B0DB2B60A5CD0675A6A62DF715DDFA095D763CF34543FE7A8793CC6778AB05B63D658EDD6EF2310842DF81E7CFF83037C8B5190D5F814A451FF6DF70664D99724F5D13EF63CFCD60B57DB14AD26B4D7469BE1ADEBE72486D7DBE8112FD2F1C672C69AFB2FC93958A16F26571656B2FA35D922FBCFC7B6FA43BE124D774D004ED03959AD60969D236186FE69B26D3E81545F92EDE0F0AAEDF06BE8AEBFAE91D57B68088248BE5771AAFF53D5B4D9B8E42D845D4CD1CC7453BD4CD641AC876AD5548D2A69D1896AD9CC14550C4C0FD3B2A51AD1A241279EA4552F23A1F26960780587DACC84ABDA2F7A926DAE61BE5BF5DE2570CF53041329E95F7705B03B9E76E7C6C638D0B5310EF71F9F0E7FFCFE07E01FFEF06778F8FDD7E855C2A49CC2BE29D8C7D81E43ED4DC5481F41B8753D94D56A289480FBD550809DFF6A28D044C59F031F5B25CBEE1E5563045EAB7D25CFA66B8EC36CECE5C04C73ECC1C7D10156CB05EF45EE570B863AFFC522176569533C211BA99F4AFB57F8CE44E2B06BA4F43B599C56153DDFA0336378E3829C6DA46D4E81819C189A470EDA1252FAEF5E8D05A4EAF84D3E24638D72103FE689E6FC0EFDF57CD6D20B00129FB6D5DAB9076BE36583FA7C5B3153AD98F949B1FA94432AB9CCF9879DBE2787C5E6EA9EF4FB26BB92B1B0B1898F354691613C58D781C46007EAA514589EA98F7525062F155838C37B5F62C1A0BA0ECB87FAF4305131520D5372EB1369D02819BA5C709A3295A62E5D7270DA820A6920A252F86755A814954EDCB6EEBFBADFC617F75B391C9EFAA0074B9A7CB7A6F9FDA96CD688B1582B08B3A48999486F23EEC39E7C065E64E721B20AEAA95A7CE7E3EAFE1B3B62820FD3F015318DD6962CE5AF203E4AAD242C2A6CB1C2857DBCD813D8C434FE18F830A91BEF8B5423F4E9A059B57339A01A013505DDCE52F094EBD28DBA6828A79D001D8630A79A1F5890BAB96A6141E88F01FC5212BB823305954FFC081F68E851B9BA75A64762243AB10FD27E34E66CB19E12CD409B82DC3730F60B7DAF49F0CD264D3EEB4BF52DFC275C198BF5499625ABA0A01FA544C83D4776B0F7B1EF292F3DB2EE3BB4A5211206F86C1A29FAE3C59F04CC65C0EAEFC10618B96EC902DBDBDD1529810C0198E2ED07E00B4619625B10E7A2D510C4AB600342D5D05C074D430393B606CDD79CC10D623BC24C453B9D31AB0BADE2B83578CEF4E9A2C7D192627CBB3C28EE7FA8F8D9751984622E7F1D91E5F33E4F9AA30F31D1DCDEC98ABCF53A05D90AF8A2F58324DD37C44F227C929B105D626D2586ED141B4126DB49A28380F2BC6B0A012D6FFDE80A007F05686E02CADD3D52086879396114016529368180B2247973024A2E7BE9F29FBBF93537F164AF9C29A493782546114E865C13C826438FD98B26FDA0A4DD42E35E97F435F8D80729FA52EDDAFA63F018CDFE6388A96501D62F00A71313F6994F2B7B156F7EDA8546CADA56C012F1A1EE83B48AA4F9E4EBC3D80E04C5D7443DD78AECB0973AB0A8AF37389D6F716CD78A16FB52A9E71CD903C106587100ED6A62CC69810A1DF9D1817040643243E98183CD62B0D273B2D1475074323AEA0C5B9D474DA2E798439C2E76B2273A4E248439079A6253942132A2B0D0249DBDED24393051F1B7EDF444B49865D6F240D67CCB99CDF8A6BC9A4A2388A09A123A83CB6FF10E2288E4F40CDF34403D686F71A521CE1E8B6B082FB22B306862A5973C2B8F1279C9C0C0EF604E791EB385D79CD8318E59419FB19DCB9B414267B2DF75742E4F20C5917955D80147F0E2C9804A5C7D0660AB6766AD604B078D01D8F24D582B54B21A35F850D8C42A669406730718FA3EA200A631433BA090FB6042FFC2D0EB4280EC12D2E1AB3DB70344174DA5F4A416224BD4321C04552FC48AE0F541DB294A8D6CBD740475D2766E42752F972DBF11B013D198A4EAEDA738639D53029373026A32A52668A145874F9F8225D306CEA954E9836E2AC95CD526CEEA5E54E21CCB0A2A5593714EA57229761349E22E357098F62211EBDC5450A89C486F0231C15D543A45E2AAEB74D659E815D63DD74543DBC972816314736EF13BE97A9ECC292077347170AA4DD515359AFD55490AB9174ACB0F654304C1F34401A1F1754301621B28E62E7AA43A7C52E6F365BC5054778257EF39B2B755C569AAFD53DD1E2A9A2FB599D4325FA94FAA8B623DE64C6C75F59C458F4BB7CFC576CE8C976500DD26BB4929CEBCCB7DA0EB40A02620DD8974BFF71DED6ED5F5CEFA03B5AE3B5A92B8C265C1D1521180F8E80A6C3641BCA602129725DE1D89467CFADD9D79A4DE88C058AE183AF39FD3F54879928235E46AB10CF9F03C48B3FC0CE4E011E07B68A77E2434937E8E2B3E4DAA21E92F6E9183D5074BD51AFF5D7D2973B1BA24DF1D0D0DCFD1B4F02A286608B96F06B19B87A3418310A492BBD3A749B88D62B5F745DD9BDC82A6FB93127D08CD43271A4A532A423A5A7214105C350291053F1ACB312D7E1245DA879FB2ED40839FF26EC3F0F39E04B8A5019445FA3098C79E3424A6421F1E13A29686C75418E04787A165F0A32BCCE035A16879804D8D3EC4261E2D0DAD29D587D41C37D390D487D02D9251DC916604A328D187C04492654494AE3081C787936581F2B52690F9C0B22C64BE76486DA782545DA6A6E15465FA5098D8B13428A6C2647E7919F8959D5F556A00A98921CB806A8A0D564179ED9659038AABB893ED2F2ACBD1C05EE03CEA16A643178461769D26D0260DA3291D534B950F5669106591210C2A08A3008CAA33D807993899CC46C8D418E810361826A34AD82A032CE990970C927485153C0545E52D0C64460872C9C88F506BA2C3847097AC2E13AA2D604B70E6EB0C34A5181193519A62B53EEC263C260DB2299D8D26969C2DF451CBE299A4B962D680318C6AAE2E66F02C338342451AA40151C586B0CA588202B0B27C96A2A43C23B21325720EDD4F941430D43A8709D0C7AA9CD6A8826A984CD43D46ADB7451D54C33313D8198885EA54CC4E2A8A73EF7E42210731AC82A8AEDDD05054577126F5009527457DDD40D223304D5F90A2EF30FABF091F27BA225223A358DF349F88BDAD6772FAECAD2FD0987357DD75AEDE5BD7BEBE37E30D561C62EA8B09BE27652E21D25E73158E37C3CCFAD0B1D7BA2F6FAE592C7B55CFE14CFA260618BF6F37356610257E13AA786CBFA6F4BCC0E2AC808ECFC51F3D54E566D078DEA99E49B4537BF616AE3BABB6A7456B66CD8EA53287E60A7BAA2F9AB1FC8DAD766B956FAD6D95E20B0B923520BFDC2512498B450540F9957D6A742BC494EF06AC65A71527A49FFCA078977291E1B86075801C8DE9F217396CA5A2B909D629124D53993CA86C5935E5F97B6E3DE4E1163EB99308FEEA9C255E0450F1D6C40C3737AC2557DF3A984A1AC9D829313C5514A3EFEECD8387F475404B8C1088011827DCB1E29BD4FB445952FFAEEF5895F79BBA33BF0B179E4893855739DA909DF58AAC9A681737D8BDFB2D3C0D83C25CAA1A5C8138788248168AE0598B83BDFD032E7FFC7C72B92FB3CC6722F82A12BAB30C1B2142658029DA19C5B74730CAF8334857CF20FD43045EFE4843B2093B6D00CC2C25F9D741F77B3A1F782FC24B22E4F782C7DC8D72819F98BBDB473F7257B9BBAD81F1B9BB7BCD92CFCF5D01933CC0BC887DF872BCF857D1F39D77F18F4F55E71DEF438AB4E53B6FCFFBB71889D60C21E222A524B87FF6EEC7C0068C3C73B71D2C79D66E1B583DD495088C0D226E436D49266EBB59E54CF6ECA730011650F824DC7660D81CDC81341EBF642D14BDD895E064F368BDA134C63ED2A804F5CAB6CA2EDC4B76FBEA09264CBF748A45406B33A4E469826D56842C4570BFB52E4B03DC6FC31553FDBA82E78484AA54BE560A4A95C657B68B6B999DD2B4BE36A82953FADAAC8AE66E92A93950F52C8A77BC8BEC210E7EDBA28A7B440DCE2CE05696ABB47D926B426FD6CE661355185965A4ABAE4D669737B5D7421773A30EF1D1D571EBE7AB4C1DEA6CABBE1133833A833DA568DBA703B5101E658827B1A99B549A53AB0936C1A61136A4EB189C551CDDBCD99D824F7739A9555D9FD5987D3C95DD06F87A921FCABC59663B737BBAF6BE8DE146154E64BEB1710CB24B2FEBBC59D2B3377E1CB080BAF3330B979C4B1FB898ACCFDA6BCD26EB33D9184CF685092D24079F2AB686E64CFC7B768E033CE9091C07EA1B1B7A346F3BB0175BB75E85E866163598F9FA293AAA96909E4A61B1374381E96C808611272D4D033326AA6E44CC9E7F0DE266A357FD1C70CD2659170951495036CBA9C506C7B288F16E97CF431EBD46475F7BA68918BEF6E45B3348172389AC4BE134518AAD31E349B73DDF35F076CD3F91D6CC84AD8CB7AC10B611D3658D2D6CAA07BE331736A3A45833933512355A216AE3E5BE1A5BD2144F2C6626683A29AE7A88D79C4CA7F1C541DF8A7A5309AC5CE4AAA29EC818E6A6B2E5BF36331C305DF5125DFE79A87868331EE35B1F8998327FA01D8571A6F03868A6F97A0BA2D3F2D2DDCCB93085FCC89E83D0218665FC53F1EE2B942323DE8E2D4B9D4FA9C69227E553A71969A222210B377C7736BEB7A07FE4211466AA7A946FD02876F1AC92B0E9AB11145DE68D28276D6FFC46CC5928791FE5D6A8AD732CD15B9B6EAEC3596B05750C0EB956989CD792370C637CCC8E2F01137CD29A08C3A48E0DCBFC9373493939A5E3AC2348C83CBC6693E79414735DF03C2DDFFA532765CA5C91E4D9F8F1C27F4C10C7C9D1A73C4D1D0F966C550258522C032BCF5D2360CBAB421171BE85740ED9E61AE6F2D431FC9092E32E6150499BF6611569ECDAC62E4F3F5AC72EDBB48FAD480ED7363659D5AD439326ED23CBD3D2C844A7F4B849E5A70A4CA31022457E2F7E94E69B5A18A4A9928DD192418B1FA3B0A805F045A90CB23463958077B5758B68573552AC15B996946CEF607917BBF559DDC208B65AC570ED2CA6F5478E7420255BEA4A0EFC301946697DDCA4F811F713FE3381EA410AF8DD7DC67944D9F9B6E70A569A258C6E5604D2764F94E1D2863A210AB369284242BB27CA5059429D9084566CF278C8FD09421F5F5A67057535F9A1F4832C5A9C836CA09DA80A3D1863810B52E76C9A4266CECE6C9F8AB858BDA7CB6F98621836F793AEF20D764F5A1E7A4B7ADA42A1AF427DBAC93359495BB29B0EC565CA506102B3B99C5E07575B42A9F18E6C0A510992234ECE51BA56739E71763913ECD7DDB41EFA656475B5A50C3BD98153B14A377FD9C63F8A0961907A550CFF77B4BCDDC6F85112F97506B360DD80C0414663B862FC46759B8BF829A9DC571C465513E1B96D0E7C908393340F9EC02A47D538FE4610A3755BC434C051601EA17F117FD8E69B6D8EA60CA3C790D1C8D80DD6367E915F96C5F9E843F15633733105846680DF717D887FD906A15FE37D2EB9CEAF0081FD6BE5A33CCCCB1C3FCE5BBFD690AE9358135049BEDA2D780FA34D8880651FE23BF019DAE086C4EF12AEC1EAB5898EA002D2CD0896EC47670158A720CA4A184D7FF413C9B01FBDFCF47F7769177625D10000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[Areas] ON 

INSERT [dbo].[Areas] ([Id], [Name], [Language]) VALUES (1, N'Marmara Bölgesi', N'tr')
INSERT [dbo].[Areas] ([Id], [Name], [Language]) VALUES (2, N'Ege Bölgesi', N'tr')
INSERT [dbo].[Areas] ([Id], [Name], [Language]) VALUES (3, N'Karadeniz Bölgesi', N'tr')
INSERT [dbo].[Areas] ([Id], [Name], [Language]) VALUES (4, N'İç Anadolu Bölgesi', N'tr')
INSERT [dbo].[Areas] ([Id], [Name], [Language]) VALUES (5, N'Akdeniz Bölgesi', N'tr')
INSERT [dbo].[Areas] ([Id], [Name], [Language]) VALUES (6, N'Doğu Anadolu Bölgesi', N'tr')
INSERT [dbo].[Areas] ([Id], [Name], [Language]) VALUES (7, N'Güneydoğu Anadolu Bölgesi', N'tr')
SET IDENTITY_INSERT [dbo].[Areas] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9e62cb5c-53c7-4a29-a611-521f9bdae44b', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'af8a6968-2147-494d-881f-e83c110da415', N'Author')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'be35dcf7-e46e-42d4-83c5-509482d1623d', N'Standard')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1aec8b9f-3769-48be-ad22-d0a099124fc8', N'9e62cb5c-53c7-4a29-a611-521f9bdae44b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6fc81e4b-7bb5-4c10-a945-5468777a3134', N'9e62cb5c-53c7-4a29-a611-521f9bdae44b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cce3b270-4739-47ac-88be-1e6f68b768e9', N'9e62cb5c-53c7-4a29-a611-521f9bdae44b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0b913e3f-42b0-4b17-a394-6a77784ee8c8', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'37b1d6be-d7a1-4944-9336-78390e034b8b', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a303ba8-a361-4b66-81b0-399a88d7168a', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4d514657-2401-465d-8e72-c35dc2d43f9a', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6635d6dd-02f8-4ba1-8fd1-b9d31083a94e', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'73721a44-5d8b-472b-8dbc-790b17bcc3c9', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b544fde5-02d2-4769-9d8a-b49de1a2d3ab', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c4994047-320d-4195-b600-032f2e4241b5', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e1e481d5-9e49-4a4c-976b-6ddf99b3f01b', N'af8a6968-2147-494d-881f-e83c110da415')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0b913e3f-42b0-4b17-a394-6a77784ee8c8', N'Barış Dikici', 0, N'baris.dikici@ustamdan.com', 0, N'AGsDEyPwXVYzvE78hD0tdNfHqHdF3sKFFQeinUt8sNOjAB6i3K2y6J/aEst56EhiKA==', N'1dfa1afe-7f87-452c-be57-b32a994d8620', NULL, 0, 0, NULL, 1, 0, N'baris.dikici@ustamdan.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'1aec8b9f-3769-48be-ad22-d0a099124fc8', N'Halim Beyden', 0, N'halimbeyden@gmail.com', 0, N'AKmPFZmFOiHJBQCEqkBsAlQAUmaMx4LujpySM6G2ntbT4gO3eTwb8hFCy8wi1RwHJw==', N'ba94ecef-e6f8-43bc-b3ac-e6f7a80d3a6a', NULL, 0, 0, NULL, 0, 0, N'halimbeyden@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'37b1d6be-d7a1-4944-9336-78390e034b8b', N'Nuray Okutucu', 0, N'nuray.okutucu@ustamdan.com', 0, N'AODJEHpdrJIaznXZxCpIsie3R3YjZEFTErsa5bo/29m2kgMsPu+jtZz0LCd/x1CXlA==', N'27646b34-448e-4c5b-aa84-c281cab825a1', NULL, 0, 0, NULL, 1, 0, N'nuray.okutucu@ustamdan.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3a303ba8-a361-4b66-81b0-399a88d7168a', N'Jeyan İdil Aslan', 0, N'jeyan.idil.aslan@ustamdan.com', 0, N'ABo+ei0GyTNb6CFhzBqUTtpOnkJFqew3l7nqnwTFKv2Z/Dy016nepQGe2sITjVuP1w==', N'6158e6db-f9e1-40f7-8640-422a55227b7a', NULL, 0, 0, NULL, 1, 0, N'jeyan.idil.aslan@ustamdan.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4d514657-2401-465d-8e72-c35dc2d43f9a', N'Pelin Sürmeli', 0, N'pelin.surmeli@ustamdan.com', 0, N'AMDBbtUT40QG+A19mg2m3/8V+jSMVn5txl5lB6knVRyhcl3OQHdm08TYPonB7mFr3A==', N'49acfd83-6a58-4b21-89bc-edfe563fcb40', NULL, 0, 0, NULL, 1, 0, N'pelin.surmeli@ustamdan.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', N'Emre Bostancı', 0, N'emre.bostanci@ustamdan.com', 0, N'AAG8xshyWSXZpu/Z4MMhpBsubVzsJebAHs+OhGd/F79gJxTBv/3N6vdca9/USYmM8A==', N'298d91b8-19d1-4c87-9c6e-f0b29bfcfdbc', NULL, 0, 0, NULL, 1, 0, N'emre.bostanci@ustamdan.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6635d6dd-02f8-4ba1-8fd1-b9d31083a94e', N'Berkay Cerci', 0, N'berkay.cerci@ustamdan.com', 0, N'AEqIEXySUw34TyravgINP2C99c47SxaX97o9v+fU12eBUaGBhJvGqzGJAwph28/8SQ==', N'e66e392f-7f55-434d-8cbe-d61d7d8f39dc', NULL, 0, 0, NULL, 1, 0, N'berkay.cerci@ustamdan.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6fc81e4b-7bb5-4c10-a945-5468777a3134', N'Gökçe Gülcüler', 0, N'gulculergokce@gmail.com', 0, N'AMUN3tPRAfy/GccTTqqxBz3dh/GGKs6mmpzZmvk9wR2JmScpmumjwlNrVzsnuIdjTw==', N'ff07c3d5-f436-40ae-a191-f863ffc963b9', NULL, 0, 0, NULL, 1, 0, N'gulculergokce@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'73721a44-5d8b-472b-8dbc-790b17bcc3c9', N'Ogün Aygün', 0, N'ogun.aygun@ustamdan.com', 0, N'AL83wbS31a4ArN0LKAaL2nO8BZY6uIBUr8GcyamO8Pay3ckPXED4yyubm0YUWS0JCg==', N'7a3d899f-fd73-4ad8-8a15-fffd4f09c61e', NULL, 0, 0, NULL, 1, 0, N'ogun.aygun@ustamdan.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b544fde5-02d2-4769-9d8a-b49de1a2d3ab', N'Deniz Fırat', 0, N'deniz.firat@ustamdan.com', 0, N'AJkXuReiuGEDt4OvauFgOCdeCtb0t+Bz4fL10PXPWrnYxh+4LkeX9jFdnX7AEu9Cvw==', N'3b811314-440e-4459-a130-7a0279701813', NULL, 0, 0, NULL, 1, 0, N'deniz.firat@ustamdan.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c4994047-320d-4195-b600-032f2e4241b5', N'Duygu Dedeoğlu', 0, N'duygu.dedeoglu@ustamdan.com', 0, N'AH4bWC7hnqXNUiGLwnj6FeNL60kgGaUKiFnBMZCxda80AtmrceDJTlgBWXYaNVtquw==', N'2e390744-49eb-441f-a1f4-dfc6e7fb2e34', NULL, 0, 0, NULL, 1, 0, N'duygu.dedeoglu@ustamdan.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cce3b270-4739-47ac-88be-1e6f68b768e9', N'Berkin Şafak Şener', 0, N'berkinsafaksener@gmail.com', 0, N'AAaMgMoeF6OIqhGkodUv7kWLuhtXW4dm+BZUHzJZJGzHrYc0syXZPCrZ6mUCPaGBOA==', N'041a3eb7-54a3-45eb-8d35-cf95a98112d4', NULL, 0, 0, NULL, 1, 0, N'berkinsafaksener@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Fullname], [Type], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e1e481d5-9e49-4a4c-976b-6ddf99b3f01b', N'Aybüke Taşdirek', 0, N'aybuke.tasdirek@ustamdan.com', 0, N'AIkKOnoZLV1y6anZyt17QpZihLD0M+ZD48ZJJilPuZjnAQ4HnfQSvOTgziG6v4l/5Q==', N'829d4a04-91b8-4e16-9dd2-419e9ebd844c', NULL, 0, 0, NULL, 1, 0, N'aybuke.tasdirek@ustamdan.com')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [Language]) VALUES (1, N'İnsan', NULL, N'tr')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Language]) VALUES (2, N'Zanaat', NULL, N'tr')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Language]) VALUES (3, N'Müze', NULL, N'tr')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Language]) VALUES (4, N'Mutfak', NULL, N'tr')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Language]) VALUES (5, N'Gezi', NULL, N'tr')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Language]) VALUES (6, N'Edebiyat', NULL, N'tr')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Language]) VALUES (7, N'Mitoloji', NULL, N'tr')
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (1, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (2, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (3, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (4, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (5, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (6, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (7, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (8, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (9, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (10, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (11, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (12, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (13, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (14, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (15, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (16, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (17, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (18, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (19, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (20, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (21, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (22, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (23, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (24, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (25, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (26, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (27, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (28, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (29, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (30, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (31, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (32, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (33, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (34, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (35, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (36, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (37, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (38, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (39, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (40, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (41, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (42, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (43, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (44, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (45, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (46, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (47, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (48, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (49, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (50, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (51, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (52, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (53, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (54, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (55, 1)
INSERT [dbo].[PostCategory] ([PostRefId], [CategotyRefId]) VALUES (56, 1)
SET IDENTITY_INSERT [dbo].[PostMedias] ON 

INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (1, N'/Content/Media/_Hugging the Ship_ by Ceyhun (Jay) Isik _ CC BY.jpg', 0, 1)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (2, N'/Content/Media/_Hugging the Ship_ by Ceyhun (Jay) Isik _ CC BY.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (9, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY copy.jpg', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (10, N'/Content/Media/_Mehmet Akpekmez_ by Kadir Tahtacı _ CC BY.jpg', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (13, N'/Content/Media/_Mehmet Akpekmez_ by Kadir Tahtacı _ CC BY.jpg', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (14, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY copy.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (15, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (16, N'/Content/Media/_Mehmet Akpekmez_ by Kadir Tahtacı _ CC BY.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (17, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY copy.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (18, N'/Content/Media/_Mehmet Akpekmez_ by Kadir Tahtacı _ CC BY.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (19, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY copy.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (20, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (21, N'/Content/Media/_Mehmet Akpekmez_ by Kadir Tahtacı _ CC BY.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (22, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY copy.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (23, N'/Content/Media/_Mehmet Akpekmez_ by Kadir Tahtacı _ CC BY.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (24, N'/Content/Media/adem abi.jpg', 0, 5)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (25, N'/Content/Media/adem abi.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (26, N'/Content/Media/adem abi.jpg', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (27, N'/Content/Media/adem abi.jpg', 0, 6)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (28, N'/Content/Media/ahmet dayı.jpg', 0, 7)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (29, N'/Content/Media/ahmet dayı.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (30, N'/Content/Media/ahmet dayı.jpg', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (31, N'/Content/Media/ahmet dayı.jpg', 0, 8)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (32, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY copy.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (33, N'/Content/Media/_Mehmet Akpekmez_ by Kadir Tahtacı _ CC BY.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (34, N'/Content/Media/_Mehmet Akpekmez_ by Kadir Tahtacı _ CC BY.jpg', 0, 4)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (35, N'/Content/Media/_Mehmet Akpekmez_ by Kadir Tahtacı _ CC BY.jpg', 0, 3)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (36, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY copy.jpg', 0, 9)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (37, N'/Content/Media/_Hüseyin Emmi_ by Emre Bostancı _ CC BY copy.jpg', 0, 10)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (38, N'/Content/Media/DSC8462bw-1.jpg', 0, 11)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (39, N'/Content/Media/DSC8462bw-1.jpg', 0, 12)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (40, N'/Content/Media/alahattin-kan.-fot.20100407_1301.jpg', 0, 13)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (41, N'/Content/Media/alahattin-kan.-fot.20100407_1301.jpg', 0, 14)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (42, N'http://www.youtube.com/embed/QyuzbiegyK0', 1, 15)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (43, N'http://www.youtube.com/embed/QyuzbiegyK0', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (44, N'http://www.youtube.com/embed/QyuzbiegyK0', 1, 16)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (45, N'/Content/Media/_Hugging the Ship_ by Ceyhun (Jay) Isik _ CC BY.jpg', 0, 2)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (46, N'http://www.youtube.com/embed/GpIXzRKbYQ4', 1, 17)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (47, N'http://www.youtube.com/embed/GpIXzRKbYQ4', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (48, N'http://www.youtube.com/embed/GpIXzRKbYQ4', 1, 18)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (49, N'/Content/Media/kme.png', 0, 19)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (50, N'/Content/Media/kme.png', 0, 20)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (51, N'/Content/Media/14201358592_c2edd7e002_k.jpg', 0, 21)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (52, N'/Content/Media/14201358592_c2edd7e002_k.jpg', 0, 22)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (53, N'http://www.youtube.com/embed/fynDQjTRVd8', 1, 23)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (54, N'http://www.youtube.com/embed/fynDQjTRVd8', 1, 24)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (55, N'/Content/Media/Screen-Shot-2016-07-15-at-00.00.19.png', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (56, N'http://www.youtube.com/embed/vMTkMbkCAn8', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (57, NULL, 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (58, N'/Content/Media/Screen-Shot-2016-07-15-at-00.00.19.png', 0, 26)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (59, N'http://www.youtube.com/embed/vMTkMbkCAn8', 1, 26)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (60, N'/Content/Media/20160624_152852.jpg', 0, 27)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (61, N'/Content/Media/20160624_152852.jpg', 0, 28)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (62, N'/Content/Media/Kemence.jpg', 0, 29)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (63, N'http://www.youtube.com/embed/bb8L99puSR8', 1, 29)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (64, N'/Content/Media/Kemence.jpg', 0, 30)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (65, N'http://www.youtube.com/embed/bb8L99puSR8', 1, 30)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (66, N'/Content/Media/22Kemaliye22-by-Evgeni-Zotov-CC-BY-2.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (67, N'http://www.youtube.com/embed/xns7H5GaWUg', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (68, N'/Content/Media/22Kemaliye22-by-Evgeni-Zotov-CC-BY-2.jpg', 0, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (69, N'http://www.youtube.com/embed/xns7H5GaWUg', 1, NULL)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (70, N'/Content/Media/IMG_3233.jpg', 0, 33)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (71, N'/Content/Media/IMG_3233.jpg', 0, 34)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (72, N'/Content/Media/iu.jpeg', 0, 35)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (73, N'/Content/Media/Screen-Shot-2016-08-01-at-12.11.35.png', 0, 35)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (74, N'/Content/Media/iu.jpeg', 0, 36)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (75, N'/Content/Media/Screen-Shot-2016-08-01-at-12.11.35.png', 0, 36)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (76, N'/Content/Media/Screen-Shot-2016-07-27-at-08.55.42.png', 0, 37)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (77, N'http://www.youtube.com/embed/1OX3WjeyQyA', 1, 37)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (78, N'/Content/Media/Screen-Shot-2016-07-27-at-08.55.42.png', 0, 38)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (79, N'http://www.youtube.com/embed/1OX3WjeyQyA', 1, 38)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (80, N'/Content/Media/iu-3.jpeg', 0, 39)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (81, N'/Content/Media/iu-3.jpeg', 0, 40)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (82, N'/Content/Media/5799602870_4ce2df0cf8_o.jpg', 0, 41)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (83, N'/Content/Media/5799602870_4ce2df0cf8_o.jpg', 0, 42)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (84, N'/Content/Media/Andr22.jpg', 0, 43)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (85, N'/Content/Media/Andr37.jpg', 0, 43)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (86, N'/Content/Media/Ganymede_Waters_Zeus_as_an_Eagle_by_Thorvaldsen.jpg', 0, 43)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (87, N'/Content/Media/Andr22.jpg', 0, 44)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (88, N'/Content/Media/Andr37.jpg', 0, 44)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (89, N'/Content/Media/Ganymede_Waters_Zeus_as_an_Eagle_by_Thorvaldsen.jpg', 0, 44)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (90, N'/Content/Media/1-Fotoğraf-Emre-Bostancı.jpg', 0, 45)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (91, N'/Content/Media/1-Fotoğraf-Emre-Bostancı.jpg', 0, 46)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (92, N'/Content/Media/katranci.jpg', 0, 47)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (93, N'/Content/Media/katranci.jpg', 0, 48)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (94, N'/Content/Media/Ruşen-4.jpg', 0, 49)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (95, N'http://www.youtube.com/embed/T7cXOoZIMEY', 1, 49)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (96, N'/Content/Media/Ruşen-4.jpg', 0, 50)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (97, N'http://www.youtube.com/embed/T7cXOoZIMEY', 1, 50)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (98, N'/Content/Media/c193.jpg', 0, 51)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (99, N'/Content/Media/c195.jpg', 0, 51)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (100, N'/Content/Media/c196.jpg', 0, 51)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (101, N'/Content/Media/c197.jpg', 0, 51)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (102, N'/Content/Media/c198.jpg', 0, 51)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (103, N'/Content/Media/cinnah-19.jpg', 0, 51)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (104, N'/Content/Media/c193.jpg', 0, 52)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (105, N'/Content/Media/c195.jpg', 0, 52)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (106, N'/Content/Media/c196.jpg', 0, 52)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (107, N'/Content/Media/c197.jpg', 0, 52)
GO
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (108, N'/Content/Media/c198.jpg', 0, 52)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (109, N'/Content/Media/cinnah-19.jpg', 0, 52)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (110, N'/Content/Media/s-efb02a99d49e1fda39a5ba43e6533483e9c0140b-1170x620.jpg', 0, 53)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (111, N'/Content/Media/IMG_6385.jpg', 0, 53)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (112, N'/Content/Media/IMG_6376.jpg', 0, 53)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (113, N'/Content/Media/IMG_6368.jpg', 0, 53)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (114, N'/Content/Media/IMG_6367.jpg', 0, 53)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (115, N'/Content/Media/IMG_6362.jpg', 0, 53)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (116, N'/Content/Media/s-efb02a99d49e1fda39a5ba43e6533483e9c0140b-1170x620.jpg', 0, 54)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (117, N'/Content/Media/IMG_6385.jpg', 0, 54)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (118, N'/Content/Media/IMG_6376.jpg', 0, 54)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (119, N'/Content/Media/IMG_6368.jpg', 0, 54)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (120, N'/Content/Media/IMG_6367.jpg', 0, 54)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (121, N'/Content/Media/IMG_6362.jpg', 0, 54)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (122, N'/Content/Media/ww22Eregli_CAN22-by-canonim-CC-BY-2 (1).jpg', 0, 55)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (123, N'/Content/Media/ww22Eregli_CAN22-by-canonim-CC-BY-2 (1).jpg', 0, 56)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (124, N'/Content/Media/Screen-Shot-2016-07-15-at-00.00.19.png', 0, 25)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (125, N'http://www.youtube.com/embed/vMTkMbkCAn8', 1, 25)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (126, N'/Content/Media/22Kemaliye22-by-Evgeni-Zotov-CC-BY-2.jpg', 0, 32)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (127, N'http://www.youtube.com/embed/xns7H5GaWUg', 1, 32)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (128, N'/Content/Media/22Kemaliye22-by-Evgeni-Zotov-CC-BY-2.jpg', 0, 31)
INSERT [dbo].[PostMedias] ([Id], [MediaUrl], [Type], [Post_Id]) VALUES (129, N'http://www.youtube.com/embed/xns7H5GaWUg', 1, 31)
SET IDENTITY_INSERT [dbo].[PostMedias] OFF
SET IDENTITY_INSERT [dbo].[Posts] ON 

INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (1, N'Girizgah', NULL, N'<p>S&ouml;ze başlamaya en &ccedil;ok martılar teşnedir şu d&uuml;nyada. Duraksamadan, ikilemeden meramlarını anlatır, basarlar kahkahayı k&ouml;rfezlere doğru. Olası insanlığımız kadar samimi, dost meclisleri kadar senlibenlidir martılar. <em>Yazıhane</em>nin pervazına teklifsizce konup &ccedil;ığlık koparan martıların aksisedasıdır bu mecradaki yazılar. Onlar ki b&uuml;t&uuml;n bir şehri anlatır. <em>İnsanları, hayvanları, kavgası ve r&uuml;zgarıyla</em>&hellip;</p>
<p>Şehrin kaldırımlarını mutedil bir hevesle arşınlayacak bu sayfalar. Hem siyaha, hem beyaza olanca ger&ccedil;ekliğiyle değinecek. Belki de bundan &ouml;t&uuml;r&uuml; insan ile başlayacak s&ouml;ze. Hani şu <em>d&uuml;nyada şarkılar misali yaşayan</em>, yıkan ve yaratan insan&hellip;</p>
<p>Baharın girizg&acirc;hı İstanbul erguvanları kadar iddialı değil s&ouml;z&uuml;m&uuml;z belki. Şaşkın martılarla da aşık atacak değil kalemimiz. Ferah bir meltem olsa yeter bu satırlar kadim &ccedil;arşılardan i&ccedil;eri. Emekhanelere bir nefes, bir ışık, bir merhaba belki.</p>
<p>S&ouml;z&uuml;m&uuml;z &ouml;z, kalemimiz sarih olacak; penceremiz işleyen ve ışıldayan mekanlara a&ccedil;ılacak bu mecrada. K&uuml;lt&uuml;re, emeğe ve zanaate değgin yazacak, &uuml;retecek ve duyuracağız. İnsanla başlayan yolculuk makamlarla s&uuml;recek, yaz sıcağında ferahfeza duyacak, memleketi duyumsayacağız. &Ccedil;arşılardan sokaklara, Anadolu&rsquo;dan İstanbul&rsquo;a uzanacak satırlar, sesler ve g&ouml;r&uuml;nt&uuml;ler. Kapı herkese a&ccedil;ık kalacak sonra. Hatra d&uuml;şt&uuml;ğ&uuml;m&uuml;zde, sizden <em>yazıhane</em>ye akacak g&ouml;r&uuml;p işittiğiniz anlar. Hasılı bir harmanyeri bu mecra. İzimiz de s&ouml;z&uuml;m&uuml;z de ortak ve candan. Nihayetinde her şey,</p>
<p><em>&ldquo;Sizin i</em><em>&ccedil;in, insan kardeşlerim,</em></p>
<p><em>Her şey sizin i</em><em>&ccedil;in;</em></p>
<p><em>Gece de sizin i</em><em>&ccedil;</em><em>in, g&uuml;nd&uuml;</em><em>z de;</em></p>
<p><em>G&uuml;nd&uuml;z g&uuml;n ışığı, gece ay ışığı;</em></p>
<p><em>Ay ışığında yapraklar;</em></p>
<p><em>Yapraklarda merak;</em></p>
<p><em>Yapraklarda akı</em><em>l;</em></p>
<p><em>G&uuml;n ışığında binbir yeş</em><em>il;</em></p>
<p><em>Sarılar da sizin i</em><em>&ccedil;in, pembeler de;</em></p>
<p><em>Tenin avuca değişi,</em></p>
<p><em>Sıcaklığı,</em></p>
<p><em>Yumuşaklığı;</em></p>
<p><em>Yatıştaki rahatlık;</em></p>
<p><em>Merhabalar sizin i</em><em>&ccedil;in</em></p>
<p><em>&hellip;&rdquo;</em></p>
<p>Orhan Veli Kanık</p>
<p>&nbsp;</p>
<p class="Body">Ustamdan.com</p>
<p class="Body">26.05.2016</p>
<p class="Body">Berkin Şafak Şener</p>', CAST(N'2016-11-13 19:28:09.133' AS DateTime), CAST(N'2016-11-13 19:28:09.133' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (2, N'Prologue', NULL, N'<p>Gulls are the thirstiest for speaking up in this world. Without hesitation and getting a second one, they express what they want and burst into laughter toward the gulf. Gulls are as sincere as our potential humanity and as familiar as fellow councils. The writings in this media are the echoes of the gulls screaming by perching familiarly on the sill of <em>Yazıhane.</em> They tell the whole city. <em>With its humans, animals, battle and wind&hellip;</em></p>
<p>These pages will pound the pavements of the city with a gentle fancy. It will mention both black and White with all their reality. Therefore, it will firstly begin to speak about human, who knows. <em>Living like the songs in that world,</em> devastating and creating human, you know&hellip;</p>
<p>Maybe our words are not as assertive as redbuds in İstanbul known as the proem of the spring. It isn&rsquo;t also likely that our writings will keep up with the confused gulls. It is enough if these lines can be a refreshing breeze blowing in from ancient bazaars. A breath, a light or maybe a hello to the worker houses.</p>
<p>Our word will become brief, will our pen be explicit; our window will open to working and shining places in this media. We will write, produce and pronounce concerning culture, labor and craft. The journey beginning with human will continue with modes. We will hear &lsquo;ferahfeza&rsquo;, a mode in Classical Turkish Music, in the summer heat and will sense the hometown. Lines, sounds and images will reach out from bazaars to streets, Anatolia to İstanbul. Then the door will remain to be open to all. At the moment we are remembered, the moments you see and hear will flow into <em>Yazıhane </em>thanks to you. In brief, this media is a threshing field. Both our path and word are common and sincere. After all is said and done, everything is,</p>
<p><em>FOR YOU</em></p>
<p><em>For you, my fellow humans,</em></p>
<p><em>Everything is for you,</em></p>
<p><em>Nights are for you, days are for you;</em></p>
<p><em>Daylight is for you, moonlight is for you;</em></p>
<p><em>Leaves in the moonlight;</em></p>
<p><em>Wonder and wisdom in the leaves,</em></p>
<p><em>Myriad greens in daylight,</em></p>
<p><em>Yellow is for you, and pink.</em></p>
<p><em>The feel of the skin on the palm,</em></p>
<p><em>Its warmth,</em></p>
<p><em>Its softness,</em></p>
<p><em>The comfort of lying down;</em></p>
<p><em>For you are all the greetings</em></p>
<p><em>&hellip;&rdquo;</em></p>
<p>Orhan Veli Kanık</p>
<p>Source: Halman, Tal&acirc;t Sait; Warner, Jayne L.. <em>A Brave New Quest: 100 Modern Turkish Poems. </em>Syracuse University Press<em>, </em>2006. P.64</p>
<p>&nbsp;</p>
<p>Ustamdan.com</p>
<p>26.05.2016</p>
<p>Berkin Şafak Şener</p>', CAST(N'2016-11-13 19:36:51.943' AS DateTime), CAST(N'2016-11-14 16:40:50.387' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (3, N'Mehmet Usta', NULL, N'<p>Mehmet Akpekmez:</p>
<p>&ldquo;He is 89 years old. He is working as a shoe mender in İskilip for 74 years. His father forced him to return İskilip when he was living in the city at a young age. It took him a year in İskilip to earn the amount which he could win at the city in a month. Thus, he still expostulates on his father&hellip;&rdquo;</p>', CAST(N'2016-11-13 19:40:12.443' AS DateTime), CAST(N'2016-11-14 16:11:17.107' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (4, N'Mehmet Usta', NULL, N'<p>Mehmet Akpekmez:</p>
<p>&ldquo;89 yaşında. İskilip&rsquo;te ayakkabı tamirciliği yapıyor. 74 yıldır bu işle uğraşıyor. Kendisi gen&ccedil; yaşta b&uuml;y&uuml;kşehirde yaşarken babasının zoruyla İskilip&rsquo;e geri d&ouml;nm&uuml;ş. İskilip&rsquo;te 1 yıl da kazandığını b&uuml;y&uuml;kşehirde 1 ayda kazanıyormuş. Bu y&uuml;zden babasına hala sitemli&hellip;&rdquo;</p>', CAST(N'2016-11-13 19:40:55.853' AS DateTime), CAST(N'2016-11-14 16:09:28.737' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (5, N'Adem Abi ', NULL, N'<p>Adem Abi. Garip derlerdi. &Ccedil;orum&rsquo;un İskilip&rsquo;inde emeğiyle kavruldu. &Ccedil;ok konuşmazdı. Kimse bilmez pek hikayesini, artık yok ve &uuml;stadın şu dizeleri belki de en iyi anlatan onu:</p>
<p>&ldquo;Bir kuş oldun g&ouml;ky&uuml;z&uuml;nde, u&ccedil;amadın sen</p>
<p>Nehir oldun ırmak oldun, taşamadın sen</p>
<p>&Ccedil;ocuk oldun sokaklarda, oynamadın sen</p>
<p>Doğdun da b&uuml;y&uuml;d&uuml;n ama yaşamadın sen.&rdquo;</p>
<p>Ahmet Kaya</p>', CAST(N'2016-11-13 19:47:23.987' AS DateTime), CAST(N'2016-11-13 19:47:23.987' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (6, N'Adem Abi ', NULL, N'<p>Adem Abi. People called him <em>garip</em> (poor-fellow). He stood on his own feet thanks to his labor in İskilip in &Ccedil;orum. He didn&rsquo;t talk too much. Nobody knows his story very well, now he is gone and these lines of the master perhaps describe him the best:</p>
<p>&ldquo;You became a bird in the sky, you couldn''t fly</p>
<p>You became a river, a stream, you couldn''t flood</p>
<p>You became a child in the streets, you didn''t play</p>
<p>You were born and grew up but you didn''t live.&rdquo;</p>
<p><em>Ahmet Kaya</em></p>', CAST(N'2016-11-13 19:48:12.467' AS DateTime), CAST(N'2016-11-13 19:51:29.737' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (7, N'Ahmet Dayı', NULL, N'<p>Ahmet Dayı. Y&ouml;rede bilinen adıyla &ldquo;toka&rdquo;. Neden bu lakabın takıldığını sorduğumuzda, &ldquo;Kırk&ouml;y&rsquo;de bir &ccedil;oban vardı; ona derlerdi. O &ouml;ld&uuml;; koyunlar &ccedil;ocuklarına, adı bana miras kaldı&rdquo; diyor. Yaşı yetmişi aşkın, beş kardeşin en b&uuml;y&uuml;ğ&uuml;. Kendini bildiğinden beri &ccedil;obanlık yapmakta ve bırakmak gibi bir niyeti de yok.</p>', CAST(N'2016-11-13 19:54:42.897' AS DateTime), CAST(N'2016-11-13 19:54:42.897' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (8, N'Ahmet Dayı', NULL, N'<p>Uncle Ahmet. He is known as &ldquo;toka&rdquo; (&ldquo;buckle&rdquo; in English) in the region. When we asked why this nickname was given to him, he said, &ldquo;There was a shepherd in Kırk&ouml;y; they called him as it. He died; his children inherited his sheep, his name also passed to me.&rdquo; He&rsquo;s over seventy years old and the eldest of five siblings. He&rsquo;s a shepherd for as long as he&rsquo;s known himself and he has no intention of quitting his job.</p>', CAST(N'2016-11-13 19:55:37.383' AS DateTime), CAST(N'2016-11-13 19:56:42.540' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (9, N'Hüseyin Emmi', NULL, N'<p>H&uuml;seyin Emmi:</p>
<p>&ldquo;H&uuml;seyin Emmi is 88 years old. He was beginning the apprenticeship when he was only 15. He had been working for three years without receiving any amount of money. At that time, there were about 30 saddlers in the bazaar. He opened his own shop in 1945. He had done military service for five years. He&rsquo;s still working in the same place. He purchased the shop which he had rented at one time. When he says &ldquo;I feel myself like over the hill in the recent year&rdquo;, we also understand he has yet noticed his tiredness which remains from the life time ticking away while he is working. He is upset about the decrease in the number of schools.&rdquo;</p>', CAST(N'2016-11-14 16:12:26.657' AS DateTime), CAST(N'2016-11-14 16:12:26.657' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (10, N'Hüseyin Emmi', NULL, N'<p>H&uuml;seyin Emmi:</p>
<p>&ldquo;H&uuml;seyin emmi, 88 yaşında. 15 yaşında &ccedil;ıraklığa başlıyor. &Uuml;&ccedil; yıl para almadan &ccedil;alışıyor. O sıra 30 semerci var arastada. 1945&rsquo;te kendi d&uuml;kkanını a&ccedil;ıyor. Beş yıl askerlik yapmış. Hala aynı d&uuml;kkanında &ccedil;alışıyor. Zamanında kiraladığı d&uuml;kkanını satın almış. &ldquo;Son bir yıldır kendimi yaşlanmış hissediyorum&rdquo; diyerek &ccedil;alışmayla ge&ccedil;en yaklaşık bir asrın verdiği yorgunluğu yeni fark ettiğini anlıyoruz. Merkeplerin azalmasından dertli.&rdquo;</p>', CAST(N'2016-11-14 16:13:26.610' AS DateTime), CAST(N'2016-11-14 16:13:26.610' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (11, N'İnsanın Masalı', NULL, N'<p>Ve işte orada, fanus gibi bu g&ouml;k kubbenin altında toplanmıştı insanlar. Derler ki onlar, milyonlarca yıllık yıldızların tozundan yaratıldılar. Belki de bu y&uuml;zden hep en karanlık gecelerde g&ouml;ky&uuml;z&uuml;ne bakıp geldikleri yıldızın hayalini kurdular. S&ouml;yleyebilirim ki, sevgili dostlarım, onlar daha yery&uuml;z&uuml;ne indikleri ilk g&uuml;n&uuml;nden beri değişmemiştir.</p>
<p>İnsanların zaman kavramı bizimkinden daha farklıdır, bizim bir &ouml;mr&uuml;m&uuml;ze onlar binlerce &ouml;m&uuml;r sığdırır. Ve bir yıldızın kaymasını izlemek gibidir bir insan &ouml;mr&uuml;n&uuml; izlemek. K&uuml;&ccedil;&uuml;k bir pırıltıdan yanan bir topa d&ouml;n&uuml;ş&uuml;r &ouml;nce. &Ccedil;ocukluğun saf bir ışık h&uuml;zmesinden gen&ccedil;liğin heyecanlı patlamalarına&hellip; Mekanlar, y&uuml;zyıllar, hikayeler değişse de hep aynı duygularla yanar i&ccedil;i. Nefret eder, hırslanır, aşık olur, yalan s&ouml;yler, kandırılır, hayal kırıklığı yaşar, kaybeder, par&ccedil;alanır. Ve zamanın sonsuzluğunda bu aynı g&ouml;k kubbeyi paylaşan her bir insan, g&uuml;n doğumunu seyretmeye gider b&uuml;t&uuml;n k&ouml;t&uuml; duygularını yakmak i&ccedil;in g&uuml;n&uuml;n ilk ışıklarıyla. Ilık &ouml;ğleden sonra g&uuml;neşini bekler hayallere dalmak i&ccedil;in. G&uuml;n batımlarını bekler şarap i&ccedil;in ve geceyi, sevişmek i&ccedil;in. B&uuml;t&uuml;n bu duygu patlamaları i&ccedil;inde &ouml;mr&uuml; ilerledik&ccedil;e insan, uzay boşluğunda ivmeyle hızlanarak ilerleyen bir g&ouml;k taşı gibi alevlere teslim olur ve s&ouml;nmeye başlar. Vakti azalır git gide. Yandık&ccedil;a k&uuml;le d&ouml;ner, yandık&ccedil;a azalır, yandık&ccedil;a s&ouml;ner. Ve g&ouml;ky&uuml;z&uuml;nde serbest d&uuml;ş&uuml;şe ge&ccedil;tiği koyu lacivert atmosferin i&ccedil;inde bir Van Gogh tablosu gibi &ccedil;iğ sarı bir iz bırakır.</p>
<p>Ve biter. Bu hep b&ouml;yledir, oysa herkes eşsiz bir hikaye bıraktığını sanır d&uuml;nyaya. Aslında aynı şarkıda dans eden devasa bir balodan başka bir şey değildir insanlık. Bazen kol kola, bazense karşı karşıya&hellip; Her bir ayak izinde aynı duygularını okur, her bir kalıntısında aynı hikayesini dinleriz insanların. İşte bu y&uuml;zden, sevgili dostlarım, bir yıldızın kaymasını izlemek gibidir insan &ouml;mr&uuml;n&uuml; izlemek. İnsanlığı anlamak i&ccedil;in yıldızların hikayelerine kulak vermeniz yeterlidir&hellip;</p>', CAST(N'2016-11-14 16:17:38.617' AS DateTime), CAST(N'2016-11-14 16:17:38.617' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (12, N'Tale of the One', NULL, N'<p>And there they were, people gathered under the same vault of heaven. Legend has it, they were created by stardust. Maybe they were looking at the sky in the darkest nights to imagine their homelands, who knows&hellip; But one thing for sure, my beloved friends, that they have never changed since the first day they landed to the planet earth&hellip;<br />Time is relatively faster in earth. One lifespan of us equals thousands of human lives. And watching a human living is like watching a comet falling. First, a little spark occurs, then the explosions&hellip; Pure vibes of the childhood transforms to the passionate youth. Different lands, different eras, different stories of them, yet the feelings are the same&hellip; They get furious and hate, they fall in love but lie, they get disappointed and they lose. Within the fragments of eternity, they all go watch the sunrise to burn their tears with the first lights of the day. They all wait the soft afternoon sun to dream. They all drink wine when evenfalls and make love for the sake of the night. After all those memories of their life, like a meteorite accelerating upon the space, they all burn. Suddenly, time disappears. They become more ash rather than flesh, they become less and less, and eventually they burn out. They left a bright yellow scar on the dark sky after freefall, like brush strokes of Van Gogh&hellip;<br />And then, that is it. Everyone seeks a unique melody, yet they are nothing else but a huge crown of dancers for the same song. Sometimes in joy, sometimes in sorrow, but always sharing with the same steps with other people from thousands years ago. In other words, my beloved friends, it is like watching a comet falling. All you need to do is to hear the stories of the stars&hellip;</p>', CAST(N'2016-11-14 16:18:03.847' AS DateTime), CAST(N'2016-11-14 16:18:03.847' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (13, N'Anatolia: The Cradle', NULL, N'<p>The tale of Anatolian lands begins with &ldquo;human being&rdquo;. Laments for the dead people reverberate with the stories of nomadic tribes who inscribed their cults into gigantic stones in G&ouml;beklitepe.<br />In &Ccedil;atalh&ouml;y&uuml;k, prehistoric wall paintings whisper the stories of people who had lived in the first settlements. Stylish-embroidered standards belonging to Hittites keep the secret of war which played a role in the isolated lands of the Bronze Age. The wine glasses of Ancient Greece get us to watch the tales of Pagan gods and goddesses in the shade of the mythology. The Roman shipwrecks unearth the centuries before. Even a coin, which dropped out of anyone&rsquo;s pocket at any moment of the time in Anatolia, tells us thousands of lives having existed in these lands. Anatolia keeps crafting the traces of the past civilizations which had lived in these lands into its culture, music, architecture and artworks.<br />Therefore, tracing people with thousands of years of story is so long and satisfying journey in Anatolia where hundreds of communities with many different beliefs come to life and gives chance to live for all living creatures in every region from the forest to the arid land. The story of every human being is hidden in each one of embroideries of their belongings, each of wall writings and each stone carving which they left behind. Understanding Anatolia is to understand people.<br />And traditions which these thousand-year stories were embroidered are currently breathing in these lands. Anatolian people are still crafting their bitter sweet memories into their weavings and the warmth of Southeastern Anatolia is still melting the metal. Every artefact which our Usta created meticulously and patiently hides behind their story. Usta tell us sometimes the story of their lifetime and sometimes the great story of the humanity.<br />Understanding Anatolia is to understand people.</p>', CAST(N'2016-11-14 16:19:07.820' AS DateTime), CAST(N'2016-11-14 16:19:07.820' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'en', 0, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (14, N'Başlangıçların Diyarı Anadolu', NULL, N'<p>Anadolu topraklarının &ouml;yk&uuml;s&uuml; insan ile başlar. G&ouml;beklitepe&rsquo;de k&uuml;ltlerini devasa taşlara kazımış g&ouml;&ccedil;ebe kabilelerin hik&acirc;yelerinde, &ouml;l&uuml;lerine yaktığı ağıtlar yankılanır. Tarih &ouml;ncesi devirlerden kalan &Ccedil;atalh&ouml;y&uuml;k&rsquo;&uuml;n duvar resimleri, ilk yerleşim yerlerinde yaşamış insanların hik&acirc;yelerini fısıldar. Hitit&rsquo;lerin şık işlemeli standartları, bronz &ccedil;ağın ıssız topraklarında rol bulmuş savaş sırlarını saklar. Antik Yunanların şarap kadehleri, mitolojinin g&ouml;lgesinde pagan tanrıların masallarını izletir. Roma&rsquo;nın gemi batıkları, y&uuml;zyıllar &ouml;ncesini g&uuml;n y&uuml;z&uuml;ne &ccedil;ıkarır. Anadolu topraklarında zamanın herhangi bir anında herhangi birinin cebinden d&uuml;şm&uuml;ş bir para bile bize bu topraklarda birikmiş binlerce hayatı anlatır. &Uuml;zerinden ge&ccedil;miş medeniyetlerin izlerini k&uuml;lt&uuml;r&uuml;ne, m&uuml;ziğine, mimarisine ve sanat eserlerine işler durur Anadolu.</p>
<p>İşte bu y&uuml;zden, birbirinden bambaşka inan&ccedil;lara sahip y&uuml;zlerce topluluğun hayat bulduğu, ormanından &ccedil;orak arazilerine kadar her coğrafyada yaşamı &ccedil;oğaltan Anadolu&rsquo;da, binlerce yıllık hik&acirc;yesi ile insanın izini s&uuml;rmek &ouml;ylesine uzun ve doyurucu bir yolculuktur. Var olmuş her bir insanın &ouml;yk&uuml;s&uuml;, hayatından geriye bıraktığı her bir eşyanın işlemesinde, her bir duvar yazısında, her bir taş kazısında gizlidir. Anadolu&rsquo;yu anlamak, insanı anlamaktır.</p>
<p>Ve &ouml;yledir ki, bin yıllık bu &ouml;yk&uuml;lerin işlendiği gelenekler hala bu topraklarda nefes almakta. Hala acısını, tatlısını dokumasına işlemekte Anadolu insanı ve hala G&uuml;neydoğu&rsquo;nun sıcağı metali eritmekte&hellip; Bir Usta&rsquo;nın &ouml;zenle, sabırla yarattığı her bir eser, ardında onun &ouml;yk&uuml;s&uuml;n&uuml; gizlemekte&hellip; Bir Usta, koca bir &ouml;mr&uuml; anlatmakta bize bazen. Bir Usta, koca bir &ouml;yk&uuml;s&uuml;n&uuml; anlatmakta insanlığın&hellip;</p>
<p>Anadolu&rsquo;yu anlamak, insanı anlamaktır&hellip;</p>', CAST(N'2016-11-14 16:19:38.500' AS DateTime), CAST(N'2016-11-14 16:19:38.500' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (15, N'From Galata', NULL, N'<p>Galata is remarkably worldly-wise for the city.</p>
<p>It is the one that separates guest from host, right from wrong and sake from waiter.</p>
<p>Dilemma of victims,</p>
<p>Breath of timid strays,</p>
<p>It sees tearful flagstones, reveals them.</p>
<p>It makes inspiration from old-Istanbul last for all living creatures.</p>
<p>The secret, that it has should be questioned, helps carrying weight on its shoulders for centuries.</p>
<p>Hopeless romantics do not know..</p>
<p>That glorious Galata,</p>
<p>It stands the test of time thanks to stonemason!</p>
<p><em>Video: Barış Dikici &nbsp; &nbsp; Text: Berkin Şafak Şener</em></p>', CAST(N'2016-11-14 16:21:13.593' AS DateTime), CAST(N'2016-11-14 16:21:13.593' AS DateTime), NULL, N'0b913e3f-42b0-4b17-a394-6a77784ee8c8', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (16, N'Galata’dan', NULL, N'<p>Şehrin g&ouml;rm&uuml;ş ge&ccedil;irmiş y&uuml;z&uuml;d&uuml;r Galata.</p>
<p>Yolcu ile hancıyı, haklı ile haksızı, s&acirc;ki ile garsonu ayırt edendir o.</p>
<p>Yokuşlara vuranların derdini,</p>
<p>sokak kedilerinin sıkılgan nefesini,</p>
<p>kaldırımların ağlamaklı taşlarını bilir, bildirir Galata.</p>
<p>Yetirir aziz İstanbul&rsquo;un ilhamını c&uuml;mle mahlukata.</p>
<p>Nedir sırrı diye sormalı bazen, asırlar var nice derbederin y&uuml;k&uuml; omuzlarında.</p>
<p>Bilmez m&uuml;zmin romantikler&hellip;</p>
<p>Şu meşhur Galata var ya,</p>
<p>Taş ustasının maharetiyle ayakta!</p>
<p><em>Video: Barış Dikici &nbsp; &nbsp; Yazı: Berkin Şafak Şener</em></p>', CAST(N'2016-11-14 16:21:13.687' AS DateTime), CAST(N'2016-11-14 16:21:55.360' AS DateTime), NULL, N'0b913e3f-42b0-4b17-a394-6a77784ee8c8', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (17, N'Girizgâh II', NULL, N'<p>Nazlı nazlı tırmanır y&uuml;celere mor salkımlar İstanbul sokaklarında. A&ccedil;ık se&ccedil;ik yerlisi gibi g&ouml;r&uuml;nmek i&ccedil;in şehrin, usulca sarılır emektar pervazlara. M&uuml;şfik bir hicaz sarkar o pervazlardan caddeler boyu.</p>
<p><em>Ela g</em><em>&ouml;</em><em>zlerine kurban olduğum</em></p>
<p><em>Y&uuml;z&uuml;ne bakmaya doyamadı</em><em>m ben</em></p>
<p><em>İbret i</em><em>&ccedil;</em><em>in gelmiş derler cihana</em></p>
<p><em>Noktadır benlerin sayamadım ben</em></p>
<p>Bir ustanın aşkıdır, yahut aşkların ustasıdır hicaz. İlmek ilmek dokunduk&ccedil;a uzanır g&ouml;n&uuml;llerden şehirlere. Ağlamaklı kaldırımlar inledik&ccedil;e, bakır ustanın elinde d&ouml;v&uuml;ld&uuml;k&ccedil;e, cam &uuml;flendik&ccedil;e nefes nefes, taş sabırla işlendik&ccedil;e, oya &ouml;r&uuml;ld&uuml;k&ccedil;e bir yaşam boyu, insanca yaşar şehrin sarmaşıkları.</p>
<p>&Ccedil;ok beklememeli hayattan&hellip; Olup olacağı serin bir Haziran akşamı. A&ccedil;ıp a&ccedil;acağı bir gonca g&uuml;l. Konup konacağı bir minik kırlangı&ccedil;. Yaşanıp yaşanacağı bir nefeslik hayat.</p>
<p>Madem <em>harcanıp gidiyor &ouml;m&uuml;r dediğin</em>, ustaca yaşamalı hayatı. &ldquo;<em>Yaşadım&rdquo;</em>diyebilmen i&ccedil;in.</p>', CAST(N'2016-11-14 16:42:07.237' AS DateTime), CAST(N'2016-11-14 16:42:07.237' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (18, N'Prologue II', NULL, N'<p>Purple bunches climb to the skies delicately in the streets of İstanbul. They surround the veteran mouldings silently in order to look like the native of the city clearly. A loving hejaz dangles from those mouldings throughout the streets.</p>
<p><em>Whom I was a victim of her hazel eyes</em></p>
<p><em>I couldn&rsquo;t take my eyes off your face</em></p>
<p><em>She came to the universe as an example, they say</em></p>
<p><em>I couldn&rsquo;t count your moles being spots on your face</em></p>
<p>Hejaz is the love of one usta or the master of the love. It reaches out from the hearts to the cities by weaving stitch by stitch. The ivies of the city can live humanely as long as the tearful pavements are moaning, the copper is beaten with the hands of one usta, the breath is blown to the glass, the stone is proceeded patiently, the lace is knitted throughout the lifetime.</p>
<p>People shouldn&rsquo;t expect too much from the life&hellip; A chilly evening of June&hellip;That&rsquo;s what&rsquo;s gonna happen. A rosebud is&hellip;what&rsquo;s gonna blossom. A little martlet is what&rsquo;s gonna settle. And a breath of life is what&rsquo;s gonna live.</p>
<p>Then <em>The life, you say, is slipping by</em>, people should live their life masterly. That&rsquo;s because you can say <em>&ldquo;I lived&rdquo;.</em></p>', CAST(N'2016-11-14 16:42:49.233' AS DateTime), CAST(N'2016-11-14 16:42:53.500' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (19, N'Kurukahveci Mehmet Efendi', NULL, N'<div class="wpb_column vc_column_container vc_col-sm-6">
<div class="vc_column-inner ">
<div class="wpb_wrapper">
<div class="wpb_single_image wpb_content_element vc_align_left">
<figure class="wpb_wrapper vc_figure">
<div class="vc_single_image-wrapper   vc_box_border_grey">&nbsp;</div>
<div class="vc_single_image-wrapper   vc_box_border_grey">T&uuml;rk kahve k&uuml;lt&uuml;r&uuml;n&uuml;n en eski temsilcilerinden biri olan Kurukahveci Mehmet Efendi, Mısır &Ccedil;arşısı ve Hasırcılar Caddesinin birleştiği k&ouml;şede, 20. Y&uuml;zyılda inşa edilen Art Deco stili binası ile Emin&ouml;n&uuml;&rsquo;nde<span id="more-3826"></span> varlığını s&uuml;rd&uuml;rmektedir. Kahve k&uuml;lt&uuml;r&uuml; Osmanlı&rsquo;da, Yemen Valisi &Ouml;zdemir Paşa&rsquo;nın 16. Y&uuml;yılda başkente getirdiği kahve ile başlar. Tahtakale, kahve k&uuml;lt&uuml;r&uuml;n&uuml;n o d&ouml;nemden beri halka yayıldığı yerdir. Mehmet effendi 1871 yılında kahve d&uuml;kk&acirc;nını a&ccedil;ar. Ondan &ouml;nce kahve,&nbsp; &ccedil;iğ &ccedil;ekirdek halde satılıyorken Mehmet Efendi kahve &ccedil;ekirdeklerini kavurarak satan ilk kişi olur. Emin&ouml;n&uuml;&rsquo;ndeki Kurukahveci Mehmet Efendi, g&uuml;n&uuml;m&uuml;ze kadar ulaşan en eski kahve d&uuml;kk&acirc;nıdır ve T&uuml;rk kahve k&uuml;lt&uuml;r&uuml;n&uuml;n vazge&ccedil;ilmez bir par&ccedil;asıdır. İ&ccedil;inde bulunduğu Tahmış sokakta 1871&rsquo;den beri karakteristik kokusu ile sokağa aromatik bir kimlik kazandırmaktadır. Uzun zamandır aynı yerde satışlarına devam etmekte olan bu aile şirketi, uluslararası bir başarı yakalamalarına ve seri &uuml;retime ge&ccedil;melerine rağmen orijinal yerlerinde hala satışa devam etmektedir.</div>
</figure>
</div>
</div>
</div>
</div>', CAST(N'2016-11-14 16:44:15.607' AS DateTime), CAST(N'2016-11-14 16:44:15.607' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (20, N'Kurukahveci Mehmet Efendi', NULL, N'<p>Kurukahveci Mehmed Efendi, as one of the oldest representation of Turkish coffee culture, is located in the junction point of Egyptian Bazaar and Hasırcılar Street in Emin&ouml;n&uuml;,<span id="more-3829"></span> built in the first half of the 20th century in Art Deco style, but the company has a rooted history. When coffee brought to the Ottoman capital by Governor of Yemen, &Ouml;zdemir Paşa in 16<sup>th</sup> century, Tahtakale was a place where Turkish coffee spread. Mehmed Efendi was opened his shop in 1871. Before him, the coffee was sold as raw coffee beans. Mehmet Efendi is the first, who started to roast raw coffee beans and sell them to local people. Kurukahveci Mehmed Efendi in Emin&ouml;n&uuml; is the oldest surviving coffee shop for Turkish coffee and inheritor of Turkish coffee culture in institutional base. It has a characteristic smell of aroma, which constitutes the identity of the place, especially Tahmis Sokak since 1871. They have been in business in the same area for such a long time and keep the company in their family since their foundation. Even though they reach the global success and started mass production both for interior market and for exportation, they keep their original building where they still both produce and sell.</p>', CAST(N'2016-11-14 16:44:43.090' AS DateTime), CAST(N'2016-11-14 16:44:43.090' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (21, N'Bekleyişler ve Gece', NULL, N'<p><em>&ldquo;A&ccedil;ık bırak pencereni, &ouml;rtme perdeyi bu gece</em><em><br /></em><em>Sana yaptığım bu şarkıyı, sana yaptığım bu besteyi</em><em><br /></em><em>R&uuml;zg&acirc;rlar getirebilsin&rdquo;</em></p>
<p>Anadolu&rsquo;da aşklar ağır, yavaş; Anadolu&rsquo;da yazlar kurak&hellip; Ve huyudur insanın aşkını sevdiğinden gizleyip geceye anlatması. Aşığın şansıdır ki gece dut yapraklarının arasından esen r&uuml;zgarlar avluları aşıp ahşap &ccedil;er&ccedil;eveli pencereye ulaşır. S&ouml;ylenemeyen ne varsa Anadolu&rsquo;da bir gece yarısı o ahşap &ccedil;er&ccedil;eveli pencerelerden fısıldanır yaz geceleri.<span id="more-3858"></span></p>
<p>İşte bu y&uuml;zdendir ki bu topraklardan &ouml;yle zengin melodiler, &ouml;yle yoğun duygular &ccedil;ıkmıştır hep. Kavuşamayanlar h&uuml;z&uuml;nle birleşir, bir garip sızıya d&ouml;n&uuml;ş&uuml;r ve hicazda hayat bulur. Bir ağız dolusu mırıldansan yazın sıcağı &uuml;zerine &ccedil;&ouml;kermiş gibi, &ouml;ylesine yanık. Ve yine bu y&uuml;zdendir ki Anadolu&rsquo;da kavuşmaktan daha g&uuml;zeli beklemektir aşkı. Bekleyişler geceler boyu, h&uuml;z&uuml;n dolu, umut dolu, bir o kadar da makam dolu&hellip; Şarkısını bulmak isteyen bir aşık da, penceresine gelen r&uuml;zgarı dinleyen de bekler. Aşık da, maşuk da. Bade bekler, meltem bekler, avlu da, dut da. Ve hicaz da bekler, ağır ağır mırıldanır derdini. Gizlediği şeyleri s&ouml;ylemekten utanır gibi&hellip;</p>', CAST(N'2016-11-14 16:45:53.590' AS DateTime), CAST(N'2016-11-14 16:45:53.590' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (22, N'Waiting and the Night', NULL, N'<div class="wpb_column vc_column_container vc_col-sm-6">
<div class="vc_column-inner ">
<div class="wpb_wrapper">
<div class="wpb_single_image wpb_content_element vc_align_left">
<figure class="wpb_wrapper vc_figure">
<div class="vc_single_image-wrapper   vc_box_border_grey">&nbsp;</div>
<div class="vc_single_image-wrapper   vc_box_border_grey"><em>&ldquo;Leave your window open tonight, do not draw the curtain</em></div>
</figure>
</div>
</div>
</div>
</div>
<div class="wpb_column vc_column_container vc_col-sm-6">
<div class="vc_column-inner ">
<div class="wpb_wrapper">
<div class="wpb_text_column wpb_content_element  ">
<div class="wpb_wrapper">
<p><em>Let the window carry to you</em></p>
<p><em>This song I wrote for you, this melody I made for you&rdquo;</em></p>
<p>In Anatolia, love happens at a snail&rsquo;s pace, summer is as arid as a desert. The reason behind hiding the loved one in the darkness of nights is a tendency for a lover. It is the chance that for the lover that a gentle breeze somehow sweeps down to the window. Whatever that could not be told before, is whispered slowly through the breeze at that night.<span id="more-3861"></span></p>
<p>That is why Anatolia becomes a home for intense feelings and romantic melody. All break-in points come together as one, turn into a cold sore and re-birth as a tune in hejaz. A few mouthfuls of mumbling can bring unbearable hot winds. That is the reason why lovers choose to wait for love instead of being in love. Waiting for love from day to night, with sorrow and hope, as a tune of the harmony. This tune is an inspiration for both a songwriter and a lover sitting in front of that window. Lover waits, so does be loved. Breeze waits, so does the backyard and the window. Hejaz waits it too, with mumbling slowly just like revealing its feelings that are kept in darkness.</p>
</div>
</div>
</div>
</div>
</div>', CAST(N'2016-11-14 16:46:26.220' AS DateTime), CAST(N'2016-11-14 16:46:26.220' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (23, N'From Adana', NULL, N'<p class="p1"><span class="s1">Through these roads,</span></p>
<p class="p1"><span class="s1">The wolf,</span></p>
<p class="p1"><span class="s1">The lamb,</span></p>
<p class="p1"><span class="s1">The goat,</span></p>
<p class="p1"><span class="s1">The ram pass,</span></p>
<p class="p1"><span class="s1">These roads also have a hand in</span></p>
<p class="p1"><span class="s1">only who knows the value of them.</span></p>
<p class="p1"><span class="s1">&nbsp;</span></p>
<p class="p1"><span class="s1">Necmettin Yemiş&nbsp;&copy;</span></p>', CAST(N'2016-11-14 16:47:20.193' AS DateTime), CAST(N'2016-11-14 16:47:20.193' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (24, N'Adana’dan', NULL, N'<p class="p1"><span class="s1">Bu yollardan,</span></p>
<p class="p1"><span class="s1">kurdu ge&ccedil;er,</span></p>
<p class="p1"><span class="s1">kuzusu ge&ccedil;er,</span></p>
<p class="p1"><span class="s1">ke&ccedil;isi ge&ccedil;er,&nbsp;</span></p>
<p class="p1"><span class="s1">ko&ccedil;u ge&ccedil;er,</span></p>
<p class="p1"><span class="s1">bu yolların emeği,&nbsp;</span></p>
<p class="p1"><span class="s1">ancak kıymetini bilene ge&ccedil;er.</span></p>', CAST(N'2016-11-14 16:47:48.290' AS DateTime), CAST(N'2016-11-14 16:47:48.290' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (25, N'Demir Ustası', NULL, N'<p>Tokmağın sesinden konuğu bildirecek kadar efsunlu bir zanaat demircilik. Bu engin Anadolu&rsquo;da ceviz kapı ile demir tokmağın ezeli sevdası hangi hayırların habercisi oldu kim bilir? Kapı her &ccedil;alınışında hangi y&uuml;reklere heyecan, hangi akıllara efkar d&uuml;şt&uuml; kim sorar? Asırları var Safranbolu&rsquo;nun taş kaldırımlarında yankılanır tok demir sesleri. O sesler ki emektar demir ustalarının şaheseri.</p>
<p>Video: Berin Sarıg&uuml;l</p>', CAST(N'2016-11-14 17:35:21.600' AS DateTime), CAST(N'2016-11-14 18:17:58.877' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (26, N'Iron Craftsman', NULL, N'<p>Forging is such a charming craft that it can notify the guest only with the sound of the knob. Which best news was announced by the eternal love of walnut door and iron knob in these vast lands of Anatolia, who knows? Whenever the door was knocked, who asks which people were excited or which ones became anxious? For centuries, the sound of the knob has echoed in the stone sidewalks of Safranbolu. Such that, these sounds are the masterpiece of the veteran Usta.</p>
<p>Video: Berin Sarıg&uuml;l</p>', CAST(N'2016-11-14 17:35:55.907' AS DateTime), CAST(N'2016-11-14 17:35:55.907' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (27, N'Saddler Abdullah Usta', NULL, N'<p>We are passing through authentic mosques remained from Aydınids (or Aydınid dynasty) in Tire district of İzmir. We are looking over stone houses while we are breathing smell of saddle inside the historical bazaar. We visit Abdullah Usta whose shop is placed on the left side when moving to Paşa Mosque. He started his own craft, which was inherited from his father, in 1962. We are speaking a 54-year saddler Usta.</p>
<p>When we ask &ldquo;How is your business?&rdquo;, he says &ldquo;Ramadan&hellip;It is too hot and there is no customer. The villagers don&rsquo;t come to the town.&rdquo; Actually, he seems to be glad of his own situation. Even if he appears to be alive, he takes pleasure from resting for a while and chatting with us in these warm days. We are chatting for a while because I am native of Tire and has visited to Usta&rsquo;s shop since my childhood. We mention my naughtiness and the friendship of Usta with the grandfathers.<span id="more-3877"></span></p>
<p>Then he begins to talk about his saddles:</p>
<p>&ldquo;In the past, I made two saddles in a day. We are unable to work anymore, I can do just one, but Thank God! There are our customers from three cities like Aydın, İzmir, Manisa. There is still the demand, but it has reduced, of course.&rdquo;</p>
<p>It is said that the apprentice cannot be trained anymore. &ldquo;Everyone attempts to receive an education and then they become unemployment, because they cannot find any job,&rdquo; he says. &ldquo;We learned this craft from our father, though. I don&rsquo;t have a son, so I couldn&rsquo;t train someone.&rdquo;</p>
<p>Suddenly, the sounds of prayer calls are rising from Leysezade Mosque, the reminiscence of Mevlana Leysi &Ccedil;elebi from 15th century. You can experience 1400s within the old bazaar in a while when you&rsquo;re fascinated with the Ottoman architecture and engineering. Abdullah Usta generally perform Friday prayers in this mosque and he adds: &ldquo;This mosque was built so skillfully that you cannot do it with today&rsquo;s opportunities even if you want to do it again&rdquo;.</p>
<p>Abdullah Usta uses felt, sack, rope, wood and ornament materials for his saddles. He remembers the durability of old structures while speaking of the bazaar. As you know, there is the time of settlement for stone just like the handicraft of Usta. Usta begins to speak about the situation of more than 20 historical mosques and tens of inns, hammams in Tire only half in jest: &ldquo;The mayor is always digging and digging. He likes digging tools and treasury activities. It is said that there is gold under these lands. Recently, it was found on Ali Efe Inn, with a pouch.&rdquo;</p>', CAST(N'2016-11-14 17:37:08.893' AS DateTime), CAST(N'2016-11-14 17:37:08.893' AS DateTime), NULL, N'6635d6dd-02f8-4ba1-8fd1-b9d31083a94e', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (28, N'Semerci Abdullah Usta', NULL, N'<p>İzmir&rsquo;in Tire il&ccedil;esinde Aydınoğullarından kalma otantik camilerin arasından ge&ccedil;iyoruz. Tarihi bir &ccedil;arşının i&ccedil;inde semer kokularıyla nefes alıp taş evleri s&uuml;z&uuml;yoruz. Paşa Camii&rsquo;ne ilerlerken d&uuml;kkanı solda kalan Abdullah Usta&rsquo;ya misafir oluyoruz. Kendisi babasından kalan zanaatına 1962&rsquo;de başlamış. Karşımızda 54 yıllık bir semerci &uuml;stadı duruyor.</p>
<p>İşler nasıl diye sorunca &ldquo;Ramazan&hellip;&rdquo; diyor; &ldquo;hava sıcak ve m&uuml;şteri yok. k&ouml;yl&uuml; şehre inmiyor&rdquo;. Aslında halinden memnum g&ouml;z&uuml;k&uuml;yor. Ne kadar diri g&ouml;r&uuml;nse de bu sıcaklarda biraz dinlenmek bizle sohbet etmek hoşuna gidiyor. Tire&rsquo;nin yerlisi olduğum ve ustamın d&uuml;kkanına &ccedil;o&ccedil;ukluğumdan beri gittiğim i&ccedil;in bir s&uuml;re muhabbete dalıyoruz. Yaramazlıklarımdan, ustanın dedelerle olan arkadaşlığına uzanıyoruz.<span id="more-3874"></span></p>
<p>Arkada deve g&uuml;reşi posterleri g&ouml;r&uuml;yorum. Meğer Abdullah usta deveciliğe de epey meraklıymış. &ldquo;Deveye semer yapıyor musun?&rdquo;&nbsp;sorumu olumsuz yanıtlaması da semerciliğin zahmetinden:&nbsp;&ldquo;O ayrı bi zanaat; gidip &ouml;l&ccedil;&uuml; almak gerekir, farklıdır, biz yapamayız.&rdquo;</p>
<p>Daha sonra başlıyor anlatmaya kendi semerlerini:</p>
<p>&ldquo;Eskiden 2 tane &ccedil;ıkarırdım g&uuml;nde, artık elden d&uuml;şt&uuml;k bir anca oluyor. Ama ş&uuml;k&uuml;r! Hala 3 ilden; Aydın, İzmir, Manisa&rsquo;dan m&uuml;şterilerimiz var. Tabii ki talep azaldı ama s&uuml;r&uuml;yor.&rdquo;</p>
<p>&Ccedil;ırak gelmiyormuş; &ldquo;herkes okumaya kalkıyor sonra işşiz geziyor&rdquo; diyor. &ldquo;Biz de babadan &ouml;ğrendik ger&ccedil;i, oğlan &ccedil;ocuk yoktu yetiştiremedik.&rdquo;</p>
<p>Bir anda 15. y&uuml;zyıldan kalma Mevlana Leysi &Ccedil;elebi hatırası Leysezade Camii&rsquo;nden sala sesleri y&uuml;kseliyor. Osmanlı mimarisine ve m&uuml;hendisliğine hayran kalarak eski &ccedil;arşının i&ccedil;inde bir anda 1400&rsquo;l&uuml; yılları yaşıyorsunuz. Abdullah Usta Cumaları genelikle burada kılıyor ve ekliyor: &ldquo;Bu camiyi adamlar &ouml;yle ustalıkla yapmış ki şimdiki imkanlarla istesen de yapamazsın&rdquo;.</p>
<p>Abdullah Usta semerlerinde ke&ccedil;e, &ccedil;uval, ip, ağa&ccedil; ve s&uuml;sleme malzemeleri kullanıyor. S&ouml;z &ccedil;arşıya gelince eski yapıların sağlamlığını yad ediyor. Malum ustanın el melekesi gibi, taşın da bir oturma s&uuml;resi var. Tire&rsquo;de bulunan 20&rsquo;nin &uuml;st&uuml;nde tarihi camiinin ve onlarca han, hamamın bug&uuml;nk&uuml; haliyle ilgili s&ouml;z&uuml; ustam alıyor, biraz yerel şaka ile karışık: &ldquo;Başkan s&uuml;rekli kazıyor. Seviyor kazma k&uuml;reği, g&ouml;m&uuml;c&uuml;l&uuml;ğ&uuml;. Buraların altında hep altın var deniyor. Ge&ccedil;enlerde Ali Efe Hanı&rsquo;nda bulmuşlar keseyle.&rdquo;</p>
<p>Bug&uuml;nk&uuml; nadide k&uuml;lt&uuml;r&uuml;m&uuml;z&uuml; yarın g&ouml;m&uuml; misali aramamak i&ccedil;in zanaate sahip &ccedil;ıkmamız, ustalara ruh katan mekanlara g&ouml;z&uuml;m&uuml;z gibi bakmamız gerektiğini bir kez daha samimiyetle duyumsuyoruz.</p>', CAST(N'2016-11-14 17:37:36.450' AS DateTime), CAST(N'2016-11-14 17:37:36.450' AS DateTime), NULL, N'6635d6dd-02f8-4ba1-8fd1-b9d31083a94e', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 2)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (29, N'From Thousand-Year Hands', NULL, N'<p>Since a thousand years,</p>
<p>Enver Usta has carved into hearts</p>
<p>On &Ccedil;avuşlu he is,</p>
<p>The whole Black Sea plays horon</p>
<p>Cry out the mountains their love</p>
<p>The mulberry shutting nightgales up</p>
<p>Makes bows speak up</p>
<p>On Giresun where is</p>
<p>The hometown of kemancha,</p>
<p>And touches the earlock of the love</p>
<p>A couple of drops join</p>
<p>Into the flood of G&ouml;rele.</p>', CAST(N'2016-11-14 17:38:47.520' AS DateTime), CAST(N'2016-11-14 17:38:47.520' AS DateTime), NULL, N'b544fde5-02d2-4769-9d8a-b49de1a2d3ab', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 3)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (30, N'Bin Yıllık Ellerden', NULL, N'<p>Bin yıldır y&uuml;rekleri oyar</p>
<p>Enver Usta &Ccedil;avuşlu&rsquo;da</p>
<p>Karadeniz horon oynar</p>
<p>Aşkını haykırır dağlar</p>
<p>B&uuml;lb&uuml;lleri susturan dut</p>
<p>Kemen&ccedil;enin başkentinde</p>
<p>Giresun&rsquo;da konuşturur yayları</p>
<p>Vurur z&uuml;lf&uuml;n teli g&ouml;n&uuml;le</p>
<p>Birka&ccedil; damla yaş karışır</p>
<p>G&ouml;rele&rsquo;nin seline</p>', CAST(N'2016-11-14 17:39:20.367' AS DateTime), CAST(N'2016-11-14 17:39:20.367' AS DateTime), NULL, N'b544fde5-02d2-4769-9d8a-b49de1a2d3ab', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 3)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (31, N'A Small City Called Eğin – I', NULL, N'<p>In the first half of the 19th century, when he was still a very young army officer at that time, Helmuth Von Moltke, being legendary commander of the Germans and working as a trainer in the Ottoman army, said &ldquo;The most beautiful place I&rsquo;ve seen in Asia&rdquo; for Kemaliye on his memories in Turkey (Letters from Turkey) penned by him. This statement is perhaps one of the most accurate definition to be able to describe the beauty of this place.<span id="more-3904"></span></p>
<p>Leaning on the Mountain of Munzur at the east and Sarı&ccedil;i&ccedil;ek Mountains at the West, this valley which experiences four seasons with color-richness and Karasu River, one of Euphrates arms, gives life, should be visited at the most beautiful times such as the spring which its nature arouses with a hundred and one tones of green and the autumn which slopes pave with gold leaves.</p>
<p>It is known that the first name of the region where springs babble from Yal&ccedil;ın rocks was &ldquo;Egon&rdquo; meaning &ldquo;springhead&rdquo; in Roman language.&nbsp; When the Turks came to this region, they gave the name of Eğin which means &ldquo;the beautiful garden like as heaven&rdquo;.&nbsp; When Atat&uuml;rk also visited here in 1922, he honored people living in there which is the paradise of good people at the same time by the name of &ldquo;Kemaliye&rdquo; meaning &ldquo;people who reached perfection&rdquo;. This place bears both two names with pride. Romans, Persians, Sassanid, Byzantines and Arabs are some of people who were embraced by these lands located on the Silk Road. The dominance of Seljuk on the region in 1100 was followed by Ilkhanid, Aqquyunlu and Ottoman sovereignty. The outstanding elegancy seen at the lifestyles of people living in Kemaliye and the culture which they hold in high esteem have carried the traces of the cradle of these civilizations.</p>
<p>Eğin, one of the rare cities which still hosts well-preserved pieces of the post-19<sup>th</sup> century architecture offers also unique frames for lens as well as being the source of inspiration to many painters with vineyards and orchards lined on the valley rising by being set from the river, sinuate streets, its landscape consisting of housings which embrace mulberry, apple, walnut, sycamore trees. The rich culture of the past played also an important role in shaping the architectural identity. The historical houses are the leading at the cultural assets list of the city which is nominated as a candidate to World Cultural Heritage. Houses which the slope of the terrain is the decisive factor were generally built on the layout with 2-3 stores which each floor can be independently opened to the exterior frontage and rise on the vertical line.</p>
<p>The iron door-handlers, one of the symbols of the city, are one of the most important details which give the originality to these houses which masterly stonemasonry and wood-working are displayed. In fact, this is a sort of &ldquo;an offer of house state and the motifs representing 40 different states, for example Lamb:&nbsp; perishing; Bird: one person who has a relative on foreign land and awaits his/her news; Snake from Shamanistic culture: the devil couldn&rsquo;t enter that house; Scorpion means that evil and devil couldn&rsquo;t shelter in those houses. According to their sounds, tokkirik which is one of the biggest among door-handlers and sounds &ldquo;tok tok&rdquo;, means the man who came to house; şıkkırik which is small one and sounds &ldquo;şık şık&rdquo; tells the woman who entered into house.</p>
<p>Laced lathwork on the exterior frontage, prismatic oriels, windows and armored doors designed in the different styles on each floor are among other details adding the delicacy to houses. The frontages of houses are positioned to the Euphrates in the way of not blocking each other&rsquo;s views and the sunlight. Discounting the fact that houses have tin-looking cladded with galvanized corrugated sheet to protect them from precipitation, the original examples consisting of the tissue of traditional houses can be found in country towns and surrounding villages.</p>
<p>You can start the tour in country town with Ethnography museum which hosts more than 600 works and the traces of lifestyles in this geography are exhibited. The stonemasonry and wood-working are remarkable in this building, a former Armenian church and unknown year of its built. Your next stop should be the first Natural History Museum in Turkey which exhibits stoned fossils from bacteria to mammalian. Exhibited elephant skeleton is among the examples which visitors show great interest.</p>
<p>The old mansions, mosques and fountains which are voiceless witnesses of the history, greet you when you reach to Taşdibi by following narrow streets with locked stone-paved after visiting the museums. Kadıg&ouml;l&uuml; G&ouml;zesi at the end of the road is dizzying with cool waters which gush by tearing rocks and reach to Karasu below 1000 m. A person can sit all day in awe under the shade of one tree that becomes neighbor of this spring when he/she is listening the song of the water. Middle Mosque located on the head of the spring is a work of the 17th century Ottoman period which holds its beauty in high esteem.</p>
<p>When you lift up your head a little, you will pay attention to a monolithic rock which appears as hanging on the slope. This famous stone is Zincirlikaya which was fixed with chains not to fall on the town and its name became the subject to songs, words and idioms. Taşdibi Mosque which was built at its base and named after this stone comes down to the time when mosques didn&rsquo;t have any dome. This structure with rectangular plan whose inscription dated back to 1051 has also the title of the oldest mosque in Kemaliye.</p>
<p>After the chamberlain of wood and coal were given to here during Murat IV period, the doors of Istanbul where was also necessary to obtain a special permission to take a step at that time were opened to Eğin. However, this privilege were given to the man of the house to prevent the migration, woman and children were left behind. When Lasting for weeks the grueling way of Istanbul became the wall between them, İstanbul fallen to be homeland, those in Eğin fallen to wait and those gloomy Eğin songs and &ldquo;mani&rdquo; (a kind of Turkish short poems) began to Come in sight. The ongoing gastarbeiter fate of this region has not ever changed since that day. The way of Mani on the hill is a walking trail which you can find torrid verses written by women in Kemaliye.</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="../../../Content/Media/22Kemaliye22-by-Evgeni-Zotov-CC-BY.jpg" width="675" height="900" /></p>
<p>There is such another place which tells&nbsp; their longing&nbsp; in Kemaliye that&nbsp; this place is the epic Taşyolu which people in Eğin created by trying to dig into impassible, steep rocks with digger and&nbsp; oar in order to be able to get closer to&nbsp; the further at least. The construction of this 8.5-km road which began in the 1870s and most of its mortar consisted of the determination and great effort of people in Eğin took exactly 132 years. In 2002, this passage that connects Eğin to Divriği provides the road to İstanbul and Ankara to shorten 220 km. As you proceed in this road consisting of 17 tall and short tunnels, you are accompanied by <em>&ldquo;The Stories of Taş Yolu and Eğin&rdquo;</em> written by L&uuml;tfi &Ouml;zg&uuml;naydın with the fascinating views of Dark Canyon (Karanlık Kanyon) from the natural lighting windows opened into tunnels with dynamites.</p>
<p>With its walls of rocks which extend along 9 km continuously in both sides and reach to 500 m length, its spring waters slipping away from these walls, the valley bottom narrowing up to 2-3 m and Karasu River flowing unhurriedly in the middle, Dark Canyon is considered as one of the leading canyons in the world.</p>
<p>When you join one of the boat tours in this canyon named after narrow corridors that even the sunlight cannot reach, you can enjoy peace and serenity. If you are lucky, during your trip you can even see one of the mountain goats doing a liberty dance in these steep slopes.</p>
<p>Another feature of the Canyon is to host the nature sports. When the legend governor, the deceased Recep Yazıcıoğlu introduced rafting and water skiing to the Euphrates, the spread seeds began to develop in a short time and the canyon turned into a paradise of the nature sports. With the purpose of maintaining the memory of the governor, the international nature sports fest held in the end of June each year since 2004 brings together adrenaline junkies in a wide range from Base Jump to rock climbing, canoe to rafting, water skiing to paragliding.</p>
<p>The other worth-seeing beauty of the town is also pretty villages connected to the center. Sırakonaklar, one of the most known ones among these villages, formerly named as Peğir, is located on a position which Kemaliye can be overviewed. Two mills established on Peğir stream which named after the village, are one of the most beautiful examples of the historical water mills which are decreasing day by day in Anatolia. When you follow the path reaching to Ap&ccedil;aağa village after visiting mills, your soul will absolutely renew if you take for a walk for an hour in company with breathtaking views unrolled under your feet and whistling of poplar trees extending along Peğir stream.</p>
<p>Ap&ccedil;aağa is the village that provided the inspiration for the poem written by Ahmet Kudsi Tecer beginning with the lines &ldquo;There is a village in the distant, that village is our village, even if we don&rsquo;t go and not play around, and that village is our village&rdquo;.</p>
<p>On the one hand the village has proclaimed itself as a natural protected area in order to try to take a stand against the wind of globalization which has created cities and towns that are increasingly beginning to resemble each other. On the other hand, it is also proceeding rapidly to be the brand-town while protecting local customs and traditions as the best as possible. After you stroll through this special village which makes you feel as if time stopped thanks to its undisturbed historic fabric, the best is Taş Kahve which has a valley view and is located on Kayabaşı Park on the hill in order to relieve tiredness.</p>
<p>The culinary richness of the region has also come to the fore. Dated back to the meat chamberlain given to here during the period of Sultan Selim the Stern, the expertise about meat was also reflected in the cuisine.&nbsp; <em>Mıhla</em>, in the forefront among meat dishes, is made with roasting, onion and egg and conquers the palate with its taste. The grills made with huge <em>&Ccedil;aşur</em> mushroom which has 20-30 cm width and grows on the Eğin Mountains in the spring, dishes made with herbs such as <em>Kenger</em>, <em>Kiriş</em>&nbsp;and <em>Zetrin</em>, a mixture of 120 herbs used as seasoning, are considered among the stars in the cuisine.</p>
<p>The special flavors created with mulberry have certainly a different place in Eğin. Some flavors such as <em>L&ouml;k</em>, a kind of paste that is made by grinding dried mulberry and walnut in the mortar at least three-thousand times, <em>Beşateş</em>&nbsp;which is made by adding <em>L&ouml;k</em> to almond, honey and sugar, <em>Oricik</em>&nbsp;which is churchkhela prepared with mulberry molasses, have maintained to be made in <em>L&ouml;khane</em> under the historical madrasa in Kadıg&ouml;l&uuml;. Kadı Sofrası on the top floor of <em>L&ouml;khane</em> and the restaurant of Bozkurt Hotel in the town center provide local dishes that visitors can taste.</p>
<p>In almost all of accommodation facilities, there is a hospitable approach that makes you feel at home. Bah&ccedil;eli Hostel run by Mrs. Hatice and her husband Ms. Osman is among the best examples of this approach. When you sit in one of the wooden tables in its garden, the conservation you have with this cute couple in company with the song of crickets and a pot of tea will certainly last from evening to night and it will end by strengthening the link between Eğin and you.</p>
<p>As it is possible to reach here by highway or railway, you can also reach here with approximately 2.5-hour road trip after the airports in Elazığ, Erzincan and Malatya.</p>
<p>Kemaliye is waiting for you with many more beauties which are worthy for overcoming long ways.</p>
<p>&nbsp;</p>', CAST(N'2016-11-14 17:42:05.773' AS DateTime), CAST(N'2016-11-14 18:25:12.213' AS DateTime), NULL, N'37b1d6be-d7a1-4944-9336-78390e034b8b', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 6)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (32, N'Eğin Dedikleri Küçük bir Şehir', NULL, N'<p>Ondokuzuncu y&uuml;zyılın ilk yarısında o zamanlar hen&uuml;z &ccedil;i&ccedil;eği burnunda bir subayken, Osmanlı ordusunda eğitimci olarak g&ouml;rev yapan Almanların efsanevi komutanı Helmuth Von Moltke, kaleme aldığı T&uuml;rkiye hatıralarında Kemaliye i&ccedil;in &ldquo;Asya&rsquo;da g&ouml;rd&uuml;ğ&uuml;m en g&uuml;zel yer&rdquo; der; bu ifade belki de buranın g&uuml;zelliğinin sığdırılabildiği en doğru tanımların başında gelir.<span id="more-3901"></span></p>
<p>Doğuda Munzur batıda Sarı&ccedil;i&ccedil;ek dağlarına yaslanan, Fırat&rsquo;ın kolu Karasu nehrinin hayat verdiği bu d&ouml;rt mevsimi renk zengini vadide, yeşilin binbir tonuyla uyanan doğasıyla ilkbahar ve altın yapraklarla kaplı yama&ccedil;larıyla sonbahar buraya seyahat i&ccedil;in en g&uuml;zel zamanlardır.</p>
<p>Yal&ccedil;ın kayalıklarından&nbsp; pınarların &ccedil;ağladığı y&ouml;renin ilk adının, Roma dilinde memba anlamına gelen Egon olduğu biliniyor. T&uuml;rkler bu topraklarla tanıştıklarında, buraya &ldquo;Cennet gibi g&uuml;zel bah&ccedil;e&rdquo; anlamına gelen Eğin adını verirler. 1922 yılına gelindiğinde ise Atat&uuml;rk, aynı zamanda g&uuml;zel insanlar cenneti de olan bura halkını, &ldquo;Kemale ermiş insanlar&rdquo; anlamındaki Kemaliye adıyla onurlandırır. G&uuml;n&uuml;m&uuml;zde her iki isim de gururla taşınmakta. Romalılar, Persler, Sasaniler, Bizanslılar ve Araplar, İpek yolu &uuml;zerinde bulunan bu toprakların kucak a&ccedil;tığı halklardan bazıları. 1100 yılında b&ouml;lgedeki Sel&ccedil;uklu hakimiyetini, sırasıyla İlhanlı, Akkoyunlu ve Osmanlı h&uuml;k&uuml;mranlıkları izler. Kemaliyelilerin yaşam bi&ccedil;imlerinde g&ouml;ze &ccedil;arpan incelik ve baş tacı ettiği k&uuml;lt&uuml;r bu medeniyetler ge&ccedil;idinden izler taşır.</p>
<p>Ondokuzuncu y&uuml;zyıl sonrası mimari dokunun g&uuml;n&uuml;m&uuml;ze aktarılabildiği nadir kentlerden biri olan Eğin, nehirden itibaren setlendirilerek y&uuml;kselen vadi &uuml;zerine dizili bağ ve bah&ccedil;eleri, yılankavi sokakları, dut, elma, ceviz, &ccedil;ınar ağa&ccedil;larını kucaklayan konutlardan oluşan peyzajıyla bir&ccedil;ok ressamın fır&ccedil;asına konu olduğu gibi aynı zamanda objektifler i&ccedil;in de benzersiz kareler sunuyor. Ge&ccedil;mişin zengin k&uuml;lt&uuml;r&uuml;, mimari kimliğin de şekillenmesinde b&uuml;y&uuml;k rol oynamış. D&uuml;nya k&uuml;lt&uuml;r mirasına aday g&ouml;sterilen kentin, k&uuml;lt&uuml;rel varlık listesinin en başında tarihi evleri geliyor. Arazinin eğiminin belirleyici fakt&ouml;r olduğu evler, her katın bağımsız olarak dış cepheye a&ccedil;ılabildiği, d&uuml;şeyde y&uuml;kselen, genellikle 2-3 katlı plan d&uuml;zeninde inşa edilmişler.</p>
<p>Ustalıklı bir taş ve ahşap iş&ccedil;iliğinin sergilendiği bu evlere &ouml;zg&uuml;nl&uuml;k kazandıran detayların başında kentin simgelerinden de biri olan demir kapı tokmakları geliyor. Aslında bir nevi ev halinin arzı olan ve 40 farklı durumu simgeleyen motiflerden, &ouml;rneğin lamba &ldquo;ocağın s&ouml;nmesin&rdquo;, kuş &ldquo;gurbette yakını olan ve haber bekleyen&rdquo;, şaman k&uuml;lt&uuml;r&uuml;nden kalma yılan &ldquo;şeytanın o eve giremeyeceği&rdquo;, akrep ise o evlerde cinin, şeytanın barınamayacağı anlamını taşıyor. &Ccedil;ıkardığı seslere g&ouml;re ise tokmaklardan b&uuml;y&uuml;k olan ve &ldquo;tok tok&rdquo; sesi veren tokkirik, gelenin er kişi; k&uuml;&ccedil;&uuml;k olan ve &ldquo;şık şık&rdquo; sesi veren şıkkırik ise gelenin hatun kişi olduğunu anlatıyor.</p>
<p>İl&ccedil;e merkezindeki gezinize, bu coğrafyadaki yaşam bi&ccedil;imlerinden izlerin sergilendiği, 600 kadar esere ev sahipliği yapan Etnoğrafya m&uuml;zesiyle başlayabilirsiniz. Eski bir Ermeni kilisesi olan ve yapım tarihi bilinmeyen bu binanın, taş ve ahşap iş&ccedil;iliği dikkat &ccedil;ekici. Bir sonraki durağınız ise bakteriden memeliye kadar taştan fosillerin sergilendiği, T&uuml;rkiye&rsquo;nin ilk &ldquo;Doğa Tarihi M&uuml;zesi&rdquo; olmalı. Sergilenen fil iskeleti, ziyaret&ccedil;ilerin yoğun ilgi g&ouml;sterdiği &ouml;rnekler arasında.</p>
<p>M&uuml;ze ziyaretleri sonrası kilitli taş d&ouml;şeli dar sokakları takip edip Taşdibi mevkiine ulaştığınızda, tarihin dilsiz tanıkları olan eski konaklar, camiler ve &ccedil;eşmeler selamlıyor size. Yolun sonundaki Kadıg&ouml;l&uuml; G&ouml;zesi, kayaları yırtarak fışkıran ve 1000 metre aşağıda Karasu&rsquo;ya kavuşan değirmenlerle &ouml;r&uuml;l&uuml; serin sularıyla başd&ouml;nd&uuml;r&uuml;c&uuml;. İnsan bu kaynağa komşu ağa&ccedil;lardan birinin g&ouml;lgesinde suyun şarkısını dinleyerek, huşu i&ccedil;inde t&uuml;m g&uuml;n oturabilir. Kaynağın başında bulunan Orta Camii, buranın g&uuml;zelliğini ta&ccedil;landıran nitelikte bir 17.yy Osmanlı d&ouml;nemi eseri.</p>
<p>Başınızı biraz yukarı kaldırdığınızda, yama&ccedil;ta asılı gibi duran yekpare kaya par&ccedil;ası dikkatinizi &ccedil;ekecektir. Kasabanın &uuml;zerine d&uuml;şmemesi i&ccedil;in zincirle sabitlenmiş, adı t&uuml;rk&uuml;lere, manilere ve deyişlere konu olmuş olan bu taş, meşhur Zincirlikaya. Hemen dibinde kurulu ve adını bu taştan alan Taşdibi Camii ise camilerin kubbesiz olduğu zamanlardan kalma. Kitabesi 1051 tarihli olan dikd&ouml;rtgen planlı bu yapı, aynı zamanda Kemaliye&rsquo;nin en eski camii unvanını taşıyor.</p>
<p>D&ouml;rd&uuml;nc&uuml; Murat d&ouml;nemindeki k&ouml;m&uuml;r ve odun keth&uuml;dalığının buraya verilmesiyle birlikte, o zamanlar adım atmanın &ouml;zel izinlere bağlı olduğu İstanbul&rsquo;un kapıları da a&ccedil;ılır Eğin&rsquo;e. Fakat bu imtiyaz, g&ouml;&ccedil;&uuml; engellemek adına sadece evin erkeğine verilir, kadın ve &ccedil;ocuklar ise geride bırakılır. Haftalarca s&uuml;ren meşakkatli İstanbul yolu da araya duvar olunca, İstanbul&rsquo;a sıla, Eğin&rsquo;e beklemek d&uuml;şer ve o g&ouml;n&uuml;l titreten Eğin t&uuml;rk&uuml; ve manileri doğmaya başlar. Y&ouml;renin o zamandan s&uuml;regelen gurbet&ccedil;ilik kaderi bir daha da değişmez. Tepedeki Mani yolu, Kemaliyeli kadınların bu hasret ve sevda y&uuml;kl&uuml; d&ouml;rtl&uuml;klerinin asılı olduğu bir y&uuml;r&uuml;y&uuml;ş yolu.</p>
<p><img style="display: block; margin-left: auto; margin-right: auto;" src="../../../Content/Media/22Kemaliye22-by-Evgeni-Zotov-CC-BY.jpg" width="675" height="900" /></p>
<p>Kemaliye&rsquo;de hasreti anlatan bir başka yer daha var ki o da Eğinlinin uzaktakine biraz olsun yakınlaşabilmek i&ccedil;in ge&ccedil;it vermez sarp kayaları kazma ve k&uuml;rekle delmeye kalkışarak yarattığı destansı Taşyolu. 1870&rsquo;lerde başlanan ve harcında &ccedil;oklukla Eğinlilerin azmi ve teri olan 8.5 km&rsquo;lik bu yolun yapımı tam 132 yıl s&uuml;rer. 2002 yılına gelindiğinde Eğin&rsquo;i Divriği&rsquo;ye bağlayan bu ge&ccedil;it ile İstanbul ve Ankara&rsquo;ya yolu artık 220 km kısalmıştır. Uzunlu kısalı 17 t&uuml;nelden oluşan bu yolda ilerlerken, t&uuml;nellere dinamitle a&ccedil;ılan doğal aydınlatma pencerelerinden, b&uuml;y&uuml;leyici Karanlık Kanyon manzaralarıyla birlikte, yazar L&uuml;tfi &Ouml;zg&uuml;naydın&rsquo;ın Taş Yolu-Eğin &Ouml;yk&uuml;leri eşlik eder size.</p>
<p>İki yanda 9 km boyunca aralıksız uzanan ve y&uuml;ksekliği 500 metreyi bulan kayadan duvarları, bu duvarlardan k&ouml;p&uuml;k k&ouml;p&uuml;k s&uuml;z&uuml;len kaynak suları, yer yer 2-3 metreye kadar daralan vadi tabanı ve ortasından telaşsız akan Karasu nehri ile Karanlık Kanyon d&uuml;nyanın sayılı kanyonları arasında g&ouml;steriliyor. Adını, g&uuml;neş ışığının bile ulaşamadığı dar koridorlardan alan bu kanyonda yapılan tekne gezilerinden birine katılarak huzurun ve dinginliğin tadını &ccedil;ıkarabilirsiniz. Hatta eğer şanslıysanız geziniz sırasında bu dimdik yama&ccedil;larda &ouml;zg&uuml;rl&uuml;k dansı eden dağ ke&ccedil;ilerinden birini bile izleyebilirsiniz.</p>
<p>Kanyonun bir başka &ouml;zelliği ise doğa sporlarına ev sahipliği yapması. Efsane Vali merhum Recep Yazıcıoğlu&rsquo;nun rafting ve su kayağını Fırat&rsquo;la tanıştırmasıyla atılan tohumlar &ccedil;ok kısa s&uuml;rede filizlenir ve kanyon doğa sporları cennetine d&ouml;n&uuml;ş&uuml;r. Valinin anısını yaşatmak amacıyla 2004&rsquo;ten beri her yıl Haziran ayı sonunda d&uuml;zenlenen uluslararası doğa sporları şenlikleri, <em>base jump</em>&rsquo;tan kaya tırmanışına, kanodan rafting&rsquo;e, su kayağından yama&ccedil; paraş&uuml;t&uuml;ne kadar geniş bir yelpazede adrenalin tutkunlarını buluşturuyor.</p>
<p>İl&ccedil;enin g&ouml;r&uuml;lmeye değer bir başka g&uuml;zelliği ise merkeze bağlı şirin k&ouml;yleri. Bu k&ouml;ylerin en bilinenlerinden biri olan Sırakonak eski adı ile Peğir, Kemaliye&rsquo;yi kuşbakışı seyreden bir konumda kurulu. K&ouml;ye adını veren Peğir deresi &uuml;zerinde kurulu iki değirmen, Anadolu&rsquo;da sayısı her ge&ccedil;en g&uuml;n azalmakta olan tarihi su değirmenlerinin en g&uuml;zel &ouml;rneklerinden. Değirmen gezileri sonrası Ap&ccedil;aağa k&ouml;y&uuml;ne uzanan patikayı takip ederek Peğir deresi boyunca uzanan kavakların ıslıkları ve ayaklarınızın altına serilen nefes kesici manzaraların eşliğinde yapacağınız yaklaşık bir saatlik y&uuml;r&uuml;y&uuml;ş ruhunuzu kesinlikle yenileyecektir.</p>
<p>Ap&ccedil;aağa, Ahmet Kudsi Tecer&rsquo;in &ldquo;Orda bir k&ouml;y var uzakta, o k&ouml;y bizim k&ouml;y&uuml;m&uuml;zd&uuml;r, gitmesek de tozmasak da, o k&ouml;y bizim k&ouml;y&uuml;m&uuml;zd&uuml;r&rdquo; dizeleriyle başlayan şiirine esin kaynağı olmuş olan k&ouml;y. Gittik&ccedil;e birbirine benzemeye başlayan şehir ve beldeler yaratan k&uuml;reselleşme r&uuml;zgarına, kendi kendisini sit alanı ilan etmiş olarak karşı durmaya &ccedil;alışan k&ouml;y, aynı zamanda yerel &ouml;rf ve adetlerini de en iyi şekilde koruyarak marka belde olma yolunda hızla ilerliyor. Bozulmamış tarihi dokusuyla zamanın durduğu hissi uyandıran bu &ouml;zel k&ouml;yde yapacağınız gezinti sonrası, tepede Kayabaşı parkında bulunan vadi manzaralı Taş Kahve yorgunluk &ccedil;ıkarmak i&ccedil;in birebir.</p>
<p>Y&ouml;rede mutfak zenginliği de &ouml;ne &ccedil;ıkıyor. K&ouml;k&uuml; Yavuz Sultan Selim d&ouml;neminde buraya verilen et keth&uuml;dalığına dayanan et konusundaki uzmanlık, mutfağa da yansımış. Etli yemekler arasında başı &ccedil;eken, kavurma, kuru soğan ve yumurtayla yapılan mıhla, tadıyla damakları fethediyor adeta. Eğin&rsquo;in dağlarında ilkbaharda yetişen 20-30 santimetre genişliğindeki dev &ccedil;aşur mantarıyla yapılan ızgaralar, kenger, kiriş gibi yabanıl otlarla yapılan sulu yemekler ve &ccedil;eşni olarak kullanılan 120 &ccedil;eşit ot karışımı zetrin mutfağın yıldızları arasında sayılıyor.</p>
<p>Dutluk Eğin&rsquo;de, duttan yaratılan &ouml;zel tatların da kuşkusuz ayrı bir yeri var. Dut kurusu ve cevizin dibekte en az &uuml;&ccedil; bin kere d&ouml;v&uuml;lmesiyle yapılan bir t&uuml;r macun olan l&ouml;k; l&ouml;ke badem, bal ve şeker eklenerek yapılan beşateş, dut pekmeziyle hazırlanan cevizli sucuk oricik gibi tatlar, Kadıg&ouml;l&uuml;&rsquo;ndeki tarihi medrese binasının alt katında bulunan &ldquo;L&ouml;khane&rdquo;de yaşatılmaya devam ediyor. L&ouml;khanenin &uuml;st katındaki Kadı Sofrası ile il&ccedil;e merkezindeki Bozkurt Otel&rsquo;in lokantası ise y&ouml;resel yemeklerin tadılabileceği sofralarıyla hizmet veriyor ziyaret&ccedil;ilere.</p>
<p>İl&ccedil;edeki konaklama tesislerinin hemen hepsinde kendinizi evinizdeymiş gibi hissettiren misafirperver bir yaklaşım hakim. Hatice Hanım ve eşi Osman Bey tarafından işletilen Bah&ccedil;eli Konukevi, s&ouml;z konusu yaklaşımın en g&uuml;zel &ouml;rnekleri arasında. Mekanın bah&ccedil;esindeki tahta masalardan birine oturup cırcır b&ouml;ceklerinin şarkısı eşliğinde bu tatlı &ccedil;iftle edilen bir demlik &ccedil;ay sohbeti kesinlikle akşamdan geceye uzayacak ve Eğin&rsquo;le aranızdaki muhabbet bağını daha da g&uuml;&ccedil;lendirerek nihayetlenecektir.</p>
<p>Buraya karayolu ve demiryolu ile ulaşım m&uuml;mk&uuml;n olduğu gibi,&nbsp; Elazığ, Erzincan ve Malatya havalimalarından ortalama 2.5 saatlik bir karayolu yolculuğu sonrası da ulaşmak m&uuml;mk&uuml;n. Kemaliye, uzun uzun yolları aşmaya değen daha nice g&uuml;zellikleri ile sizleri bekliyor.</p>', CAST(N'2016-11-14 17:43:13.673' AS DateTime), CAST(N'2016-11-14 18:24:40.480' AS DateTime), NULL, N'37b1d6be-d7a1-4944-9336-78390e034b8b', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 6)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (33, N'Serpent Column and Oracle of Delphi', NULL, N'<div class="wpb_column vc_column_container vc_col-sm-6">
<div class="vc_column-inner ">
<div class="wpb_wrapper">
<div class="wpb_single_image wpb_content_element vc_align_left">
<figure class="wpb_wrapper vc_figure">
<div class="vc_single_image-wrapper   vc_box_border_grey">&nbsp;</div>
</figure>
</div>
</div>
</div>
</div>
<div class="wpb_column vc_column_container vc_col-sm-6">
<div class="vc_column-inner ">
<div class="wpb_wrapper">
<div class="wpb_text_column wpb_content_element  ">
<div class="wpb_wrapper">
<p>In the time of Ancient Greece, there was a world famous oracle in Delphi, her name was Pythia. She used to sit on his tripod placed on the top a chasm, so she can connect with the center of the earth. After smelling bay leaves, she used to get into a trance. Apollo, the God of knowledge, used to communicate with her, and answer her questions. Questions that tell the fate of big empires, questions that tell the fortune of civilizations; some fallen, some disappeared&hellip; Rumors has it, before the Battle of Plataea, Persian King went to the Oracle of Delphi. The Oracle said &lsquo;The great empire will fall&rsquo;, and Persian King was so confident that he will fall the Greeks. At the end, he lost the battle and the Great Empire of Persia was fallen. Emperors, commanders and governors used to go to the oracle with luxury gifts, each visitor used to leave their gift on their little city-state&rsquo;s treasury buildings, so that the road to the Apollo Temple was like an open-air museum with many impressive treasuries. Centuries after, in the Hippodrome of Constantinople, there was an ancient tripod placed at the very center of spina. It is said that right after Roman Empire divided in two, Constantine the Great brought Serpent column from Delphi, which is the tripod that oracle used to use in her ritual. Today, all of the serpent heads are destroyed, except the one in the İstanbul Archeological Museum. And the next time you go to Sultanahmet square, try to remember that you will be standing over an ancient hippodrome, and the famous Serpent Column that Pythia used to sit on it and communicate with Apollo is right next to you.</p>
</div>
</div>
</div>
</div>
</div>', CAST(N'2016-11-14 17:44:29.733' AS DateTime), CAST(N'2016-11-14 17:44:29.733' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (34, N'Yılanlı Sütun ve Delfi Kahini', NULL, N'<p>Bundan y&uuml;zyıllar &ouml;nce, Antik Yunan zamanlarında, Delfi Kahini olarak bilinen Pythia adında kıtalara &uuml;n salmış bir kız yaşarmış. Pythia, d&uuml;nyanın merkezine a&ccedil;ılan bir yarığın &uuml;zerine koyduğu &uuml;&ccedil;ayaklının tepesine oturur, defneyaprağı koklar ve transa ge&ccedil;ermiş. Transa ge&ccedil;tiği zaman, bilgeliğin tanrısı Apollo onunla iletişim kurar, b&uuml;y&uuml;k imparatorlukların sonunu, kıtlıkları, medeniyetleri yok edecek kadar b&uuml;y&uuml;k depremleri ona anlatırmış. Derler ki, Plataea Savaşı &ouml;ncesi Delfi Kahini&rsquo;ne giden Pers imparatoruna kahin &lsquo;B&uuml;y&uuml;k medeniyet yok olacak&rsquo; demiş, Pers imparatoru da Yunan medeniyetinin sonunu getireceğinden emin savaşa girmiş ve kaybetmiş; b&ouml;ylece b&uuml;y&uuml;k Pers medeniyeti yok olmuş. İmparatorlar, komutanlar ve en g&uuml;&ccedil;l&uuml; valiler, k&uuml;l&ccedil;e k&uuml;l&ccedil;e altınları ve g&ouml;z kamaştıran hediyeleriyle Delfi Kahinine gider ve devletleriyle ilgili &ouml;nemli sorular sorarlarmış. Her gelen ziyaret&ccedil;i, ait olduğu şehir-devletin hazineliklerine hediyelerini bırakırlarmış, &ouml;yle ki Apollo Tapınağına giden yol dillere destan bir g&ouml;steriş ile g&ouml;z kamaştırırmış. Y&uuml;zyıllar sonra, Antik İstanbul Hipodromu&rsquo;nun en ortasında antik bir &uuml;&ccedil;ayaklı dururmuş. Derler ki, bu &uuml;&ccedil;ayaklı, Yunan zaferini simgelemesi i&ccedil;in B&uuml;y&uuml;k Constantine tarafıdan Delfi&rsquo;den İstanbul&rsquo;a getirilmiş. &Uuml;&ccedil;ayaklının tepesindeki &uuml;&ccedil; yılanbaşı yok olmuş, ancak g&uuml;n&uuml;m&uuml;ze kadar sağ kalabilen bir yılanbaşı bug&uuml;n İstanbul Arkeoloji M&uuml;zesinde g&ouml;r&uuml;lebilir. Sultanahmet Meydanı&rsquo;na bir dahaki gidişinizde, Antik İstanbul Hipodromu&rsquo;nun tam &uuml;zerinde durduğunuzu hatırlayın ve Delfi Kahini&rsquo;nin &uuml;zerine oturup Apollo ile konuştuğu yılanlı s&uuml;tunun yanı başınızda olduğuna dikkat edin&hellip;</p>', CAST(N'2016-11-14 17:45:06.613' AS DateTime), CAST(N'2016-11-14 17:45:06.613' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (35, N'Mystical Side of Istanbul', NULL, N'<p>İstanbul, where is the mixing point of East and West, has an privileged position among the world cities with its attraction centers located on the mosaic of its rich mystical heritage. Mosques, churches, chapels, synagogues, mausoleums, holly springs of orthodox Greeks and even trees are just some parts that form this mosaic. One of the most important functions of these places is among the places where can make uncertainty about future, one of the heaviest burden which human beings carry, easier by establishing the relationship with the sacred one. There places are flooded with visitors from different cultures and religions every day and these people pray for the common reasons: Love, spouse, job, house, child and health.<span id="more-3947"></span></p>
<p>There are a lot of mystical places in İstanbul. One of the well-known places among them is &ldquo;Joshua&rsquo;s Hill&rdquo; (Yuşa), the highest hill and the closest one to the sea in the city. Joshua&rsquo;s Hill has a special location with its spiritual atmosphere as well as its fascinating view. The holiness of the hill is based on &ldquo;Lord Ourios of Good Winds&rdquo;, because there is a temple on the hill, which was built in the name of &ldquo;Lord Ourios of Good Winds&rdquo; at the ancient times. The mentioned temple was a place visited by the sailors to wish fair winds at the entrance and exit of the Bosphorus at that time. Today, it is thought that the hill, which is also known as Yoros, was named from Ourios at the ancient time.</p>
<p>Another known Pagan myths belonging to this special hill whose history was written with legends is as follows: Gigantic Amycus who was the son of Poseidon, god of the sea, and Melia, the sea nymph, was the king of the Bebryces living in two sides of the Bosphorus. At that time, the Bosporus witnessed the war between the Bebryces and Argonauts which returned from the excursion with their ships built by the goddess Athena. Although Amykos was famous for his ability to fight, he was defeated at the fight with Polydeuces of the Argonauts and he died. Today, the grave in Joshua&rsquo;s Hill is said to have belonged to this gigantic man. According to another legend, giants lived on this hill, also known as Giant Mountain, 3000 years ago and Joshua, one of these giants, buried on this hill after dying during the war with their enemies.</p>
<p>Yoros or Joshua&rsquo;s Hill has been shrined in various beliefs since the early history and many temples have been built on this hill. It is also known that there was a temple of Zeus at the ancient time. It was transformed into a church on the behalf of Hagios Mikhael after the adoption of the Christianity on the 5th century. The belief of the holiness of Joshua&rsquo;s Hill has continued with an entombed saint-grave and Islamic monastery built there at the other periods. Evliya &Ccedil;elebi was the first person to mention these graves on Joshua&rsquo;s Hill at the Ottoman periods. The famous traveler mentioned Yoros Castle, Servi Burnu on its vicinity and green area decorated with the cypresses around this place and told that people visited the Prophet Joshua on Joshua Mountain in his travelogue called Seyahatname (&ldquo;Book of Travel&rdquo;).</p>
<p>During the Ottoman periods, people generally took care of visiting here on Fridays because of its holiness. It was mentioned that the coasts of Beykoz were covered with the bazaar boats on those days and people flocked to the hill by getting on the ox carts. With its view to the Bosphorus and Black Sea from different angles, the hill attracted more visitors when the weather was nice and the visitors didn&rsquo;t neglect to watch the magnificent scenery.</p>
<p>Ottoman sailors attributed holiness to the hill. The navy went on a cruise every time after they headed towards and prayed the four patron saints that were believed to protect the Bosphorus and sailors and were accepted as the father of the sailors. These guardians were respectively Yahya Efendi on the hillsides of Beşiktaş, Aziz Mahmud H&uuml;dai on &Uuml;sk&uuml;dar, Telli Baba on Sarıyer and Joshua on Beykoz. This belief is ongoing even today and some fishermen approach the shore and pray in the presence of four patron saints of the Bosphorus.</p>
<p>Joshua&rsquo;s Hill has continued to be one of the most popular places today just like the past. People, whose wish came true, visit Joshua&rsquo;s Hill again to show their gratitude and thanksgiving and they maintain the tradition to distribute candy or loukoumades to other people over there.</p>', CAST(N'2016-11-14 17:46:19.417' AS DateTime), CAST(N'2016-11-14 17:46:19.417' AS DateTime), NULL, N'37b1d6be-d7a1-4944-9336-78390e034b8b', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (36, N'İstanbul’un Mistik Yüzü', NULL, N'<p>Doğu ve Batı&rsquo;nın kaynaşma noktası olan İstanbul, zengin mistik mirasının mozaiğinde yer alan cazibe merkezleriyle, d&uuml;nya şehirleri arasında ayrıcalıklı bir konuma sahiptir. Camiler, kiliseler, şapeller, sinagoglar, t&uuml;rbeler, ayazmalar ve hatta ağa&ccedil;lar bu mozaiği oluşturan par&ccedil;aların sadece bazılarındandır. Bu mekanların en &ouml;nemli işlevlerinden biri ise insanoğlunun taşıdığı en ağır y&uuml;klerden biri olan geleceğe dair belirsizliğin, kutsalla ilişki kurularak hafifletilebildiği yerler arasında olmalarıdır. Farklı k&uuml;lt&uuml;r ve dinden her g&uuml;n y&uuml;zlerce ziyaret&ccedil;inin akınına uğrayan bu mekanlarda edilen dileklerin konusu genellikle ortaktır: Aşk, eş, iş, ev, &ccedil;ocuk ve şifa.<span id="more-3943"></span></p>
<p>İstanbul&rsquo;un envai &ccedil;eşit mistik mekanından biri de şehrin denize en yakın ve en y&uuml;ksek tepesi olan &ldquo;Yuşa&rdquo; dır. Yuşa Tepesi, b&uuml;y&uuml;leyici manzarasıyla olduğu kadar, manevi havasıyla da &ouml;zel bir konuma sahiptir. Tepenin kutsiyeti, &uuml;zerinde antik &ccedil;ağda adına yapılan bir tapınağın bulunduğu, &ldquo;İyi R&uuml;zgarlar Efendisi Ourios&rdquo;a kadar dayandırılmaktadır. S&ouml;z konusu tapınak o zamanlar uygun r&uuml;zgarlar dilemek i&ccedil;in Boğaz&rsquo;ın giriş ve &ccedil;ıkışında gemiciler tarafından ziyaret edilen bir yerdi. Bug&uuml;n ise Yoros olarak da bilinen tepenin adının antik &ccedil;ağdaki Ourios&rsquo;dan geldiği d&uuml;ş&uuml;n&uuml;lmektedir.</p>
<p>Ge&ccedil;mişi efsanelerle yazılmış olan bu &ouml;zel tepeye dair bilinen Pagan efsanelerinden bir diğeri de ş&ouml;yledir: denizler tanrısı Poseidon ve su perisi Melie&rsquo;nin oğulları dev yapılı Amykos, Boğaz&rsquo;ın iki yakasında yaşayan Bebriklerin kralıdır. Boğaz o d&ouml;nem, Bebrikler ile Tanrı&ccedil;a Athena tarafından inşa edilen gemileriyle bir seferden d&ouml;nen Argonatların savaşına sahne olur. Amykos her ne kadar d&ouml;v&uuml;ş becerisiyle tanınsa da Argonotlardan Polluks ile karşılaşmasında yenilen taraf olur ve &ouml;l&uuml;r. Bug&uuml;n Yuşa Tepesi&rsquo;nde bulunan mezarın bu dev yapılı insana ait olduğu rivayet edilir. Bir diğer efsaneye g&ouml;re de bundan &uuml;&ccedil; bin yıl &ouml;nce Dev Dağı olarak bilinen bu tepede devler yaşamış ve bunlardan biri olan Yuşa, d&uuml;şmanlarla girdiği savaşta &ouml;lerek bu tepeye g&ouml;m&uuml;lm&uuml;şt&uuml;r.</p>
<p>Yoros ya da namıdiğer Yuşa tepesi, tarihin ilk d&ouml;nemlerinden beri &ccedil;eşitli inan&ccedil;larda kutsal kabul edilmiş ve burada tapınaklar yapılmıştır. İlk &ccedil;ağlarda burada bir Zeus mabedinin bulunduğu da bilinmektedir. Mabed, VI. y&uuml;zyılda Hristiyanlığın kabul&uuml;nden sonra Hagios Mikhael adına kiliseye &ccedil;evrilmiştir. Yuşa tepesinin kutsallığına olan inan&ccedil;, sonraki devirlerde oraya yaptırılan bir yatır-mezar ve tekke ile devam etmiştir. Osmanlı d&ouml;neminde Yuşa tepesindeki bu mezardan ilk bahseden kişi Evliya &Ccedil;elebi olmuş. Meşhur seyyah Seyahatname&rsquo;sinde Yoros Kalesi&rsquo;nden, yakınındaki Servi Burnu&rsquo;ndan ve &ccedil;evresindeki servilerlerle s&uuml;sl&uuml; yeşillik alandan bahsetmiş; Burada gezintiye &ccedil;ıkanların Yuşa Dağı&rsquo;ndaki Yuşa peygamberi ziyarete gittiklerini anlatmıştır.</p>
<p>Osmanlı d&ouml;neminde buraya genellikle toplu halde yapılan ziyaretlerin, kutsiyeti bakımından Cuma g&uuml;nlerine denk getirilmesine &ouml;zen g&ouml;sterilmiştir. Beykoz&rsquo;un kıyılarının bu g&uuml;nlerde pazar kayıklarıyla kaplandığından ve buraya gelen halkın &ouml;k&uuml;z arabalarına binerek tepeye akın ettiklerinden bahsedilmektedir. Boğaz&rsquo;a ve Karadeniz&rsquo;e farklı a&ccedil;ıdan hakim bir manzaraya sahip olan bu ziyaret tepesi, havanın g&uuml;zel olduğu zamanlarda daha fazla ziyaret&ccedil;i &ccedil;ekmiş ve gelenler bu muazzam manzarayı da izlemeyi ihmal etmemişler.</p>
<p>Tepeye Osmanlı denizcileri tarafından da bir kutsiyet atfedilmiştir. Donanma her defasında Boğaz&rsquo;ı ve denizcileri koruduğuna inanılan ve denizcilerin piri olarak kabul edilen d&ouml;rt manevi bek&ccedil;iye y&ouml;nelip dua ederek sefere &ccedil;ıkmıştır. Bu bek&ccedil;iler ise sırasıyla, Beşiktaş sırtlarındaki Yahya Efendi, &Uuml;sk&uuml;dar&rsquo;daki Aziz Mahmud H&uuml;dai, Sarıyer&rsquo;deki Telli Baba ve Beykoz&rsquo;daki Yuşa idi. Bu inanış g&uuml;n&uuml;m&uuml;zde de s&uuml;rmekte olup, bazı balık&ccedil;ılar motorlarıyla kıyıya yaklaşıp Boğaz&rsquo;ın koruyucuları huzurunda dua ederler.</p>
<p>Yuşa Tepesi, ge&ccedil;mişte olduğu gibi g&uuml;n&uuml;m&uuml;zde de İstanbul&rsquo;un en fazla rağbet edilen mekanlarından biri olmaya devam etmektedir. Dilekleri ger&ccedil;ekleşenler, minnet ve ş&uuml;kranlarının g&ouml;stermek adına Yuşa&rsquo;yı tekrar ziyaret etmekte ve orada bulunanlara şeker ya da lokma dağıtma geleneğini s&uuml;rd&uuml;rmektedirler.</p>', CAST(N'2016-11-14 17:46:51.463' AS DateTime), CAST(N'2016-11-14 17:46:51.463' AS DateTime), NULL, N'37b1d6be-d7a1-4944-9336-78390e034b8b', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (37, N'A Delicate Atelier in Fatih', NULL, N'<p>Gıyasettin Gelir, who is the master of the precision casting sculpture, has professed this job for 25 years. He makes a mould by using wax and rubber materials and then he produces empty sculptures and tools by pouring mines such as gold, silver and bronze into the mould. He offers sensitive products such as sculptures, sensitive door handles, parts of teapot to other workshops and stores together with his six employees working in his veteran workshop in Fatih, İstanbul. The secret of Gıyasettin Gelir, the Master of wax casting, is hidden in the grace of his craft.</p>', CAST(N'2016-11-14 17:47:45.233' AS DateTime), CAST(N'2016-11-14 17:47:45.233' AS DateTime), NULL, N'b544fde5-02d2-4769-9d8a-b49de1a2d3ab', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (38, N'Fatih’te Hassas bir Atölye', NULL, N'<p>Hassas d&ouml;k&uuml;m heykel ustası Gıyasettin Gelir 25 yıldır bu mesleği icra ediyor. Mum ve kau&ccedil;uk maddeler kullanılarak kalıp &ccedil;ıkarıyor ve &ccedil;ıkardığı kalıplara altın, g&uuml;m&uuml;ş ve bronz gibi madenler d&ouml;k&uuml;lerek i&ccedil;i boş heykeller ve gere&ccedil;ler &uuml;retiyor. İstanbul Fatih&rsquo;teki emektar at&ouml;lyesinde altı &ccedil;alışanıyla birlikte diğer at&ouml;lyelere ve mağazalara heykeller, hassas kapı kolları, &ccedil;aydanlık par&ccedil;aları gibi hassas &uuml;r&uuml;nler sunuyor. Mum d&ouml;k&uuml;m ustası Gıyasettin Gelir&rsquo;in sırrı, zanaatinin zarafetinde saklı.</p>', CAST(N'2016-11-14 17:48:13.947' AS DateTime), CAST(N'2016-11-14 17:48:13.947' AS DateTime), NULL, N'b544fde5-02d2-4769-9d8a-b49de1a2d3ab', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (39, N'Prologue III', NULL, N'<p>What relieves human beings after all turmoil? Either&nbsp;ecstatic laughter of sea gulls, or strokes of hammers into copper pieces firmly. Just eyes see crowded bazaars, a craftsman just makes the first sale of the day, pathways are just paced without tiring, and then human misses the peace.</p>
<p>We need to veteran hands for living. From sunshine yellow plains to tile red towns, we are looking on the hands of those weaving the tradition. Shiveringly as whispering his name, human being will look for humane state of the culture curiously.</p>
<p>We admire veteran hands for loving human. As long as bells tinkle in a lively dance tune, Anatolia will be sensed for centuries to one&rsquo;s heart&rsquo;s content. In the circumcision feast of the sons of Mehmed IV, the traveler renowned as Evliya &Ccedil;elebi orders dancer boys (<em>rakkas)</em>&nbsp;with brocaded dress as &ldquo;those with a great deal of experience, the blows of misfortune&rdquo;. Don&rsquo;t find strange if this story reaches to an Epic of Liberation in the notes of the master Ulvi Cemal Erkin. These myths come from the spell of Anatolia.</p>
<p>In a word, fairy tale is half truth half dream. But fairy tale is even demanding, reader! Let&rsquo;s just call a spade a spade : we feel embarrassment to life unless we endeavor.</p>', CAST(N'2016-11-14 17:49:00.800' AS DateTime), CAST(N'2016-11-14 17:49:00.800' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (40, N'Girizgah III', NULL, N'<p>Teskin eden nedir insanı onca hengameden sonra? Ya martıların esrik kahkahası, ya &ccedil;eki&ccedil;lerin sebatla vuruşu bakır parelere. Hele bir g&ouml;zler g&ouml;rmesin kalabalık &ccedil;arşıları, hele bir siftah yapmasın usta, hele arşınlanmasın patikalar yorulmaksızın, o zaman &ouml;zler insan huzuru.</p>
<p>Emektar ellere mecburuz yaşamak i&ccedil;in. G&uuml;neş sarısı ovalardan, kiremit kızılı kasabalara, geleneği &ouml;renlerin ellerine bakar dururuz. İsmi fısıldanır gibi &uuml;rpererek insanoğlu, merakla arayacak k&uuml;lt&uuml;r&uuml;n insanca halini.</p>
<p>Emektar ellere meftunuz sevmek i&ccedil;in insanı. &Ccedil;ınladık&ccedil;a k&ouml;&ccedil;ek&ccedil;e ziller, asırlar aşırı duyumsanacak doyasıya Anadolu. D&ouml;rd&uuml;nc&uuml; Mehmet&rsquo;in oğullarının s&uuml;nnet d&uuml;ğ&uuml;n&uuml;nde sırmalı ipekli fistanlı k&ouml;&ccedil;ekleri Evliya &Ccedil;elebi nam seyyah &ldquo;yetmiş tastan, feleğin &ccedil;emberinden ge&ccedil;miş&rdquo; diye buyurur. Bu hikaye &uuml;stad Ulvi Cemal Erkin&rsquo;in notalarında bir Kurtuluş Destanına bağlanıyorsa yadırgamayın. Bu efsaneler Anadolu&rsquo;nun efsunundandır.</p>
<p>S&ouml;z&uuml;n &ouml;z&uuml;, masallar yarı ger&ccedil;ek yarı hayal. L&acirc;kin masal bile emek istiyor, ey okur.</p>
<p>Eğri oturup doğru konuşalım: emek harcanmadık&ccedil;a mahcubuz şu hayatta.</p>', CAST(N'2016-11-14 17:49:36.667' AS DateTime), CAST(N'2016-11-14 17:49:36.667' AS DateTime), NULL, N'cce3b270-4739-47ac-88be-1e6f68b768e9', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (41, N'Sahmeran', NULL, N'<p>In Tarsus region, there were creatures living underground called Maran whose heads like a human and the lower half of the bodies like a snake. Although they were living secretly from people, there were some who had knowledge about medicine and helped people for good. The queen of Marans was a respectable creature among its community. One day, a young boy Cemsab took a walk with his friends looking for honey. He found greatest quality of honey deep down in a cave and took it out for his friends. Suddenly, his friends left him in the cave by taking honey and ran away. Cemsab was looking around as moving into uncharted waters, he saw a light in a tunnel. He dug with the aid of his knife and saw the most beautiful garden he had ever seen. Entering the garden with despair and curiosity, Cemsab met Sahmeran. In time, he learned medicine from Sahmeran and gained her confidence. One day, he realized that he had missed his family and decided to go back where he used to live. Sahmeran cautioned Cemsab against telling the place of Marans to anyone there.</p>
<p>As time passes, Cemsab kept Sahmeran&rsquo;s secret. One day, the Sultan of the region contracted a serious disease. None of doctors could help him feeling well. Sultan&rsquo;s assistant &lsquo;Vezir&rsquo; believed that Sahmeran could help the Sultan recovering from his illness and interrogated everyone in town. People&rsquo;s skin, after seeing Sahmeran, becomes thick and shiny. Vezir invited all citizens to Hamam where everyone takes a bath in a common area in order to observe their skins. That was how Cemsab had to tell where Sahmeran lives. When Vezir took Sahmeran prisoner, Sahmeran understood that it was not Cemsab&rsquo;s fault but he forced to tell her secret. She told him &ldquo;Let Vezir drink water that I am boiled and let the Sultan taste my meat.&rdquo; When Cemsab fed the Sultan with her meat, the Sultan has become healed. When he led Vezir drank water that Sahmeran was boiled, mean-spirited Vezir died. Rumor has it, none of Marans knows the fact that Sahmeran died. when they will ever learn, they are going to come from underground to take the revenge of killing Sahmeran.</p>', CAST(N'2016-11-14 17:50:18.217' AS DateTime), CAST(N'2016-11-14 17:50:18.217' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (42, N'Şahmeran', NULL, N'<p>Tarsus y&ouml;resinde, yerin altında yaşayan başları insan, belinden aşağısı yılan bi&ccedil;iminde olan, <em>Maran</em> isminde canlılar varmış. Maranlar her ne kadar insanlardan gizlenerek yaşasalar da &ccedil;ok kıymetli hekimlik bilgileri olan ve bu bilgiler ile insanlara gizlice yardım eden iyi niyetli varlıklarmış. Maranların ecesi olan Şahmeran da halkı tarafından &ccedil;ok sevilen, &ccedil;ok iyi niyetli bir varlıkmış. Bir g&uuml;n Cemşab isimli bir gen&ccedil;, arkadaşları ile Tarsus mağaralarında bal aramaya koyulmuş. Cemşab mağaranın derinliklerine girip &ccedil;ıkarttığı balı arkadaşlarına verdiğinde, arkadaşları balı alıp ka&ccedil;mış ve Cemşab&rsquo;ı mağarada bırakmışlar. Cemşab ne yapacağını bilemez halde etrafına bakarken yerde k&uuml;&ccedil;&uuml;k bir delik g&ouml;rm&uuml;ş. Deliğin i&ccedil;inden ışık &ccedil;ıkıyormuş, Cemşab ne olduğunu merak edip cebindeki bı&ccedil;akla deliği kazıyarak i&ccedil;ine bakmış ve &ouml;mr-&uuml; hayatında g&ouml;rd&uuml;ğ&uuml; en g&uuml;zel bah&ccedil;eyi bulmuş. &Ccedil;aresizlik ve merakla bah&ccedil;eye giren Cemşab, Şahmeran ile tanışmış. Zaman i&ccedil;erisinde Şahmeran&rsquo;dan hekimlik &ouml;ğrenmiş ve onun g&uuml;venini kazanmış. Bir g&uuml;n ailesinin &ouml;zlemine dayanamayacağını anlayan Cemşab, evine d&ouml;nmeye karar vermiş. Şahmeran da sevgili dostu Cemşab&rsquo;a, Maranların yerini asla kimseye s&ouml;ylememesi gerektiğini sıkı sıkı tembihlemiş. Gel zaman git zaman, Cemşab bu sırrı uzun sure saklamış. Bir g&uuml;n, &uuml;lkenin padişahı amansız bir hastalığa yakalanmış. &Uuml;lkedeki hi&ccedil; bir hekim bu hastalığa &ccedil;are olamayınca Vezir ancak Şahmeran&rsquo;ın bu derde deva olabileceğine inanmış ve &uuml;lkedeki herkesi tek tek sorguya &ccedil;ekmiş. Şahmeran&rsquo;ı g&ouml;ren insanın derisi pullanırmış, Vezir de insanları hamama davet ederek gizlice derilerine bakmış. B&ouml;ylece Cemşab, sırrını saklyacağına s&ouml;z verdiği Şahmeran&rsquo;ın yerini a&ccedil;ıklamak zorunda kalmış. Vezir, Şahmeran&rsquo;ı tutsak aldığında, Şahmeran Cemşab&rsquo;ın &ccedil;ok &uuml;zg&uuml;n olduğunu g&ouml;rm&uuml;ş ve bir su&ccedil;u olmadığına inanmış. &lsquo;Suyumu Vezire i&ccedil;ir, etimi de padişaha yedir&rsquo; demiş. Cemşab, Şahmeran &ouml;ld&uuml;r&uuml;ld&uuml;kten sonra etini padişaha yedirince padişah iyileşmiş. Sonra suyunu vezire i&ccedil;irmiş ve k&ouml;t&uuml; kalpli vezir oracıkta &ouml;l&uuml;vermiş. Rivayet olunur ki Şahmeran&rsquo;ın &ouml;ld&uuml;ğ&uuml;n&uuml; hi&ccedil; bir Maran bilmezmiş ve &ouml;ğrendikleri g&uuml;n yer altından &ccedil;ıkarak Tarsus&rsquo;u basacak ve insanlardan Şahmeran&rsquo;ın intikamını alacaklarmış.</p>', CAST(N'2016-11-14 17:50:39.457' AS DateTime), CAST(N'2016-11-14 17:50:39.457' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (43, N'The Legend of Aquarius: Ganymedes', NULL, N'<p>&ldquo;Ganymedes was the loveliest born of the race of mortals, and therefore<br />the gods caught him away to themselves, to be Zeus&rsquo; wine-pourer,<br />for the sake of his beauty, so he might be among the immortals.&rdquo;</p>
<p>Homer, Iliad</p>
<p>Ganymedes was the granddaughter of Tros from Dardanelle. She has respectable beauty so that even Zeus was impressed when he saw her in Ida&nbsp;Mountains located in Turkey&rsquo;s western shores. One day, Zeus became an eagle and took Ganymedes to Olympos, the Gods place, and make her be a waitress serving alcohol and fruit. Besides her gorgeous beauty, Ganymedes was overwhelmed by her clumsiness. Zeus had become so upset of not having Ganymedes to live with the Gods forever due to her disqualification, he took her to the sky and made her a star. That is how, ganymedes has come to our lives as Aquarius.</p>
<p><em>Ganymede Waters Zeus as an Eagle by Bertel Thorvaldsen (Minneapolis Institute of Arts, Minneapolis, MN)</em></p>
<p><em>Michelangelo&rsquo;s Ganymede. Copy after a lost original (1532) pencil. Royal Collection, Windsor Castle</em></p>
<p><em>The Abduction of Ganymede (ca. 1650), by Eustache Le Sueur</em></p>', CAST(N'2016-11-14 17:52:25.123' AS DateTime), CAST(N'2016-11-14 17:52:25.123' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (44, N'Kova Burcu Efsanesi: Ganymedes', NULL, N'<p>&ldquo;Ganymedes, &ouml;l&uuml;ml&uuml;lerin en g&uuml;zeliydi</p>
<p>tanrılar onu yanlarına aldılar ve Zeus&rsquo;un sakisi yaptılar</p>
<p>b&ouml;ylece o da artık &ouml;l&uuml;ms&uuml;zlerle birlikteydi&rdquo;</p>
<p>Homer, İlyada</p>
<p>Ganymedes, Dardanelli Tros&rsquo;un torunudur. &Ouml;ylesine g&uuml;zelmiş ki, Kaz dağlarında dolaşırken karşılaştığı Zeus dahi ondan etkilenmiş ve ilgisiz kalamamış. Bir g&uuml;n Zeus, Kaz dağlarında dolaşırken bir kartal g&ouml;r&uuml;n&uuml;m&uuml;ne girip Ganymedes&rsquo;i Olimposa, tanrıların yanına g&ouml;t&uuml;rm&uuml;ş, onu i&ccedil;ki ve nektarların sakisi yapmış. Ganymedes b&uuml;t&uuml;n g&uuml;zelliğine rağmen sakarlığına yenik d&uuml;şm&uuml;ş ve bir t&uuml;rl&uuml; bu işin altında kalkamamış. Saki olmaya devam edemeyeceğine ve tanrıların yanında sonsuza kadar kalamayacağına &uuml;z&uuml;len Zeus, Ganymedes&rsquo;i g&ouml;ky&uuml;z&uuml;ne &ccedil;ıkarıp onu bir yıldız yapmış. B&ouml;ylece Ganymedes, hayatlarımıza kova burcu olarak sonsuza kadar girmiş&hellip;</p>
<p><em>Ganymede Waters Zeus as an Eagle by Bertel Thorvaldsen (Minneapolis Institute of Arts, Minneapolis, MN)</em></p>
<p><em>Michelangelo&rsquo;s Ganymede. Copy after a lost original (1532) pencil. Royal Collection, Windsor Castle</em></p>
<p><em>The Abduction of Ganymede (ca. 1650), by Eustache Le Sueur</em></p>', CAST(N'2016-11-14 17:52:56.287' AS DateTime), CAST(N'2016-11-14 17:52:56.287' AS DateTime), NULL, N'4d514657-2401-465d-8e72-c35dc2d43f9a', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 2)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (45, N'Sen İnsansın', NULL, N'<p><em>&ldquo;</em><em>&Ccedil;</em><em>al</em><em>ı</em><em>yorum kap</em><em>ı</em><em>n</em><em>ı</em><em>z</em><em>ı</em><em>,</em></p>
<p><em>Teyze, amca bir imza ver.</em></p>
<p><em>&Ccedil;</em><em>ocuklar </em><em>&ouml;</em><em>ld</em><em>&uuml;</em><em>r</em><em>&uuml;</em><em>lmesin</em></p>
<p><em>Ş</em><em>eker de yiyebilsinler.&rdquo;</em></p>
<p>Nazım Hikmet</p>
<p>&nbsp;</p>
<p>K&uuml;&ccedil;&uuml;k bir &ccedil;ocuğum diyeceğim ama sa&ccedil;ma, k&uuml;&ccedil;&uuml;k olur &ccedil;ocuklar zaten. Hem, kime g&ouml;re k&uuml;&ccedil;&uuml;k denir &ccedil;ocuklara, seni beni d&ouml;ver onların hayalleri&hellip; Neyse işte, &ldquo;kocaman&rdquo; bi&rsquo; &ccedil;ocuğum ve oturmuşum bi&rsquo; kerpi&ccedil;,&nbsp; bi&rsquo; eski ev &ouml;n&uuml;nde.&Uuml;zerimde abilerimden kalma kırmızı, &uuml;&ccedil;, d&ouml;rt beden b&uuml;y&uuml;k bi&rsquo; kazak, bir de olmayacak hayallerim&hellip; Mesela, dinozormuş karşıki tepeler eskiden ve dirilicekler vakti gelince; dedim ya d&ouml;ver hayalleriyle. Komşuların &ccedil;ocukları top oynuyor,&nbsp; dar bi&rsquo; sokak, &ccedil;ıkmaz, &ouml;tede taze ekmek kokusu&hellip; Kapının&ouml;n&uuml;ndeyim anne gitmiyorum uzaklara merak etme! Merak etme anne oğlun hep bu eski evin kapısının &ouml;n&uuml;nde. Ayrılmadım ben o kapının &ouml;n&uuml;nden,&ccedil;&ouml;kt&uuml;m bi&rsquo; kenara &ccedil;aresiz, yalnız, belki biraz dışlanmış ama o kapı hep arkamda, ne zaman d&uuml;şecek gibi olsam sırtımı dayayabileyim diye. Pencereden sepeti sallasana anne, re&ccedil;el s&uuml;r&uuml;p bi&rsquo; ekmeğe. Hayır anne uzaklaşmıyorum kapının &ouml;n&uuml;nden, sen hi&ccedil; merak etme&hellip;</p>
<p>&ldquo;Ankara Kalesi&rdquo; by Emre Bostancı // CC BY</p>', CAST(N'2016-11-14 17:54:13.137' AS DateTime), CAST(N'2016-11-14 17:54:13.137' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 4)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (46, N'Human, You Are', NULL, N'<p><em>&ldquo;Knocking your door,</em></p>
<p><em>All I want is to have your support</em></p>
<p><em>In order not to let any children be murdered</em></p>
<p><em>But let them grow up with eating candy.&rdquo;</em></p>
<p>Nazım Hikmet</p>
<p>&nbsp;</p>
<p>I will start my sentence with &lsquo;when I was a little kid&rsquo; but it does not make any sense because kids are little anyway. Also in which terms we call little for kids, they can imagine what is unimaginable. In any manner, I am a &lsquo;big&rsquo; boy and sitting in front of an old adobe house. I am wearing and old and oversize sweater which belongs to my brother, and I have dreams that cannot be happened.. For instance, mountains behind the village were used to be dinosaurs and they will arise from death when the right time comes; like I said children can imagine what is unimaginable. Other kids are playing football in a lane, beyond them you can smell of freshly-baked bread.. I am standing in front of the door mother, do not worry I will not go far from home!.. Do not worry mother, your son will always stand in front of this house. I have never gone so far from home, having knelt down beside the door, lonely and even sometimes felt left out, but I knew the door would hold me whenever I feel like I am falling. Please mother, give me a slice of a bread with jam in a picnic basket. No mether, I am standing beside the door, do not worry I will not go far from home.</p>
<p>&ldquo;Ankara Citadel&rdquo; by Emre Bostancı // CC BY</p>', CAST(N'2016-11-14 17:54:58.363' AS DateTime), CAST(N'2016-11-14 17:54:58.363' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 4)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (47, N'From Iskilip', NULL, N'<p><em>&ldquo;Do not cry for me mother</em></p>
<p><em>I have suffered as much as everyone</em></p>
<p><em>Please hide out all memories of my childhood</em></p>
<p><em>That is the only thing I have ever had&hellip;&rdquo;</em></p>
<p>Sezen Aksu</p>
<p>We give kind regards to mountains that do not come into leaf when we cry, roofs that can feel autumn, people who walk or stand, poets who say &ldquo;When men and even death get tired, now it is time for the best poem called peace&rdquo; and mothers who clean out all of their misery every morning!..</p>
<p>&ldquo;İskilip&rdquo; by Kadir Tahtacı</p>', CAST(N'2016-11-14 17:55:45.293' AS DateTime), CAST(N'2016-11-14 17:55:45.293' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (48, N'İskilip’ten', NULL, N'<p><em>&ldquo;a</em><em>ğ</em><em>lama anne benim icin a</em><em>ğ</em><em>lama</em><em><br /></em><em>ben de herkes kadar yand</em><em>ı</em><em>m</em><em><br /></em><em>sen ne olur </em><em>&ccedil;</em><em>ocuklu</em><em>ğ</em><em>umu sakla</em><em><br /></em><em>tek kalan bu elimde avucumda</em><em>&hellip;&rdquo;</em></p>
<p>Sezen Aksu</p>
<p>Ağladık&ccedil;a yeşermeyen dağlara, sonbahar damlayan damlara, durana y&uuml;r&uuml;yene, <em>&ldquo;da</em><em>ğ</em><em>lar, insanlar hatta </em><em>&ouml;</em><em>l</em><em>&uuml;</em><em>m bile yorulduysa, </em><em>ş</em><em>imdi en g</em><em>&uuml;</em><em>zel </em><em>ş</em><em>iir bar</em><em>ış</em><em>t</em><em>ı</em><em>r&rdquo;</em> diyebilene ve her sabah acısını s&uuml;p&uuml;rmek i&ccedil;in kapısını a&ccedil;an analara İskilip&rsquo;ten bin selam ile!..</p>
<p>&ldquo;İskilip&rdquo; by Kadir Tahtacı</p>', CAST(N'2016-11-14 17:56:06.513' AS DateTime), CAST(N'2016-11-14 17:56:06.513' AS DateTime), NULL, N'5c3be49f-7aca-4deb-9c29-a4f181cfb26c', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (49, N'İstanbul’da Bir Kabak Kemane Ustası', NULL, N'<p><em>&ldquo;B&uuml;y&uuml;k bir duygusal birikim var, m&uuml;zik onu eşsiz bir enerjiye d&ouml;n&uuml;şt&uuml;r&uuml;p insanlara aktarıyor.&rdquo;</em></p>
<p>Ruşen Can Acet</p>
<p>&nbsp;</p>
<p>İstanbul&rsquo;un karmaşasının orta yerinde, Mecidiyek&ouml;y&rsquo;de y&uuml;kseliyor m&uuml;zik sesleri &rsquo;89 Manisa doğumlu gen&ccedil; usta, m&uuml;zisyen Ruşen Can Acet&rsquo;in ellerinden. Karşımızda bu kadar gen&ccedil; bir usta g&ouml;r&uuml;nce heyecanlanıyoruz, umut dolu bir s&ouml;yleşiye başlıyoruz. B&uuml;t&uuml;n engelleri aşıp evinde kurduğu at&ouml;lyesine girince ortada ciddi bir &ccedil;alışma olduğunu g&ouml;r&uuml;yoruz, hayranlığımız daha da artıyor.</p>
<p>M&uuml;zisyenlik aile geleneği&hellip; &Ouml;yle ki annesi ve babası saz kursunda tanışıyorlar. Uşaklı Halil &Ccedil;elik ustanın ellerinden &ccedil;ıkan kabak kemaneyi dayısının ona hediye etmesiyle başlıyor Ruşen&rsquo;in tutkusu hen&uuml;z &ccedil;ocuk yaşta. Kabak kemane yapmaya ise 18 yaşında başlıyor Manisa&rsquo;da. Şimdi ise Mecidiyek&ouml;y&rsquo;deki at&ouml;lyesinde s&uuml;rd&uuml;r&uuml;yor &ccedil;alışmalarını. Mezuniyetten sonra 1 yıl New York&rsquo;ta yaşıyor. Orada tanıştığı sufi m&uuml;ziği yapan İranlı bir m&uuml;zisyen ile Central Park&rsquo;ta, metrolarda, sinagoglarda, en ilginci ise Bahamalar&rsquo;ın Hindu tapınaklarında konserler veriyorlar.</p>
<p>Ruşen&rsquo;in olduk&ccedil;a geniş bir m&uuml;zik dağarcığı var. Farklı t&uuml;rleri harmanlamaya teşne. &Ccedil;ok sesli m&uuml;zikle de esaslı bir mecrada ilgileniyor: Ruhi Su Dostlar Korosu&rsquo;nda. &Ouml;te yandan enstr&uuml;manlarda da &ccedil;ok sesliliği arıyor. Kerim-Selim Altınok ile kurduğu &ldquo;3&times;2&rdquo; adlı gruplarında &ccedil;ok sesli &ccedil;alışmaya &ouml;zen g&ouml;steriyor.</p>
<p>Ahşap iş&ccedil;iliğine olan ilgisi onu daha nitelikli ve farklı ağa&ccedil;lardan mamul Kabak Kemaneler yapmaya y&ouml;nlendiriyor. Makine m&uuml;hendisi olan Ruşen&rsquo;in Kabak Kemane yaparken en b&uuml;y&uuml;k ama&ccedil;larından biri de m&uuml;hendisliği m&uuml;zikle yoğurarak, bilimsel ger&ccedil;eklere dayanarak daha iyi tınısı olan kemaneler &uuml;retmek. &Uuml;niversitede kompozit maddelerden kabak kemaneler yapıp, onların ses performanslarıyla ilgili &ccedil;alışarak esaslı bir bilgi birikimi edinmiş. Bu birikimi kullanarak iyi ses kalitesi ve standardı olan kabak kemaneler &ccedil;ıkarmaya &ccedil;alışıyor at&ouml;lyesinden. Anadolu&rsquo;da yapılan &ccedil;algıların Batıdakilere g&ouml;re dezavantajlı olmasını bu standart eksikliğine bağlıyor. El ustalığının &ouml;nemi kadar m&uuml;hendislik hesaplarının da &ouml;nemli olduğunu, ses kalitesi kadar &ccedil;algı malzemesinin zamana direnmesinin de &ouml;nemli olduğunu d&uuml;ş&uuml;n&uuml;yor.</p>
<p>&ldquo;M&uuml;zik bir matematik işi&rdquo; diyor Ruşen. Gelişmek, d&uuml;nyaca tanınmak istiyorsak aşk kadar teknik de &ouml;nemli. B&ouml;ylesine ileri g&ouml;r&uuml;şl&uuml; bir m&uuml;zisyenin ellerinden &ccedil;ıkacak kabak kemanelerin bir g&uuml;n t&uuml;m d&uuml;nyada tanınacağından hi&ccedil; kuşkumuz kalmadan, umut dolu ayrılıyoruz gen&ccedil; ustanın yanından.</p>', CAST(N'2016-11-14 17:57:18.797' AS DateTime), CAST(N'2016-11-14 17:57:18.797' AS DateTime), NULL, N'e1e481d5-9e49-4a4c-976b-6ddf99b3f01b', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (50, N'A Gourd Violin Maker in İstanbul', NULL, N'<p><em>&ldquo;There is a huge emotional accumulation, music transforms it into a unique energy and conveys to people.&rdquo;</em></p>
<p>Ruşen Can Acet</p>
<p>In the midst of the chaos in İstanbul, the sounds of the music are rising from the hands of Ruşen Can Acet being a young craftsman and musician who was born in Manisa in 1989. When we see such a young craftsman, we become very excited and are starting a very hopeful conservation. When we enter into his workshop which he built in his house by overcoming all obstacles, we are seeing there is a serious work in view, our admiration becomes much more.</p>
<p>Musicianship is his family tradition&hellip; In fact, his mother and father met a stringed instrument (saz) course. The music passion of Ruşen began at a young age when his uncle presented the gourd violin being off the hands of Halil &Ccedil;elik Usta from Uşak to him. He started to make the gourd violin in Manisa when he was 18. And he has maintained his works in his workshop in Mecidiyek&ouml;y anymore. He had lived in New York for a year after his graduation. He had performed concerts together with an Iranian musician interested in Sufi music, whom he met in there, in Central Park, subways, synagogues and Hindu temples in Bahamas, which was the most interesting one.</p>
<p>Ruşen has a wide repertoire of music. He is thirsty for blending different types of music. He is interested in polyphonic music in a vital medium: in Ruhi Su Associates Choir (Ruhi Su Dostlar Korosu). On the other hand, he is looking for polyphony in the instruments. He makes a point of polyphonic study in the group named &ldquo;3&times;2&rdquo; which he established with Kerim-Selim Altınok.</p>
<p>He tends to make more qualified Gourd Violins made from different kinds of tree because of his interest in woodworking. One of the great objectives of Ruşen, who is a mechanical engineer, is to produce violins which have better tone based on scientific facts by combining the engineering with the music. He made gourd violins from composite materials in the university and did studies related to their sound performance, so he had an essential accumulation of knowledge. He has tried to make gourd violins with better sound quality and standard in his workshop by using this experience. He thinks the reason why instruments made in Anatolia are more disadvantageous than Western ones is the lack of standard. He considers the engineering calculation is as important as the importance of the hand workmanship and the material of the musical instrument should resist to time as the sound quality.</p>
<p>&ldquo;Music is a mathematical work,&rdquo; says Ruşen. The technique is as important as the love if we want to improve ourselves and become internationally famous. We are departing from the side of the young craftsman hopefully without any doubt that gourd violins manufactured by such a forward-looking musician will have been recognized all around the world one day.</p>', CAST(N'2016-11-14 17:57:48.447' AS DateTime), CAST(N'2016-11-14 17:57:48.447' AS DateTime), NULL, N'e1e481d5-9e49-4a4c-976b-6ddf99b3f01b', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (51, N'Cinnah 19', NULL, N'<p><em>Ankara brings eyes, which know how to reveal the hidden, to beauty&hellip; Blind streets, a wide terrace, an ornamented wall; they appear with a sudden, make people smile. Most of the time, those revealed beauties have a history left behind. The house of a national leader, an old garden of an embassy, a ball room where many projects was embarked on.</em></p>
<p>Cinnah 19; is one of the best examples of a modern apartment building, located in Cinnah Street of &Ccedil;ankaya, the central district of Ankara. In terms of its location, it is one of the key points of the city. The street is in the named after&nbsp;Pakistan&rsquo;s historical leader Muhammed Ali Cinnah. The street was known as Vali Dr. Reşit Street until 1970s. The mayor of that time Vedat Dalokay, renamed the street as Cinnah Street after he had participated to an architectural project and been rewarded in Pakistan. Starting from Atakule to Kavaklıdere square, the street connects Kızılay with &Ccedil;ankaya. The German, Afghanistan, Sweden, India, Hungary and former Yugoslavia consulates are the most important buildings located on the street. Although residental area was predominant on the street in 1950s, recently business offices occupy the street. In any case, everyone happens to pass this steep street coming to Ankara.</p>
<p>Cinnah 19 is located at the very beginning of that steep street, on the left. Two sided 15-storey building has 17 apartments; the building is located perpendicular to the street at the same time it has a view north side of the building. One evening, we as three friends watch the building admiringly. We get inside, go up the stairs and go down the stairs. The idle pool on the roof, the design of its garden inspire us everytime. Randomly knocking a door and we want to glance around the room. An old-age couple invites us inside and shows us the apartment. Cinnah 19 comes into our lives with these sweet memories..</p>
<p>With the real name of Cinnah 19 &ldquo;Meydanlar M&uuml;d&uuml;rl&uuml;ğ&uuml; İş&ccedil;ileri Yapı Kooperatifi Apartmanı&rdquo;, it was built for engineers and architects who had worked in airport. In 1954 the design of the building was prepared by architect Nejat Ersin and his team, the construction of the building was completed in 1957. Cinnah 19; has shared area just like Emin Onat&rsquo;ın Hayat Apartmanı (1959), 96&rsquo;lar Apartmanı (1956) in Ahmetler Region and Fikir İş&ccedil;ileri Apartmanı (1957) in B&uuml;kl&uuml;m Avenue. Different sources mention that the architecture of the building has been affected by modern architects such as Le Corbusier, Oscar Niemeyer, Lucio Costa and Edward Durrell Stone. The prime minister of that period Adnan Menderes and the president Celal Bayar; had requested to take Cinnah 19 under preservation along with &Ccedil;ankaya Mosque, a masterpiece of Hayati Tabanlıoğlu, however after the military coup in 1960 the demand laid aside. Recently, Cinnah 19 stays as a vivid example of Ankara&rsquo;s modern architecture hosting business offices and&nbsp;residences in Cinnah Street. Undoubtedly, a must-see for architecture-lovers in Turkey&rsquo;s capital.&nbsp;</p>', CAST(N'2016-11-14 17:59:28.150' AS DateTime), CAST(N'2016-11-14 17:59:28.150' AS DateTime), NULL, N'3a303ba8-a361-4b66-81b0-399a88d7168a', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 4)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (52, N'Cinnah 19', NULL, N'<p><em>Bakmasını bilen g&ouml;zlerin karşısına s&uuml;rekli g&uuml;zellikler &ccedil;ıkartan bir şehir Ankara&hellip; &Ccedil;ıkmaz bir sokak, ferah bir teras, sarmaşıklı bir duvar; bir anda insanın karşısına &ccedil;ıkar, y&uuml;z&uuml;n&uuml; g&uuml;l&uuml;msetir. &Ccedil;oğu zaman da arkasında b&uuml;y&uuml;k hik&acirc;yeler taşıyan yerlerdir bunlar &uuml;stelik. Merhum bir devlet adamının evi, eski bir sefaret bah&ccedil;esi, yakın tarihin ilk&rsquo;lerinin yaşandığı bir balo salonu.</em></p>
<p><strong>Cinnah 19</strong>; Ankara&rsquo;nın merkez il&ccedil;esi &Ccedil;ankaya&rsquo;nın <strong>Cinnah Caddesi</strong> &uuml;zerinde bulunan, işte tam da b&ouml;yle bir apartman. Konumu itibariyle Ankara&rsquo;nın kilit noktalarından birinde bulunur. &Uuml;zerinde bulunduğu cadde, adını <strong>Pakistan</strong>&rsquo;ın tarihi lideri <strong>Muhammed Ali Cinnah</strong>&rsquo;tan alır. Cadde, 1970&rsquo;li yıllara kadar <em>Vali Dr. Reşit Caddesi</em> olarak anılır. D&ouml;nemin Belediye Başkanı <strong>Vedat Dalokay</strong>, Pakistan&rsquo;da katıldığı mimari bir projede aldığı &ouml;d&uuml;l sonrasında, &uuml;lkenin liderinden esinlenerek caddenin ismini Cinnah Caddesi&rsquo;ne &ccedil;evirir. Atakule&rsquo;den başlayıp Kavaklıdere Meydanı&rsquo;nda son bulan cadde, Kızılay&rsquo;la &Ccedil;ankaya&rsquo;yıbirbirine bağlar. Almanya, Afganistan, İsve&ccedil;, Hindistan, Macaristan ve Yugoslavya Konsoloslukları, caddenin &ouml;nemli yapıları arasında yer alır. 1950&rsquo;lerde konut ağırlıklı olan caddede; g&uuml;n&uuml;m&uuml;zde iş yerleri ağırlıktadır. &Ouml;yle ya da b&ouml;yle yolu Ankara&rsquo;dan ge&ccedil;en hemen herkesin uğradığı duraklardan biridir bu dik yokuşlu cadde.</p>
<p>Cinnah 19, Cinnah Caddesi&rsquo;nin o meşhur yokuşunun nispeten başında, sol tarafta yer alır. 15&rsquo;i iki katlı, 17 dairelik yapı; caddeye dik olarak konumlanmış, aynı zamanda kuzeye ve manzaraya y&ouml;nelmiş bir a&ccedil;ıda durur. Bir akşam&uuml;st&uuml; &uuml;&ccedil; arkadaş b&uuml;y&uuml;k bir hayranlıkla bu apartmanı izleriz. İ&ccedil;ine girer, merdivenlerini &ccedil;ıkar, merdivenlerini ineriz. &Ccedil;atısında şu an atıl konumda olan havuzu, bah&ccedil;esinin d&uuml;zeni bizi &ccedil;ok etkiler. Rastgele bir kapıyı &ccedil;alar, i&ccedil;eri bakmak i&ccedil;in izin isteriz. Hava Meydanları emeklisi yaşlı bir &ccedil;ift bizi buyur eder, evlerini gezdirir. B&ouml;yle tatlı bir anı ile girer Cinnah 19 hayatımıza&hellip;</p>
<p>Asıl adı &ldquo;Meydanlar M&uuml;d&uuml;rl&uuml;ğ&uuml; İş&ccedil;ileri Yapı Kooperatifi Apartmanı&rdquo; olan Cinnah 19, havaalanında &ccedil;alışan m&uuml;hendis ve mimarlara mesken oluşturmak amacıyla inşa edilmiş. 1954 yılında Mimar Nejat Ersin ve ekibi tarafından tasarlanan binanın yapımı 1957&rsquo;de sona ermiştir. Cinnah 19; Emin Onat&rsquo;ın Hayat Apartmanı (1959), Ahmetler&rsquo;deki 96&rsquo;lar Apartmanı (1956) ve B&uuml;kl&uuml;m Sokak&rsquo;taki Fikir İş&ccedil;ileri Kooperatifi (1957) ile ortak kullanım alanlarına sahip yapılar arasında sayılı &ouml;rneklerden. &Ccedil;eşitli kaynaklarda, binanın mimarisinde, d&ouml;nemin &uuml;nl&uuml; modern mimarları Le Corbusier, Oscar Niemeyer, Lucio Costa ve Edward Durrell Stone&rsquo;un etkisinin g&ouml;r&uuml;ld&uuml;ğ&uuml; s&ouml;ylenmektedir. D&ouml;nemin Başbakanı Adnan Menderes ve Cumhurbaşkanı Celal Bayar; Cinnah 19&rsquo;un, yakınındaki mimar Hayati Tabanlıoğlu&rsquo;nun &Ccedil;ankaya Camii ile birlikte tek bir yeşil alan i&ccedil;ine alınarak korunmasını talep etmişler, ancak 1960 darbesi sonucu bu girişim rafa kaldırılmıştır. Bug&uuml;nse kimi dairelerinde ofisler, kimilerinde evler ile Cinnah Caddesi&rsquo;ndeki varlığını devam ettiriyor.</p>', CAST(N'2016-11-14 18:00:17.397' AS DateTime), CAST(N'2016-11-14 18:00:17.397' AS DateTime), NULL, N'3a303ba8-a361-4b66-81b0-399a88d7168a', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 4)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (53, N'From Zeki Müren With Love', NULL, N'<p>Bodrum means sun, joy and different shades of blue for most of the people; but it also has magnificent historical, social and artistic influence. Choosing Bodrum for either living or vacation, there are&nbsp;various activities to do. One thing that remarks on those activities is to visit the&nbsp;beloved singer Zeki M&uuml;ren&rsquo;s house. This lovely house is in <em>Kumbah&ccedil;e</em> and was opened to public&nbsp;visit in 2000. Zeki M&uuml;ren&rsquo;s belongings, photos, costumes, and records are exhibited in that museum. While looking his paintings on the wall and noticing the names that he gave to them, once more I realised how his feelings are hidden inside his songs and artworks. I stepped back and tried to imagine what he had been through. The way of giving expression to his feelings inspired me and made me feel grateful&nbsp;to him. I am leaving my words to photos with recommending you to spare time for this lovely house-museum when you visit Bodrum.</p>
<p><span id="more-4070"></span>A little note for Aegean&nbsp;aficionados:&nbsp;you can watch the spectacular view from sitting on the bench across the garden!</p>', CAST(N'2016-11-14 18:02:25.843' AS DateTime), CAST(N'2016-11-14 18:02:25.843' AS DateTime), NULL, N'c4994047-320d-4195-b600-032f2e4241b5', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 5)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (54, N'Sevgilerle Zeki Müren', NULL, N'<p>Bodrum bir&ccedil;ok kişi i&ccedil;in deniz, g&uuml;neş, eğlence demek olabilir ama tarihi, sosyal ve sanatsal a&ccedil;ıdan da insanı doyurabilen bir yer. Yaşarken de tatil i&ccedil;in gelindiğinde de ajanda yelpazesini geniş tutup &ccedil;eşitlendirmekte fayda var. Bu &ccedil;eşitliliğe ilk olarak eklenebilecek&nbsp;şey sanat g&uuml;neşimiz Zeki M&uuml;ren&rsquo;in &ouml;mr&uuml;n&uuml;n son yıllarını ge&ccedil;irdiği Bodrum&rsquo;daki evi. Kumbah&ccedil;e&rsquo;nin en nadide&nbsp;yerinde konumlanan bu g&uuml;zel Bodrum evi, 2000 yılında m&uuml;ze haline getirilerek halkın ziyaretine a&ccedil;ılmış. İ&ccedil;erisinde &ldquo;paşa&rdquo;nın s&ouml;ylediği şarkılar eşliğinde kullandığı eşyaları, fotoğrafları, kost&uuml;mleri, plakları sergileniyor. Evin duvarlarında kendi yaptığı resimlere bakarken tablolarına verdiği isimler dikkatimi &ccedil;ekti. Sanat&ccedil;ının hisleri, aktarmak istedikleri şarkılarında, tablolarında&hellip; Neler yaşamış neler hissetmiş tasavvur etmeye &ccedil;alıştım. &Ccedil;ok etkilendim, bir yandan da orada olabildiğim i&ccedil;in &ccedil;ok mutlu oldum. Ne yapın ne edin Bodrum&rsquo;a gelirseniz birka&ccedil; saatinizi burayı g&ouml;rmek i&ccedil;in ayarlayın diyerek bu kadar c&uuml;mle yeter diyorum ve fotoğraflar da sana birşeyler anlatsın istiyorum.</p>
<p><span id="more-4059"></span>Bah&ccedil;edeki arabasının karşısındaki bankta oturarak biraz manzara seyretmeyi de unutma derim.</p>', CAST(N'2016-11-14 18:03:01.717' AS DateTime), CAST(N'2016-11-14 18:03:01.717' AS DateTime), NULL, N'c4994047-320d-4195-b600-032f2e4241b5', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 5)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (55, N'Karaelmas', NULL, N'<p><em>&ldquo;G&uuml;neşli bir g&uuml;nde<br />Masmavi g&ouml;receğiz Karadeniz&rsquo;i<br />Balkaya&rsquo;dan Karpuz&rsquo;a kadar.<br />Karış karış biliriz bu şehri;<br />EKİ&rsquo;nin &ccedil;i&ccedil;ekli bah&ccedil;eleri,<br />Rıhtıma k&ouml;m&uuml;r taşıyan vagonlarıyla;<br />Paydos saatlerinde yollara d&ouml;k&uuml;len,<br />Soluk benizli insanlarıyla.<br />Siyah akar Zonguldak&rsquo;ın deresi<br />Y&uuml;z karası değil, k&ouml;m&uuml;r karası<br />B&ouml;yle kazanılır ekmek parası.&rdquo;</em></p>
<p>(Orhan Veli, 1946)</p>
<p>Kimine sonsuz boşluğa yolculuğu, kimine aydınlığa ulaşmayı anımsatır. Vakti zamanında zor da olsa kavramsallaştırılabilmiş ve &ldquo;madencilik&rdquo; denmiş bu esmer&nbsp;zanaate. Yery&uuml;z&uuml;ndeki emek yoğun sekt&ouml;rlerin başında gelen madencilik Batı Karadeniz&rsquo;i, insan emeğinin kıymeti de Zonguldak&rsquo;ı hatırlatır. Cefakarların değilse de emektarların şehridir Zonguldak.<span id="more-4083"></span></p>
<p>Cumhuriyet tarihinin ilk şehir tohumlarındandır Zonguldak. &Ccedil;arklarını insan g&uuml;c&uuml;yle &ccedil;eviren bu şehir &ouml;zellikle cumhuriyetin ilk yılları ile birlikte &ouml;nce kendine sonra t&uuml;m &uuml;lkeye g&uuml;&ccedil; verir. Kiminin aklında &ldquo;Emeğin Başkenti&rdquo;, kiminin aklında &ldquo;İki Katlı Şehir&rdquo; diye yer eder. Orhan Veli&rsquo;nin de uğradığı bu Karaelmas Diyarı&rsquo;nda hala tazeliğini koruyan, şehrin bir&ccedil;ok noktasına konuşlandırılmış izler adeta bu esmer&nbsp;zanaatın imzası gibi durur.</p>', CAST(N'2016-11-14 18:04:06.063' AS DateTime), CAST(N'2016-11-14 18:04:06.063' AS DateTime), NULL, N'73721a44-5d8b-472b-8dbc-790b17bcc3c9', 0, 1, 0, 0, N'tr', 1, 0, 0, 0, 1)
INSERT [dbo].[Posts] ([Id], [Title], [Description], [PostContent], [DateCreated], [DateModified], [MediaURL], [AuthorId], [Type], [IsPublished], [IsCommentEnabled], [IsSharingEnabled], [Language], [Status], [HasLocation], [Latitude], [Longitude], [AreaId]) VALUES (56, N'Black Diamond', NULL, N'<p>&ldquo;On a sunny day</p>
<p>We will see Black Sea as deep blue,</p>
<p>From Balkaya to Karpuz.</p>
<p>We know every inch of this city;</p>
<p>The flower gardens of EKI,</p>
<p>With its wagons carrying coal to the dock;</p>
<p>With its sallow people</p>
<p>Who take to the the roads at rush hours.</p>
<p>The stream of Zonguldak is flowing black waters,</p>
<p>It is coal black but not black sheep</p>
<p>It is the way to earn one&rsquo;s keep&rdquo;</p>
<p>(Orhan Veli, 1946 )</p>
<p>It remembers some people of a never-ending journey to the emptiness and evokes to achieve the enlightenment for others. Once upon a time, this black craft was called as &ldquo;mining&rdquo;, which could be conceptualized although it was difficult. Mining, which is the leading of the labor-intensive sectors all around the world, reminds of Western Black Sea and the worth of human labor also remembers Zonguldak. Zonguldak is the city of the veteran people but not long-suffering ones.</p>
<p>Zonguldak is one of the first cities in the history of the Republic. The city, which turns the wheels with manpower, has initially given the strength to itself and then the whole country especially along with the first years of the Republic. It sticks as &ldquo;The Capital of Labor&rdquo; in some people and as &ldquo;Two-Storey City&rdquo; in other ones. In this Black Diamond Land where Orhan Veli also visited, traces maintaining their freshness and being deployed at several points of the city actually stand out like the signature of this black craft.</p>', CAST(N'2016-11-14 18:04:23.820' AS DateTime), CAST(N'2016-11-14 18:04:23.820' AS DateTime), NULL, N'73721a44-5d8b-472b-8dbc-790b17bcc3c9', 0, 1, 0, 0, N'en', 1, 0, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[Posts] OFF
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (1, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (2, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (3, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (4, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (5, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (6, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (7, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (8, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (9, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (10, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (11, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (12, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (13, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (14, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (15, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (16, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (17, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (18, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (19, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (20, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (21, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (22, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (23, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (24, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (25, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (26, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (27, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (28, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (29, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (30, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (31, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (32, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (33, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (34, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (35, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (36, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (37, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (38, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (39, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (40, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (41, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (42, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (43, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (44, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (45, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (46, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (47, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (48, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (49, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (50, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (51, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (52, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (53, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (54, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (55, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (56, 1)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (4, 2)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (4, 3)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (10, 3)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (11, 3)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (14, 3)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (4, 4)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (10, 4)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (3, 5)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (9, 5)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (26, 5)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (10, 6)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (10, 7)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (11, 8)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (11, 9)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (12, 10)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (13, 10)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (12, 11)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (12, 12)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (13, 13)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (13, 14)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (14, 15)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (21, 15)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (22, 15)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (14, 16)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (17, 17)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (17, 18)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (17, 19)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (21, 19)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (22, 19)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (17, 20)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (25, 20)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (26, 20)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (17, 21)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (19, 22)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (19, 23)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (19, 24)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (19, 25)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (20, 25)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (20, 26)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (20, 27)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (20, 28)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (21, 29)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (22, 29)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (21, 30)
GO
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (22, 30)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (23, 31)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (24, 31)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (23, 32)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (23, 33)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (24, 33)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (23, 34)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (24, 35)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (24, 36)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (25, 37)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (26, 37)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (25, 38)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (26, 38)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (25, 39)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (26, 39)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (26, 40)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (26, 41)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (27, 42)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (27, 43)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (28, 43)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (27, 44)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (27, 45)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (28, 45)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (27, 46)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (27, 47)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (28, 47)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (29, 48)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (56, 48)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (29, 49)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (29, 50)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (30, 50)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (29, 51)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (30, 52)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (30, 53)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (31, 54)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (32, 54)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (31, 55)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (31, 56)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (31, 57)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (31, 58)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (32, 58)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (31, 59)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (32, 59)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (33, 60)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (35, 60)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (33, 61)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (33, 62)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (34, 62)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (34, 63)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (34, 64)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (35, 65)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (36, 65)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (35, 66)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (36, 66)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (49, 66)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (50, 66)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (35, 67)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (36, 67)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (37, 68)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (38, 68)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (37, 69)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (38, 69)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (37, 70)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (38, 70)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (37, 71)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (38, 71)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (37, 72)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (38, 72)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (38, 73)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (38, 74)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (38, 75)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (39, 76)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (39, 77)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (40, 77)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (39, 78)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (40, 78)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (40, 79)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (41, 79)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (42, 79)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (40, 80)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (41, 81)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (41, 82)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (42, 82)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (41, 83)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (42, 83)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (43, 84)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (43, 85)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (43, 86)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (44, 86)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (43, 87)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (44, 87)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (43, 88)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (43, 89)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (44, 89)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (43, 90)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (44, 90)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (43, 91)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (45, 92)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (46, 92)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (51, 92)
GO
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (52, 92)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (45, 93)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (45, 94)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (46, 95)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (46, 96)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (49, 97)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (49, 98)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (50, 99)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (50, 100)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (50, 101)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (51, 102)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (51, 103)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (52, 103)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (51, 104)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (51, 105)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (52, 105)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (52, 106)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (53, 107)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (54, 107)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (53, 108)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (54, 108)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (53, 109)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (53, 110)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (54, 110)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (55, 111)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (55, 112)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (55, 113)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (56, 113)
INSERT [dbo].[PostTag] ([PostRefId], [TagRefId]) VALUES (56, 114)
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (1, N'Ustamdan', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (2, N'ayakkabı', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (3, N'İnsan', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (4, N'iskilip', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (5, N'craftsman', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (6, N'merkep', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (7, N'semerci', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (8, N'hikaye', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (9, N'yazgı', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (10, N'Human', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (11, N'Stories', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (12, N'Storytelling', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (13, N'Anatolia', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (14, N'History', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (15, N'Anadolu', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (16, N'tarih', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (17, N'girizgah', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (18, N'haziran', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (19, N'hicaz', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (20, N'Usta', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (21, N'Yaşam', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (22, N'kahve', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (23, N'Kültür', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (24, N'osmanlı', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (25, N'yemen', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (26, N'bean', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (27, N'coffee', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (28, N'ottoman', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (29, N'aşk', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (30, N'makam', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (31, N'adana', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (32, N'goat', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (33, N'seyhan', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (34, N'shepherd', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (35, N'çoban', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (36, N'sürü', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (37, N'demir', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (38, N'gelenek', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (39, N'safranbolu', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (40, N'iron', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (41, N'tradition', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (42, N'aegean crafts', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (43, N'ege işçiliği', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (44, N'saddler', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (45, N'semercilik', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (46, N'tire craftsmen', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (47, N'tire zanaati', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (48, N'black sea', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (49, N'crafts', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (50, N'giresun', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (51, N'kemancha', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (52, N'karadeniz zanaati', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (53, N'kemençe', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (54, N'doğu', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (55, N'eastern anatolia', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (56, N'eastern craft', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (57, N'erzincan', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (58, N'erzincan zanaati', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (59, N'kemaliye', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (60, N'heritage', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (61, N'istanbul''s mystery', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (62, N'sultanahmet', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (63, N'bizans', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (64, N'istanbul efsaneleri', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (65, N'efsane', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (66, N'istanbul', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (67, N'yoros', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (68, N'bronze', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (69, N'fatih', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (70, N'istanbul crafts', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (71, N'precision casting', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (72, N'sculpture', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (73, N'heykel', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (74, N'istanbul zanaatleri', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (75, N'mum döküm', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (76, N'anatolian dancer', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (77, N'erkin', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (78, N'kocekce', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (79, N'anadolu efsaneleri', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (80, N'evliya çelebi', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (81, N'anatolian legends', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (82, N'şahmeran', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (83, N'tarsus', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (84, N'aegean', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (85, N'aquarius', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (86, N'ege', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (87, N'ida dağı', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (88, N'ida mountains', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (89, N'kova', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (90, N'mitoloji', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (91, N'mythology', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (92, N'ankara', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (93, N'çocuk', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (94, N'kale', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (95, N'children of turkey', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (96, N'citadel', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (97, N'kabak kemane', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (98, N'müzik ve zanaat', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (99, N'gourd', N'tr')
GO
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (100, N'kemani', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (101, N'violin', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (102, N'architecture', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (103, N'cinnah', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (104, N'corbusier', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (105, N'modern', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (106, N'mimari', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (107, N'bodrum', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (108, N'sanat güneşi', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (109, N'turkish classical music', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (110, N'zeki müren', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (111, N'emek', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (112, N'karadeniz', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (113, N'zonguldak', N'tr')
INSERT [dbo].[Tags] ([Id], [Name], [Language]) VALUES (114, N'labor', N'tr')
SET IDENTITY_INSERT [dbo].[Tags] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Comments_dbo.Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_dbo.Comments_dbo.Posts_PostId]
GO
ALTER TABLE [dbo].[PostCategory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostCategory_dbo.Categories_CategotyRefId] FOREIGN KEY([CategotyRefId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostCategory] CHECK CONSTRAINT [FK_dbo.PostCategory_dbo.Categories_CategotyRefId]
GO
ALTER TABLE [dbo].[PostCategory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostCategory_dbo.Posts_PostRefId] FOREIGN KEY([PostRefId])
REFERENCES [dbo].[Posts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostCategory] CHECK CONSTRAINT [FK_dbo.PostCategory_dbo.Posts_PostRefId]
GO
ALTER TABLE [dbo].[PostMedias]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostMedias_dbo.Posts_Post_Id] FOREIGN KEY([Post_Id])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[PostMedias] CHECK CONSTRAINT [FK_dbo.PostMedias_dbo.Posts_Post_Id]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Posts_dbo.Areas_AreaId] FOREIGN KEY([AreaId])
REFERENCES [dbo].[Areas] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_dbo.Posts_dbo.Areas_AreaId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Posts_dbo.AspNetUsers_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_dbo.Posts_dbo.AspNetUsers_AuthorId]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostTag_dbo.Posts_PostRefId] FOREIGN KEY([PostRefId])
REFERENCES [dbo].[Posts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_dbo.PostTag_dbo.Posts_PostRefId]
GO
ALTER TABLE [dbo].[PostTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PostTag_dbo.Tags_TagRefId] FOREIGN KEY([TagRefId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostTag] CHECK CONSTRAINT [FK_dbo.PostTag_dbo.Tags_TagRefId]
GO
