CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[description] [nchar](10) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO Category
     VALUES
           (1,'Toy'),
		   (2,'Water'),
		   (3,'Meal');

CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_ProductTb] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


INSERT INTO [dbo].[Product]
           ([Id]
           ,[name])
     VALUES
           (1,'Car'),
		   (2,'Soda');


CREATE TABLE [dbo].[ProductCategory](
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [id_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO [dbo].[ProductCategory]
           ([ProductId]
           ,[CategoryId])
     VALUES
           (1,1),
		   (2,2),
		   (2,3);
		   
SELECT Category.description,Product.name
FROM Product,Category,ProductCategory
WHERE ProductId = Product.Id
AND CategoryId = Category.Id