Create table workareas
(
	workareaid int identity not null primary key,
	areaname nvarchar (40) not null,
	skill nvarchar (40) not null
)
Go
----------02-----
Create table workers
(
	workerid int identity not null primary key,
	workername nvarchar (40) not null,
	phone nvarchar (20) not null,
	payrate money not null,
	available bit


)
Go
------ table 03---- 
Create table workerareas 
(
	workerid int not null references  workers (workerid),
	areaid int not null references workareas  (workareaid),
	primary key (workerid, areaid )
)
Go
-------- table 04 ------
CREATE table works
(
	workid int identity not null primary key,
	customename nvarchar (50) not null,
	customeraddress nvarchar (150) not null,
	workareaid int not null references workareas  (workareaid ),
	workdescription nvarchar (100) not null,
	startdate date not null,
	endtime datetime null
)
Go
------ table 05---- 
CREATE table workerpayments
(
	workid int not null references works (workid ),
	workerid int not null references workers (workerid ),
	workerpictures nvarchar (150) not null,
	totalworkhour float null,
	totalpayment money null,
	primary key (workid, workerid )
)
Go