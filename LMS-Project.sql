

create database LMS; 

use LMS; 

------------------CREATE TABLES------------------------------------------------------------------------------------

create table Library_Branch (
	BranchID INT Primary Key not null Identity (0,5),
	BranchName varchar(50) not null,
	AddressLine varchar(50) not null,
	PhoneNumber varchar(50) not null );

	Create Table Publisher (
		Pub_Name varchar(50) primary key not null,
		Pub_Address varchar(50) not null,
		Pub_Phone varchar(50) not null
	);

		create table Book (
		BookID int primary key not null identity (1,1),
		Title varchar(50) not null,
		PublisherName varchar(50) not null Constraint fk_Book_Pub_Name foreign key references Publisher(Pub_Name) on update cascade on delete cascade
	);

	create table Book_Authors (
		BookID int not null constraint fk_Authors_BookID foreign Key References Book(BookID) on update cascade on delete cascade, 
		Author_FirstName varchar(50) not null,
		Author_LastName varchar(50) not null 

	);

	create Table Book_Copies (
		BookID int not null constraint fk_Book_Copies_BookID foreign key references Book(BookID) on update cascade on delete cascade, 
		BranchID int NOT NULL constraint fk_Book_Copies_BranchID Foreign Key references Library_Branch(BranchID) on update cascade on delete cascade,
		No_Copies int not null
		);

	Create Table Borrower (
		CardNo varchar(50) primary key not null,
		Name varchar(50) not null,
		Borrower_Address varchar(50) not null,
		 Phone varchar(50) not null
	);






	create Table Book_Loans (
		BookID int not null constraint fk_Book_Loans_BookID foreign key references Book(BookID) on update cascade on delete cascade, 
		BranchID int NOT NULL constraint fk_BranchID Foreign Key references Library_Branch(BranchID) on update cascade on delete cascade,
		CardNo varchar(50) not null constraint fk_Book_Loan_cardNo foreign key references Borrower(CardNo) on update cascade on delete cascade,
		DateOut date not null,
		DueDate date not null

	);

--------------------------------------POPULATE TABLES -----------------------------------------------------------
	insert into Library_Branch 
		(BranchName, AddressLine,PhoneNumber)
		values
		('Central', '1001 Oaks Branch Dr.', '555-555-0126'),
		('Sharpstown', '2301 Central Express', '555-894-0231'),
		('EastSide', '9991 East Valley', '555-877-5685'),
		('Up Town', '3205 McKay St', '555-978-2609')
		;


