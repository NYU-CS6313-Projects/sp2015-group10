drop table chronic_data2;
create table chronic_data2 as
with chronic as(
select
	"SP_STATE_CODE" as state_cd
	,"BENE_COUNTY_CD" as cnty_cd
	,case when "SP_ALZHDMTA"= '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'Alzheimer'
		when "SP_CHF" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'Heart Failure'
		when "SP_CHRNKIDN" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'Chronic Kidney Disease'
		when "SP_CNCR" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'Cancer'
		when "SP_COPD" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'COPD'
		when "SP_DEPRESSN" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'Depression'
		when "SP_DIABETES" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'Diabetes'
		when "SP_ISCHMCHT" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'Ischemic Heart Disease'
		when "SP_OSTEOPRS" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'Osteoporosis'
		when "SP_RA_OA" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'RA/OA'
		when "SP_STRKETIA" = '1' and (to_number("SP_ALZHDMTA",'9')+to_number("SP_CHF",'9')+to_number("SP_CHRNKIDN",'9')+to_number("SP_CNCR",'9')+to_number("SP_COPD",'9')+to_number("SP_DEPRESSN",'9')+to_number("SP_DIABETES",'9')+to_number("SP_ISCHMCHT",'9')+to_number("SP_OSTEOPRS",'9')+to_number("SP_RA_OA",'9')+to_number("SP_STRKETIA",'9')=21) then 'Stroke'
		end as chronic_disease
	,to_number("MEDREIMB_IP", '999999D99') +
		to_number("BENRES_IP", '999999D99') +
		to_number("PPPYMT_IP", '999999D99') +
		to_number("MEDREIMB_OP", '999999D99') +
		to_number("BENRES_OP", '999999D99') +
		to_number("PPPYMT_OP", '999999D99') +
		to_number("MEDREIMB_CAR", '999999D99') +
		to_number("BENRES_CAR", '999999D99') +
		to_number("PPPYMT_CAR", '999999D99') as cost
from "2009_Beneficiary_Summary_File"),
chronic_list as(
select
	"SP_STATE_CODE" as state_cd
	,"BENE_COUNTY_CD" as cnty_cd
	,trim(trailing ',' from 
	case when "SP_ALZHDMTA" = '1' then 'Alzheimer,' else '' end ||
	case when "SP_CHF" = '1' then 'Heart Failure,' else '' end ||
	case when "SP_CHRNKIDN" = '1' then 'Chronic Kidney Disease,' else '' end ||
	case when "SP_CNCR" = '1' then 'Cancer,' else '' end ||
	case when "SP_COPD" = '1' then 'COPD,' else '' end ||
	case when "SP_DEPRESSN" = '1' then 'Depression,' else '' end ||
	case when "SP_DIABETES" = '1' then 'Diabetes,' else '' end ||
	case when "SP_ISCHMCHT" = '1' then 'Ischemic Heart Disease,' else '' end ||
	case when "SP_OSTEOPRS" = '1' then 'Osteoporosis,' else '' end ||
	case when "SP_RA_OA" = '1' then 'RA/OA,' else '' end ||
	case when "SP_STRKETIA" = '1' then 'Stroke' else '' end)  as chronic_disease_list
from "2009_Beneficiary_Summary_File"),
main as(
select a.state_cd
	,a.cnty_cd
	,cast(a.chronic_disease as varchar) chronic_disease
	,avg_cost 
	,count(*) as population
from (select state_cd
	,cnty_cd
	,chronic_disease
	,avg(cost) as avg_cost from chronic where chronic_disease<>'' group by state_cd,cnty_cd,chronic_disease)  a
	join chronic_list b on a.state_cd=b.state_cd and a.cnty_cd=b.cnty_cd and b.chronic_disease_list like '%'||a.chronic_disease||'%'
where a.chronic_disease <>''
group by a.state_cd
	,a.cnty_cd
	,a.chronic_disease
	,avg_cost
order by a.chronic_disease,population desc),
population as(
select state_cd
	,cnty_cd
	,count(*) as cnty_pop
from chronic c
group by state_cd,cnty_cd)
,costs as(
select chronic_disease
	,avg(cost) as us_avg
	,variance(cost) as cost_variance
	,sqrt(variance(cost)) as std_dev
from chronic
group by chronic_disease)


select  cc.fips_state_cty_code as fips_cnty_cd
	,cast(cc.county||', '||cc.state as varchar)as cnty_name
	,main.*
	,p.cnty_pop
	,round(100.00*main.population/cnty_pop,2) as percent_pop
	,c.us_avg
	,c.cost_variance
	,c.std_dev
	,case when main.avg_cost > c.us_avg+c.std_dev then main.avg_cost-(c.us_avg+c.std_dev)
		when main.avg_cost < c.us_avg-c.std_dev then c.us_avg-c.std_dev-main.avg_cost
		else 0 end as dif_from_dev
	,cast((case when main.avg_cost > c.us_avg+c.std_dev then 'high'
		when main.avg_cost < c.us_avg-c.std_dev then 'low' end) as varchar) as cost_flag
from main
	join population p on p.state_cd=main.state_cd and p.cnty_cd=main.cnty_cd
	join costs c on c.chronic_disease = main.chronic_disease
	right join county_crosswalk cc on cc.ssa_state_cty_code=main.state_cd||main.cnty_cd
;