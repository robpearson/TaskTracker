INSERT INTO [dbo].[Projects]
           ([Name]
           ,[Description])
     VALUES
           ('Octopus Support','Answering Support tickets for Octopus'),
		   ('TaskTracker','Working on the TaskTracker project with Rob P.'),
		   ('Octoposh','Octoposh module development'),
		   ('Learning','General learning like Pluralsight, books n stuff')

INSERT INTO [dbo].[Tags]
           ([Name])
     VALUES
           ('HelpScout'),
		   ('Tender'),
		   ('Twitter'),
		   ('Documentation'),
		   ('Call'),		   
		   ('KT Ticket'),		   
		   ('OSS Support'),
		   ('Pluralsight'),
		   ('Development'),
		   ('ALM')

INSERT INTO [dbo].[Tasks]
           ([ProjectID]
           ,[TagID]
           ,[Name]
           ,[Description])
     VALUES
           (1,1,'https://helpscout/ticket1','Amazing Helpscout reply'),
		   (1,2,'https://Tender/ticket1','Amazing Tender reply'),
		   (1,3,'https://Twitter/GrumpyUser/Tweet1','Told customer to send email instead'),
		   (1,4,'https://docs.octopus.com/Doc1','Added example to doc'),
		   (1,5,'Call with Jonathan Joestar','Fixed issue with his tentacles and hamon'),
		   (1,6,'https://helpscout/ticket1','Added comment for Daniel on ticket'),
		   (2,2,'Fixed stuff','Some data. I`m tired...'),
		   (3,7,'Fixed some bugs','https://github.com/Dalmirog/Octoposh/Issues/1'),
		   (3,9,'Answered queries in Gitter','https://Gitter.com/Dalmirog/Octoposh/Message1234'),
		   (4,8,'Watched some chapters','Https://pluralsight.com/course1/Chapter1')
GO