INSERT into Book 
			(Title, PublisherName)
			values
			('The Lost Tribe'),
			('The Outsider'),
			('Duma Key'),
			('Cujo'),
			('Night of the Living Dummy'),
			('Welcome to Dead House'),
			('Monster Blood'),
			('Harry Potter and the Sorcerers stone'),
			('Harry Potter and The Chamber of Secrets'),
			('The Grapes of Wrath'),
			('East of Eden'),
			('Of Mice and Men'),
			('Intensity'),
			('Odd Thomas'),
			('Surrender to the Spirit'),
			('All American Murder'),
			('Home Sweet Murder'),
			('The Butler'),
			('The Glass Castle'),
			('Rediscovering America')
			;


			Insert into Book_Authors
				(BookID, Author_FirstName, Author_LastName)
				values
					('24','Edward','Marriott'),
					('25','Stephen','King'),
					('26','Stephen','King'),
					('27','Stephen','King'),
					('28','R.L.','Stein'),
					('29','R.L.','Stein'),
					('30','R.L.','Stein'),
					('31','J.K.','Rowling'),
					('32','J.K.','Rowling'),
					('33','John','Steinbeck'),
					('34','john','Steinbeck'),
					('35','John','Steinbeck'),
					('36','Dean','koontz'),
					('37','Dean','Koontz'),
					('38','Keith','Miller'),
					('39','James','Patterson'),
					('40','James','Patterson'),
					('41','Wil','Haygood'),
					('42','Jeannette','Walls'),
					('43','Mark','Levin');
					



			INSERT into Book 
			(Title, PublisherName)
			values
			('The Lost Tribe','Macmillian'),
			('The Outsider','Simon & Schuster'),
			('Duma Key','Simon & Schuster'),
			('Cujo','Simon & Schuster'),
			('Night of the Living Dummy','Scholastic'),
			('Welcome to Dead House','Scholastic'),
			('Monster Blood','Scholastic'),
			('Harry Potter and the Sorcerers stone','Scholastic'),
			('Harry Potter and The Chamber of Secrets','Scholastic'),
			('The Grapes of Wrath','Penguin Publishing Group'),
			('East of Eden','Penguin Publishing Group'),
			('Of Mice and Men','Penguin Publishing Group'),
			('Intensity','Bantam Dell Publishing'),
			('Odd Thomas','Bantam Dell Publishing'),
			('Surrender to the Spirit','Destiny Image'),
			('All American Murder','Hachette'),
			('Home Sweet Murder','Hachette'),
			('The Butler','Simon & Schuster'),
			('The Glass Castle','Simon & Schuster'),
			('Rediscovering America','Simon & Schuster');

			insert into Book_Copies
			(BookID, BranchID, No_Copies)
			values
			('24','25','3'),
			('24','20','3'),
			('24','30','3'),
			('24','35','3'),

			('25','20','2'),
			('25','25','2'),
			('25','30','2'),
			('25','35','2'),

			('26','20','2'),
			('26','35','1'),
			('26','30','4'),
			('26','25','2'),
			
			('27','25','3'),
			('27','30','3'),
			('27','35','3'),
			('27','20','0'),

			('28','20','3'),
			('28','30','3'),
			('28','25','3'),
			('28','35','0'),

			('29','20','3'),
			('29','25','3'),
			('29','30','3'),
			('29','35','3'),

			('30','25','3'),
			('30','30','3'),
			('30','35','3'),
			('30','20','0'),
			
			('31','20','2'),
			('31','25','2'),
			('31','30','3'),
			('31','35','1'),

			('32','20','1'),
			('32','25','4'),
			('32','30','2'),
			('32','35','0'),
			
			
			('33','20','0'),
			('33','25','2'),
			('33','30','3'),
			('33','35','2'),

			('34','20','2'),
			('34','25','2'),
			('34','30','1'),
			('34','35','0'),
			

			('35','20','3'),
			('35','25','3'),
			('35','30','3'),
			('35','35','3'),

			('36','20','2'),
			('36','25','2'),
			('36','30','1'),
			('36','35','1'),

			
			('37','20','3'),
			('37','25','3'),
			('37','30','3'),
			('37','35','4'),

			('38','20','0'),
			('38','25','4'),
			('38','30','3'),
			('38','35','3'),

			('39','25','2'),
			('39','30','2'),
			('39','35','1'),
			('39','20','1'),

			('40','20','2'),
			('40','25','2'),
			('40','30','2'),
			('40','35','1'),

			('41','20','1'),
			('41','25','0'),
			('41','30','2'),
			('41','35','1'),
			
			('42','20','2'),
			('42','25','2'),
			('42','30','1'),
			('42','35','0'),

			('43','20','4'),
			('43','25','4'),
			('43','30','3'),
			('43','35','2');


			insert into Borrower
			(CardNo, Name, Borrower_Address,Phone)
			values

			('100200355001','Sally Ackerman', '5407 Cougar Way','555-361-08'),
			('100200355002','Pilar Ackerman', '5407 Cougar Way','555-545-9235'),
			('100200355003','Mary Baker',	'2354 Frame Ln.','444-565-5646'),
			('100200355004','John Campbell','2639 Anchor Court','444-646-5642'),
			('100200355005','Baris Cetinok','426 San Rafael','444-241-6456'),
			('100200355006','Patrick Cook','9537 Ridgewood Drive','554-464-5453'),
			('100200355007','Jack Creasey','874 Olivera Road','595-464-2654'),
			('100200355008','Brenda	Diaz','1349 Steven Way','444-564-9697'),
			('100200355009','JoLynn	Dobney','7126 Ending Ct.','555-978-3377'),
			('100200355010','Reuben	D','1064 Slow Creek Road','554-978-6363'),
			('100200355011','Ed	Dudenhoefer','4598 Manila Avenue','777-898-6582'),
			('100200355012','John Evans',	'136 Balboa Court','444-856-6656'),
			('100200355013','Scott Gode',	'7403 N. Broadway','555-696-1973'),
			('100200355014','Nicole	Holliday','3243 Buckingham Dr.','555-545-1985'),
			('100200355015','Russell Hunter',	'7616 Honey Court','695-566-3695'),
			('100200355016','Kendall Keil',	'7439 Laguna Niguel','666-646-4444'),
			('100200355017','Karan Khanna',	'1102 Ravenwood','333-665-5455'),
			('100200355018','Kirk Koenigsbauer',	'1220 Bradford Way','334-646-5985'),
			('100200355019','Frank Lee',	'8290 Margaret Ct.','777-356-5656'),
			('100200355020','Kitti Lertpiriyasuwat',	'5376 Catanzaro Way','646-663-7925'),
			('100200355021','Yuhong	Li',	'502 Alexander Pl.','444-333-5455'),
			('100200355022','Kevin	Liu',	'7594 Alexander Pl.','777-625-3339'),
			('100200355023','Jose Lugo',	'5125 Cotton Ct.','555-519-7979'),
			('100200355024','Pete Male',	'5375 Clearland Circle','888-646-3243'),
			('100200355025','Steve Masters',	'1398 Yorba Linda','888-221-5533'),
			('100200355026','Katie McAskill-White',	'4948 West 4th St','777-214-7931'),
			('100200355027','Alejandro McGuel',	'7127 Los Gatos Court','555-369-3646'),
			('100200355028','Barbara Moreland' ,	'137 Mazatlan','799-524-3656'),
			('100200355029','Zheng Mu',	'6578 Woodhaven Ln.','333-365-7963'),
			('100200355030','Paula Nartker',	'2144 San Rafael','444-341-3964'),
			('100200355031','Merav Netz',	'5666 Hazelnut Lane','555-713-9325'),
			('100200355032','Tawana	Nusbaum',	'9964 North Ridge Drive','741-976-6132'),
			('100200355033','David	Ortiz','931 Corte De Luna','999-321-9798'),
			('100200355034','Lionel	Penuchot',	'7765 Sunsine Drive','222-355-7923'),
			('100200355035','Cristian Petculescu',	'7166 Brock Lane','333-354-6466'),
			('100200355036','Chris Preston'	, '6657 Sand Pointe Lane','334-356-7171'),
			('100200355037','Linda Randall'	,'77 Birchwood','774-365-3359'),
			('100200355038','Michael Ray',	'6498 Mining Rd.','123-545-4444'),
			('100200355039','Sandra	Reátegui', 'Alayo	1619 Stillman Court','545-969-6657'),
			('100200355040','Bjorn Rettig',	'5802 Ampersand Drive','555-414-4455'),
			('100200355041','Robert	Rounthwaite',	'6843 San Simeon Dr.','979-665-3333'),
			('100200355042','Lane Sacksteder', '3029 Pastime Dr','554-893-3521'),
			('100200355043','Annik Stahl',	'7842 Ygnacio Valley Road','445-646-6666'),
			('100200355044','David Yalovsky',	'5025 Holiday Hills','555-567-3232'),
			('100200355045','Kimberly Zimmerman',	'8656 Lakespring Place','556-545-5577'),
			('100200355046','Angela	Barbariol','2687 Ridge Road','555-584-6465'),
			('100200355047','Maciej	Dusza',	'3026 Anchor Drive','999-646-5492'),
			('100200355048','Suroor	Fatima',	'3281 Hillview Dr.','556-545-5454'),
			('100200355049','Mihail	Frintu' ,'2466 Clearland Circle','555-044-9865'),
			('100200355050','Eric Gubbels',	'371 Apple Dr.','555-056-2599');


		
			insert into Book_Loans
			(BookID, BranchID, CardNo,DateOut,DueDate)
			values

			('43','25','100200355036','2018-02-01','2018-02-23'),
			('43','20','100200355031','2018-02-01','2018-02-23'),
			('42','20','100200355038','2018-02-01','2018-02-15'),
			('40','20','100200355038','2018-02-01','2018-02-15'),
			('39','20','100200355038','2018-02-01','2018-02-15'),
			('25','20','100200355038','2018-02-01','2018-02-15'),
			('27','25','100200355038','2018-02-01','2018-02-15'),
			('28','20','100200355010','2018-02-07','2018-02-22'),
			('30','25','100200355001','2018-02-05','2018-02-24'),
			('33','25','100200355001','2018-02-05','2018-02-24'),
			('26','20','100200355029','2018-02-03','2018-02-18'),
			('34','20','100200355029','2018-02-03','2018-02-18'),
			('28','30','100200355010','2018-02-02','2018-02-16'),
			('38','25','100200355018','2018-02-02','2018-02-16'),
			('37','30','100200355019','2018-02-07','2018-02-23'),
			('26','30','100200355019','2018-02-07','2018-02-23'),
			('28','30','100200355020','2018-02-01','2018-02-15'),
			('30','30','100200355020','2018-02-01','2018-02-15'),
			('37','30','100200355020','2018-02-01','2018-02-15'),
			('32','25','100200355023','2018-02-02','2018-02-16'),
			('27','35','100200355032','2018-02-04','2018-02-18'),
			('30','30','100200355034','2018-02-04','2018-02-18'),
			('29','25','100200355023','2018-02-05','2018-02-20'),
			('33','25','100200355035','2018-02-07','2018-02-22'),
			('38','25','100200355035','2018-02-07','2018-02-22'),
			('34','30','100200355037','2018-02-02','2018-02-16'),
			('33','30','100200355033','2018-02-07','2018-02-22'),
			('26','30','100200355033','2018-02-07','2018-02-22'),
			('42','20','100200355045','2018-02-05','2018-02-20'),
			('26','20','100200355045','2018-02-05','2018-02-20'),
			('39','25','100200355045','2018-02-05','2018-02-20'),
			('25','20','100200355045','2018-02-05','2018-02-20'),
			('27','25','100200355045','2018-02-05','2018-02-20'),
			('32','25','100200355023','2018-02-03','2018-02-18'),
			('36','25','100200355038','2018-02-01','2018-02-15'),
			('30','35','100200355038','2018-02-04','2018-02-18'),
			('33','30','100200355034','2018-02-01','2018-02-15'),
			('38','25','100200355036','2018-02-01','2018-02-15'),
			('32','25','100200355036','2018-02-01','2018-02-15'),
			('31','20','100200355024','2018-02-04','2018-02-19'),
			('36','20','100200355024','2018-02-04','2018-02-19'),
			('32','30','100200355031','2018-02-04','2018-02-18'),
			('25','35','100200355026','2018-02-01','2018-02-15'),
			('27','35','100200355026','2018-02-01','2018-02-15'),
			('40','25','100200355027','2018-02-02','2018-02-16'),
			('37','35','100200355024','2018-02-05','2018-02-25'),
			('39','35','100200355024','2018-02-05','2018-02-25'),
			('41','35','100200355024','2018-02-05','2018-02-25'),
			('24','35','100200355027','2018-02-05','2018-02-20'),
			('28','20','100200355011','2018-02-03','2018-02-18'),
			('24','25','100200355027','2018-02-03','2018-02-28'),
			('40','25','100200355022','2018-02-03','2018-02-28'),
			('37','25','100200355022','2018-02-03','2018-02-28'),
			('39','25','100200355022','2018-02-03','2018-02-28'),
			('43','20','100200355038','2018-02-01','2018-02-25');

