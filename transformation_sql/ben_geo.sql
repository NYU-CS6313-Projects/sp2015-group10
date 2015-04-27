create table ben_geo as
select
    pat_id
    ,year
    ,birth_date
    ,death_date
    ,to_number(b.code,'99999') as geo_id
    ,county
    ,state
    ,total_pmt
    ,drg14
    ,drg15
    ,drg19
    ,drg24
    ,drg29
    ,drg49
    ,drg50
    ,drg53
    ,drg70
    ,drg98
    ,drg99
    ,drg100
    ,drg101
    ,drg104
    ,drg109
    ,drg127
    ,drg128
    ,drg158
    ,drg202
    ,drg203
    ,drg206
    ,drg653
from ben_drg_table a
    right join county_codes b on upper(b.name) = a.county||', '||a.state