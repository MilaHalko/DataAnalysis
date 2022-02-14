use master
use SteamGames
go

---------------------------------------------------
create table GameInfo (
	GameID		int				identity,
	GName		nvarchar(150),
	RelDate		date			null,
	Developer	nvarchar(250)   null,
	Publisher	nvarchar(150)   null,
	Platforms   nvarchar(30)	null,
	SteamTags	nvarchar(60)	null,
	PosRating	float			null,
	NegRating	float			null,
	Price		float			null,
	constraint PK_GAME primary key (GameID)
)
go

---------------------------------------------------
create table Requirements (
	ReqID		int				identity,
	PCReq		nvarchar(500)	null,
	MACReq		nvarchar(500)	null,
	LINUXReq	nvarchar(500)   null,
	MinReq		nvarchar(500)   null,
	constraint PK_REQ primary key (ReqID)
)
go

---------------------------------------------------
create table BestCountryGame (
	CountryID	int				identity,
	Country		nvarchar(30),
	BestGame	nvarchar(50),
	constraint PK_COUNTRY primary key (CountryID)
)
go

---------------------------------------------------
create table Population (
	PCountryID	int				identity,
	Population	int				null,
	Destiny		int				null,
	LandArea	int				null,
	MedAge		int				null,
	constraint PK_PCOUNTRY primary key (PCountryID)
)
go