------------------QUERIES-------------------------------------------------------


-----------------------Solution 1-----------------------------------------------
	select B.Title, LB.BranchName, BC.No_Copies from Book_Copies BC
			inner join Library_Branch LB
				On LB.BranchID=BC.BranchID
			Inner Join Book B
				On B.BookID=BC.BookID 
				where B.Title like 'The Lost Tribe' and LB.BranchName like 'Sharpstown'

----------------------Solution 2---------------------------------------------------
	select   LB.BranchName,BC.No_Copies from Book_Copies BC
			inner join Library_Branch LB
				On LB.BranchID=BC.BranchID
			Inner Join Book B
				On B.BookID=BC.BookID 
				where B.Title like 'The Lost Tribe' 


-----------------------Solution 3--------------------------------------------------
	select BW.Name from Borrower BW
		where BW.CardNo not in (select  Book_Loans.CardNo from Book_Loans) 
			
--------------------------Solution 4---------------------------------------------------
--For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, 
--retrieve the book title, the borrower's name, and the borrower's address.--
----------------------------------------------------------------------------------------

	select distinct B.Title, BW.Name, BW.Borrower_Address, BL.DueDate from Borrower BW
		inner join Book_Loans BL on BW.CardNo=BL.CardNo
		inner join Library_Branch LB on BL.BranchID=LB.BranchID
		inner Join Book B on BL.BookID=B.BookID

		where LB.BranchName like 'Sharpstown' and 
			BL.DueDate = CONVERT (date, GETDATE()) 


