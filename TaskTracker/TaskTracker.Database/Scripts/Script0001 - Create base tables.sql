USE [TaskTracker]
GO

-- Projects
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](250) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
) ON [PRIMARY]

-- Tags 
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
) ON [PRIMARY]

-- Tasks
CREATE TABLE [dbo].[Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [int] NULL,
	[TagID] [int] NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](250) NULL
) ON [PRIMARY]

-- Task Tags (i.e. tags related to a task)
CREATE TABLE [dbo].[TaskTags](
	[TaskId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [IX_TaskTag] UNIQUE NONCLUSTERED 
(
	[TaskId] ASC,
	[TagId] ASC
)
) ON [PRIMARY]

GO

