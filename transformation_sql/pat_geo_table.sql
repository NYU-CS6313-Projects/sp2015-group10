create table patient_geo as
select "DESYNPUF_ID" pat_id
	,2008 as year
	,to_date("BENE_BIRTH_DT", 'YYYYMMDD') as birth_date
	,to_date("BENE_DEATH_DT",'YYYYMMDD') as death_date
	,"SP_STATE_CODE" || "BENE_COUNTY_CD" as geo_id
	,b.county
	,b.state
	,to_number("MEDREIMB_IP", '999999D99') +
		to_number("BENRES_IP", '999999D99') +
		to_number("PPPYMT_IP", '999999D99') +
		to_number("MEDREIMB_OP", '999999D99') +
		to_number("BENRES_OP", '999999D99') +
		to_number("PPPYMT_OP", '999999D99') +
		to_number("MEDREIMB_CAR", '999999D99') +
		to_number("BENRES_CAR", '999999D99') +
		to_number("PPPYMT_CAR", '999999D99') as total_pmt
from "2008_Beneficiary_Summary" a
	join county_crosswalk b on b.ssa_state_cty_code="SP_STATE_CODE" || "BENE_COUNTY_CD"
union
select "DESYNPUF_ID" pat_id
	,2009 as year
	,to_date("BENE_BIRTH_DT", 'YYYYMMDD') as birth_date
	,to_date("BENE_DEATH_DT",'YYYYMMDD') as death_date
	,"SP_STATE_CODE" || "BENE_COUNTY_CD" as geo_id
	,b.county
	,b.state
	,to_number("MEDREIMB_IP", '999999D99') +
		to_number("BENRES_IP", '999999D99') +
		to_number("PPPYMT_IP", '999999D99') +
		to_number("MEDREIMB_OP", '999999D99') +
		to_number("BENRES_OP", '999999D99') +
		to_number("PPPYMT_OP", '999999D99') +
		to_number("MEDREIMB_CAR", '999999D99') +
		to_number("BENRES_CAR", '999999D99') +
		to_number("PPPYMT_CAR", '999999D99') as total_pmt
from "2009_Beneficiary_Summary_File" a
	join county_crosswalk b on b.ssa_state_cty_code="SP_STATE_CODE" || "BENE_COUNTY_CD"
union
select "DESYNPUF_ID" pat_id
	,2010 as year
	,to_date("BENE_BIRTH_DT", 'YYYYMMDD') as birth_date
	,to_date("BENE_DEATH_DT",'YYYYMMDD') as death_date
	,"SP_STATE_CODE" || "BENE_COUNTY_CD" as geo_id
	,b.county
	,b.state
	,to_number("MEDREIMB_IP", '999999D99') +
		to_number("BENRES_IP", '999999D99') +
		to_number("PPPYMT_IP", '999999D99') +
		to_number("MEDREIMB_OP", '999999D99') +
		to_number("BENRES_OP", '999999D99') +
		to_number("PPPYMT_OP", '999999D99') +
		to_number("MEDREIMB_CAR", '999999D99') +
		to_number("BENRES_CAR", '999999D99') +
		to_number("PPPYMT_CAR", '999999D99') as total_pmt
from "2010_Beneficiary_Summary_File" a
	join county_crosswalk b on b.ssa_state_cty_code="SP_STATE_CODE" || "BENE_COUNTY_CD"