------------------------------Solution #5-----------------------------------------------
	select distinct LB.BranchName, count(*) AS Number_0f_Books_Out from Book_Loans BL 
		inner join Library_Branch LB on BL.BranchID=LB.BranchID

		group by LB.BranchName
			
-----------------------------Solution #6-------------------------------------------------------
	select  distinct BW.Borrower_Address, BW.Name, COUNT(*) AS Number_Books_Out from Book_Loans BL
		inner join Borrower BW on BL.CardNo=BW.CardNo
		group by BW.Name,BW.Borrower_Address
		HAVING Count(*)>5

-------------------------------Answer 7-- -------------------------------------------------------
		select B.Title, BC.No_Copies, LB.BranchName from Book_Copies BC
			inner join Library_Branch LB on BC.BranchID=LB.BranchID
			inner join Book B on BC.BookID=B.BookID
			inner join Book_Authors BA on B.BookID=BA.BookID
			where BA.Author_FirstName like 'Stephen' and BA.Author_LastName like 'King' and LB.BranchName like 'Central'
	

-----------------------------------------------------------
-------------------Stored Procedures------------------------

Go 
Create Procedure dbo.Query1 @Title nvarchar(50), @Branch nvarchar(50)
AS

	select  B.title,LB.BranchName, BC.No_Copies from Book_Copies BC
			inner join Library_Branch LB
				On LB.BranchID=BC.BranchID
			Inner Join Book B
				On B.BookID=BC.BookID 
    where B.Title = @Title  and LB.BranchName = @Branch ;
