use master
use SteamGames
go

---------------------------------------------------
create table Game (
	GameID		int				identity,
	GName		nvarchar(150),
	SteamTags	nvarchar(60)	null,
	Developer	nvarchar(250)	null,
	Publisher	nvarchar(150)	null,
	Platforms	nvarchar(30)	null,
	PosRating	float			null,
	NegRating	float			null,
	Price		float			null,
	constraint PK_GameID primary key (GameID)
)
go

---------------------------------------------------
create table RelDate (
	DateID		int				identity,
	FullDate	date,
	Day			int				null,
	Month		int				null,
	Year		int				null,
	constraint PK_DateID primary key (DateID)
)
go

---------------------------------------------------
create table Country (
	CountryID	int				identity,
	Country		varchar(30),
	Population	int				null,
	Destiny		int				null,
	LandArea	int				null,
	MedAge		int				null,
	BestGame	nvarchar(50)	null,
	constraint PK_CountryID primary key (CountryID)
)
go

---------------------------------------------------
create table Requirements (
	ReqID		int				identity,
	PCReq		nvarchar(500)		null,
	MACReq		nvarchar(500)		null,
	LINUXReq	nvarchar(500)		null,
	MinReq		nvarchar(500)		null,
	constraint PK_ReqID primary key (ReqID)
)
go

---------------------------------------------------
create table GameAnalysis (
	GameAnalysisID	int			identity,
	AvgRating		float		null,
	AvgAge			float		null,
	Best			bit			null,
	Multiplatform	bit			null,
	constraint PK_GameAnalysisID primary key (GameAnalysisID)
)
go

alter table GameAnalysis
	add constraint FK_GameAnalysis_REFERENCE_GameID foreign key (GameID)
	references Game(GameID)
go

alter table GameAnalysis
	add constraint FK_GameAnalysis_REFERENCE_DateID foreign key (DateID)
	references RelDate(DateID)
go

alter table GameAnalysis
	add constraint FK_GameAnalysis_REFERENCE_CountryID foreign key (CountryID)
	references Country(CountryID)
go

alter table GameAnalysis
	add constraint FK_GameAnalysis_REFERENCE_ReqID foreign key (ReqID)
	references Requirements(ReqID)
go