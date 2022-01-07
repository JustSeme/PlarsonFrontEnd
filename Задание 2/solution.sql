with months as (
	select 	datename(month, concat(year(getdate()),'-01','-01')) as month,
			month(concat(year(getdate()),'-01','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-01','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-02','-01')) as month,
			month(concat(year(getdate()),'-02','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-02','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-03','-01')) as month,
			month(concat(year(getdate()),'-03','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-03','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-04','-01')) as month,
			month(concat(year(getdate()),'-04','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-04','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-05','-01')) as month,
			month(concat(year(getdate()),'-05','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-05','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-06','-01')) as month,
			month(concat(year(getdate()),'-06','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-06','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-07','-01')) as month,
			month(concat(year(getdate()),'-07','-01')) as monthN,	
			day(eomonth(concat(year(getdate()),'-07','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-08','-01')) as month,
			month(concat(year(getdate()),'-08','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-08','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-09','-01')) as month,
			month(concat(year(getdate()),'-09','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-09','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-10','-01')) as month,
			month(concat(year(getdate()),'-10','-01')) as monthN,			
			day(eomonth(concat(year(getdate()),'-10','-01'))) as days
    union
    select	datename(month, concat(year(getdate()),'-11','-01')) as month,
			month(concat(year(getdate()),'-11','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-11','-01'))) as days
    union
    select 	datename(month, concat(year(getdate()),'-12','-01')) as month,
			month(concat(year(getdate()),'-12','-01')) as monthN,
			day(eomonth(concat(year(getdate()),'-12','-01'))) as days
) 
select month, days from months order by monthN;