create table patient_drg as 
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_ADMSN_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Inpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_1"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_ADMSN_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Inpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_2"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_ADMSN_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Inpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_3"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_ADMSN_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Inpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_4"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_ADMSN_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Inpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_5"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_ADMSN_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Inpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_6"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_ADMSN_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Inpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_7"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_ADMSN_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Inpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_8"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_ADMSN_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Inpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_9"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_FROM_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Outpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_1"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_FROM_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Outpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_2"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_FROM_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Outpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_3"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_FROM_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Outpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_4"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_FROM_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Outpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_5"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_FROM_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Outpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_6"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_FROM_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Outpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_7"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_FROM_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Outpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_8"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
union
select distinct
	"DESYNPUF_ID" as desynpuf_id
	,"CLM_ID" as clm_id
	,to_date("CLM_FROM_DT", 'yyyymmdd') as clm_from_dt
	,to_date("CLM_THRU_DT", 'yyyymmdd') as clm_thru_dt
	,(to_date("CLM_FROM_DT", 'yyyymmdd') - b.birth_date)/365 as age
	,drg1."CCS CATEGORY" as drg
	,drg1."CCS CATEGORY DESCRIPTION" as drg_desc
from "2008_to_2010_Outpatient_Claims" a
	join temp_dx_ref drg1 on drg1."ICD-9-CM CODE" = a."ICD9_DGNS_CD_9"
	join beneficiary b on b.desynpuf_id=a."DESYNPUF_ID"
