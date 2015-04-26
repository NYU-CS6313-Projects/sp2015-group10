select
	a.drg_desc
	,b.drg_desc
	,count(distinct a.desynpuf_id)
from patient_drg a
	join patient_drg b on b.desynpuf_id=a.desynpuf_id and date_part('year',a.clm_from_dt)=date_part('year',b.clm_from_dt)
group by a.drg_desc,b.drg_desc
order by count(distinct a.desynpuf_id) desc