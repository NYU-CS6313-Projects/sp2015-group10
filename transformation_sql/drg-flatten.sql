create table ben_drg_table as
with drgs as(
select desynpuf_id as pat_id
    ,year
    ,max(drg49) as drg49
    ,max(drg50) as drg50
    ,max(drg128) as drg128
    ,max(drg202) as drg202
    ,max(drg203) as drg203
    ,max(drg24) as drg24
    ,max(drg14) as drg14
    ,max(drg15) as drg15
    ,max(drg19) as drg19
    ,max(drg29) as drg29
    ,max(drg158) as drg158
    ,max(drg653) as drg653
    ,max(drg127) as drg127
    ,max(drg53) as drg53
    ,max(drg98) as drg98
    ,max(drg99) as drg99
    ,max(drg100) as drg100
    ,max(drg101) as drg101
    ,max(drg104) as drg104
    ,max(drg206) as drg206
    ,max(drg70) as drg70
    ,max(drg109) as drg109
    ,count(*) as total_drg
from
(select distinct 
    desynpuf_id
    ,date_part('year',clm_thru_dt) as year
    ,case when drg ='49' then 1 else 0 end as drg49
    ,case when drg ='50' then 1 else 0 end as drg50
    ,case when drg ='128' then 1 else 0 end as drg128
    ,case when drg ='202' then 1 else 0 end as drg202
    ,case when drg ='203' then 1 else 0 end as drg203
    ,case when drg ='24' then 1 else 0 end as drg24
    ,case when drg ='14' then 1 else 0 end as drg14
    ,case when drg ='15' then 1 else 0 end as drg15
    ,case when drg ='19' then 1 else 0 end as drg19
    ,case when drg ='29' then 1 else 0 end as drg29
    ,case when drg ='158' then 1 else 0 end as drg158
    ,case when drg ='653' then 1 else 0 end as drg653
    ,case when drg ='127' then 1 else 0 end as drg127
    ,case when drg ='53' then 1 else 0 end as drg53
    ,case when drg ='98' then 1 else 0 end as drg98
    ,case when drg ='99' then 1 else 0 end as drg99
    ,case when drg ='100' then 1 else 0 end as drg100
    ,case when drg ='101' then 1 else 0 end as drg101
    ,case when drg ='104' then 1 else 0 end as drg104
    ,case when drg ='206' then 1 else 0 end as drg206
    ,case when drg ='70' then 1 else 0 end as drg70
    ,case when drg ='109' then 1 else 0 end as drg109
from chronic_drg) a
group by desynpuf_id
    ,year)

select a.*
,drg49
,drg50
,drg128
,drg202
,drg203
,drg24
,drg14
,drg15
,drg19
,drg29
,drg158
,drg653
,drg127
,drg53
,drg98
,drg99
,drg100
,drg101
,drg104
,drg206
,drg70
,drg109
,total_drg
from patient_geo a
	join drgs b on b.pat_id=a.pat_id and b.year=a.year