GO

	Exec dbo.Query1 @Title='The Lost Tribe', @Branch= 'Sharpstown'

-------------------------------------------------------

Go 
Create Procedure dbo.Query2 @Title nvarchar(50)
AS

	select   LB.BranchName, BC.No_Copies from Book_Copies BC
			inner join Library_Branch LB
				On LB.BranchID=BC.BranchID
			Inner Join Book B
				On B.BookID=BC.BookID 
				where B.Title=@Title

Exec dbo.Query2 @Title='The Lost Tribe';

------------------------------------------------------------------

Go 
Create Procedure dbo.Query3 
AS
	select BW.Name from Borrower BW
		where BW.CardNo not in (select  Book_Loans.CardNo from Book_Loans) 
GO
Exec dbo.Query3; 
--------------------------------------------------------------------------


Go 
Create Procedure dbo.Query4 @Branch nvarchar(50)
AS
   select distinct B.Title, BW.Name, BW.Borrower_Address, BL.DueDate from Borrower BW
		inner join Book_Loans BL on BW.CardNo=BL.CardNo
		inner join Library_Branch LB on BL.BranchID=LB.BranchID
		inner Join Book B on BL.BookID=B.BookID
	where LB.BranchName=@Branch and BL.DueDate = CONVERT (date, GETDATE())
	
go

exec dbo.Query4 @Branch ='Sharpstown';

--------------------------------------------------------------------------------------------
Go 
Create Procedure dbo.Query5 
AS
	select distinct LB.BranchName, count(*) AS Number_0f_Books_Out from Book_Loans BL 
		inner join Library_Branch LB on BL.BranchID=LB.BranchID

		group by LB.BranchName
GO

exec dbo.Query5;
-----------------------------------------------------------------
Go 
Create Procedure dbo.Query6 
AS
	select  distinct BW.Borrower_Address, BW.Name, COUNT(*) AS Number_Books_Out from Book_Loans BL
		inner join Borrower BW on BL.CardNo=BW.CardNo
		group by BW.Name,BW.Borrower_Address
		HAVING Count(*)>5
GO
exec dbo.Query6;
-----------------------------------------------------------

Go 
Create Procedure dbo.Query7 @fName nvarchar(50), @lName nvarchar(50), @Branch nvarchar(50)
AS

	select B.Title, BC.No_Copies, LB.BranchName from Book_Copies BC
			inner join Library_Branch LB on BC.BranchID=LB.BranchID
			inner join Book B on BC.BookID=B.BookID
			inner join Book_Authors BA on B.BookID=BA.BookID
	where BA.Author_FirstName=@fName and BA.Author_LastName=@lName and LB.BranchName=@Branch
Go

exec dbo.Query7 @fname='Stephen', @lName='King', @Branch='Central';

	