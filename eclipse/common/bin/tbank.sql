INSERT INTO "MDI"."MDIS05_CO_TYPE" (CO_TYPE_ID, NAME, DESCRIPTION) VALUES (MDIS05_SEQ.NEXTVAL, 'AA-Bank', 'Substation')

-- valley bulk ==============================================================
INSERT INTO MDI105_SUB (PLANYEAR,SUB_ID,DISTRICT_ID,SUB_TYPE_ID,SUB_CODE,SUB_NUM,FOREIGN_SUB,SUB_NAME,PRIMARY_KV,SECONDARY_KV,ELL_FACTOR,LOCATION,CITY,COUNTY,STATE,ZIP,LATITUDE,LONGITUDE,HP_DP,A_DP,B_DP,C_DP,N_DP,MW_DP,MVAR_DP,KV_DP,PSLF_BUS_NUM,PSLF_BUS_ID,SA_NUM,LR_NUM,CIS,CUST_NAME,QF_ID,BBANK,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) 
values (2012,MDI105_SEQ.NEXTVAL,35,11,null,null,0,'Valley Bulk',500,115,0,null,null,null,null,null,0,0,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0,to_date('04-APR-11','DD-MON-RR'),778,null,null,null,null);

INSERT INTO MDI115_SIM_SUB (PLANYEAR,SIM_ID,SUB_ID,PROJ_ID,NAMEPLATE,PLL_FACTOR,IN_SERVICE_DATE,OUT_SERVICE_DATE,NOTE,WS_NOTE,CRITERIA_NOTE,TS_NOTE,OP_DRF_NOTE,PLL_NOTE,NP_NOTE,LG_NOTE,USER_SP_NOTE,DEP_GEN_NOTE,BYPASS_GEN_NOTE,PEAK_DATE,ALT_ADJ_PEAK,USE_ALT,PA_FINALIZED,PA_APPROVED,LG_FINALIZED,LG_APPROVED,SS_FINALIZED,SS_APPROVED,IN_SERVICE_PROJ_ID,OUT_SERVICE_PROJ_ID,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID,USE_USER_PRN,USER_PRN,PREV_P_R_N) 
values (2012,0,MDI105_SEQ.CURRVAL,null,null,null,to_date('01-APR-85','DD-MON-RR'),null,null,null,null,null,null,null,null,null,null,null,null,null,0,1,null,null,null,null,null,null,null,null,null,null,to_date('16-SEP-11','DD-MON-RR'),862,null,null,null,null,1);

INSERT INTO MDI.MDI107_ABANK (PLANYEAR, ABANK_SUB_ID) VALUES ('2012', MDI105_SEQ.CURRVAL)
-- end valley bulk ==========================================================

-- Alberhill ==============================================================
INSERT INTO MDI105_SUB (PLANYEAR,SUB_ID,DISTRICT_ID,SUB_TYPE_ID,SUB_CODE,SUB_NUM,FOREIGN_SUB,SUB_NAME,PRIMARY_KV,SECONDARY_KV,ELL_FACTOR,LOCATION,CITY,COUNTY,STATE,ZIP,LATITUDE,LONGITUDE,HP_DP,A_DP,B_DP,C_DP,N_DP,MW_DP,MVAR_DP,KV_DP,PSLF_BUS_NUM,PSLF_BUS_ID,SA_NUM,LR_NUM,CIS,CUST_NAME,QF_ID,BBANK,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) 
values (2012,MDI105_SEQ.NEXTVAL,35,11,null,null,0,'Alberhill Bulk',500,115,0,null,null,null,null,null,0,0,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0,to_date('04-APR-11','DD-MON-RR'),778,null,null,null,null);

INSERT INTO MDI115_SIM_SUB (PLANYEAR,SIM_ID,SUB_ID,PROJ_ID,NAMEPLATE,PLL_FACTOR,IN_SERVICE_DATE,OUT_SERVICE_DATE,NOTE,WS_NOTE,CRITERIA_NOTE,TS_NOTE,OP_DRF_NOTE,PLL_NOTE,NP_NOTE,LG_NOTE,USER_SP_NOTE,DEP_GEN_NOTE,BYPASS_GEN_NOTE,PEAK_DATE,ALT_ADJ_PEAK,USE_ALT,PA_FINALIZED,PA_APPROVED,LG_FINALIZED,LG_APPROVED,SS_FINALIZED,SS_APPROVED,IN_SERVICE_PROJ_ID,OUT_SERVICE_PROJ_ID,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID,USE_USER_PRN,USER_PRN,PREV_P_R_N) 
values (2012,0,MDI105_SEQ.CURRVAL,null,null,null,to_date('01-APR-85','DD-MON-RR'),null,null,null,null,null,null,null,null,null,null,null,null,null,0,1,null,null,null,null,null,null,null,null,null,null,to_date('16-SEP-11','DD-MON-RR'),862,null,null,null,null,1);

INSERT INTO MDI.MDI107_ABANK (PLANYEAR, ABANK_SUB_ID) VALUES ('2012', MDI105_SEQ.CURRVAL)
-- end Alberhill ==========================================================

-- Auld ==============================================================
INSERT INTO MDI105_SUB (PLANYEAR,SUB_ID,DISTRICT_ID,SUB_TYPE_ID,SUB_CODE,SUB_NUM,FOREIGN_SUB,SUB_NAME,PRIMARY_KV,SECONDARY_KV,ELL_FACTOR,LOCATION,CITY,COUNTY,STATE,ZIP,LATITUDE,LONGITUDE,HP_DP,A_DP,B_DP,C_DP,N_DP,MW_DP,MVAR_DP,KV_DP,PSLF_BUS_NUM,PSLF_BUS_ID,SA_NUM,LR_NUM,CIS,CUST_NAME,QF_ID,BBANK,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) 
values (2012,MDI105_SEQ.NEXTVAL,35,11,null,null,0,'Auld Bulk',500,115,0,null,null,null,null,null,0,0,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0,to_date('04-APR-11','DD-MON-RR'),778,null,null,null,null);

INSERT INTO MDI115_SIM_SUB (PLANYEAR,SIM_ID,SUB_ID,PROJ_ID,NAMEPLATE,PLL_FACTOR,IN_SERVICE_DATE,OUT_SERVICE_DATE,NOTE,WS_NOTE,CRITERIA_NOTE,TS_NOTE,OP_DRF_NOTE,PLL_NOTE,NP_NOTE,LG_NOTE,USER_SP_NOTE,DEP_GEN_NOTE,BYPASS_GEN_NOTE,PEAK_DATE,ALT_ADJ_PEAK,USE_ALT,PA_FINALIZED,PA_APPROVED,LG_FINALIZED,LG_APPROVED,SS_FINALIZED,SS_APPROVED,IN_SERVICE_PROJ_ID,OUT_SERVICE_PROJ_ID,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID,USE_USER_PRN,USER_PRN,PREV_P_R_N) 
values (2012,0,MDI105_SEQ.CURRVAL,null,null,null,to_date('01-APR-85','DD-MON-RR'),null,null,null,null,null,null,null,null,null,null,null,null,null,0,1,null,null,null,null,null,null,null,null,null,null,to_date('16-SEP-11','DD-MON-RR'),862,null,null,null,null,1);

INSERT INTO MDI.MDI107_ABANK (PLANYEAR, ABANK_SUB_ID) VALUES ('2012', MDI105_SEQ.CURRVAL)
-- end Auld ==========================================================

-- Adelanto ==============================================================
INSERT INTO MDI105_SUB (PLANYEAR,SUB_ID,DISTRICT_ID,SUB_TYPE_ID,SUB_CODE,SUB_NUM,FOREIGN_SUB,SUB_NAME,PRIMARY_KV,SECONDARY_KV,ELL_FACTOR,LOCATION,CITY,COUNTY,STATE,ZIP,LATITUDE,LONGITUDE,HP_DP,A_DP,B_DP,C_DP,N_DP,MW_DP,MVAR_DP,KV_DP,PSLF_BUS_NUM,PSLF_BUS_ID,SA_NUM,LR_NUM,CIS,CUST_NAME,QF_ID,BBANK,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) 
values (2012,MDI105_SEQ.NEXTVAL,35,11,null,null,0,'Adelanto',500,220,0,null,null,null,null,null,0,0,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,0,to_date('04-APR-11','DD-MON-RR'),778,null,null,null,null);

INSERT INTO MDI115_SIM_SUB (PLANYEAR,SIM_ID,SUB_ID,PROJ_ID,NAMEPLATE,PLL_FACTOR,IN_SERVICE_DATE,OUT_SERVICE_DATE,NOTE,WS_NOTE,CRITERIA_NOTE,TS_NOTE,OP_DRF_NOTE,PLL_NOTE,NP_NOTE,LG_NOTE,USER_SP_NOTE,DEP_GEN_NOTE,BYPASS_GEN_NOTE,PEAK_DATE,ALT_ADJ_PEAK,USE_ALT,PA_FINALIZED,PA_APPROVED,LG_FINALIZED,LG_APPROVED,SS_FINALIZED,SS_APPROVED,IN_SERVICE_PROJ_ID,OUT_SERVICE_PROJ_ID,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID,USE_USER_PRN,USER_PRN,PREV_P_R_N) 
values (2012,0,MDI105_SEQ.CURRVAL,null,null,null,to_date('01-APR-85','DD-MON-RR'),null,null,null,null,null,null,null,null,null,null,null,null,null,0,1,null,null,null,null,null,null,null,null,null,null,to_date('16-SEP-11','DD-MON-RR'),862,null,null,null,null,1);

INSERT INTO MDI.MDI107_ABANK (PLANYEAR, ABANK_SUB_ID) VALUES ('2012', MDI105_SEQ.CURRVAL)
-- end Adelanto ==========================================================




-- INSERT INTO MDI115_SIM_SUB (PLANYEAR,SIM_ID,SUB_ID,PROJ_ID,NAMEPLATE,PLL_FACTOR,IN_SERVICE_DATE,OUT_SERVICE_DATE,NOTE,WS_NOTE,CRITERIA_NOTE,TS_NOTE,OP_DRF_NOTE,PLL_NOTE,NP_NOTE,LG_NOTE,USER_SP_NOTE,DEP_GEN_NOTE,BYPASS_GEN_NOTE,PEAK_DATE,ALT_ADJ_PEAK,USE_ALT,PA_FINALIZED,PA_APPROVED,LG_FINALIZED,LG_APPROVED,SS_FINALIZED,SS_APPROVED,IN_SERVICE_PROJ_ID,OUT_SERVICE_PROJ_ID,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID,USE_USER_PRN,USER_PRN,PREV_P_R_N) values (2012,0,2169,null,null,null,to_date('01-APR-85','DD-MON-RR'),null,null,null,null,null,null,null,null,null,null,null,null,null,0,1,null,null,null,null,null,null,null,null,null,null,to_date('16-SEP-11','DD-MON-RR'),862,null,null,null,null,1);
-- INSERT INTO MDI115_SIM_SUB (PLANYEAR,SIM_ID,SUB_ID,PROJ_ID,NAMEPLATE,PLL_FACTOR,IN_SERVICE_DATE,OUT_SERVICE_DATE,NOTE,WS_NOTE,CRITERIA_NOTE,TS_NOTE,OP_DRF_NOTE,PLL_NOTE,NP_NOTE,LG_NOTE,USER_SP_NOTE,DEP_GEN_NOTE,BYPASS_GEN_NOTE,PEAK_DATE,ALT_ADJ_PEAK,USE_ALT,PA_FINALIZED,PA_APPROVED,LG_FINALIZED,LG_APPROVED,SS_FINALIZED,SS_APPROVED,IN_SERVICE_PROJ_ID,OUT_SERVICE_PROJ_ID,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID,USE_USER_PRN,USER_PRN,PREV_P_R_N) 


-- Devers 96
INSERT INTO MDI060_SYS(PLANYEAR,SYS_ID,FOREIGN_SYS,SYS_NAME,SECONDARY_KV,REGION_ID,SYS_NUM,PRIMARY_KV) VALUES(2012,MDI060_SEQ.NEXTVAL,0,'Devers 500/220',220.0,4,'ndev',500.0);-- regionId: 4
-- Eldorado 97
INSERT INTO MDI060_SYS(PLANYEAR,SYS_ID,FOREIGN_SYS,SYS_NAME,SECONDARY_KV,REGION_ID,SYS_NUM,PRIMARY_KV) VALUES(2012,MDI060_SEQ.NEXTVAL,0,'Eldorado 500/220',220.0,7,'neld',500.0);-- regionId: 7
-- Lugo 98
INSERT INTO MDI060_SYS(PLANYEAR,SYS_ID,FOREIGN_SYS,SYS_NAME,SECONDARY_KV,REGION_ID,SYS_NUM,PRIMARY_KV) VALUES(2012,MDI060_SEQ.NEXTVAL,0,'Lugo 500/220',220.0,8,'nlugo',500.0);-- regionId: 8
-- Magunden 99
INSERT INTO MDI060_SYS(PLANYEAR,SYS_ID,FOREIGN_SYS,SYS_NAME,SECONDARY_KV,REGION_ID,SYS_NUM,PRIMARY_KV) VALUES(2012,MDI060_SEQ.NEXTVAL,0,'Magunden 500/220',220.0,7,'nmag',500.0);
-- Mira Loma 100
INSERT INTO MDI060_SYS(PLANYEAR,SYS_ID,FOREIGN_SYS,SYS_NAME,SECONDARY_KV,REGION_ID,SYS_NUM,PRIMARY_KV) VALUES(2012,MDI060_SEQ.NEXTVAL,0,'Mira Loma 500/220',115.0,5,'nmira',500.0);-- regionId: 5
-- Racho Vista 101
INSERT INTO MDI060_SYS(PLANYEAR,SYS_ID,FOREIGN_SYS,SYS_NAME,SECONDARY_KV,REGION_ID,SYS_NUM,PRIMARY_KV) VALUES(2012,MDI060_SEQ.NEXTVAL,0,'Racho Vista 500/220',220.0,7,'nrancho',500.0);
-- Serrano 102
INSERT INTO MDI060_SYS(PLANYEAR,SYS_ID,FOREIGN_SYS,SYS_NAME,SECONDARY_KV,REGION_ID,SYS_NUM,PRIMARY_KV) VALUES(2012,MDI060_SEQ.NEXTVAL,0,'Serrano 500/220',220.0,6,'nserr',500.0);-- regionId: 6
-- Valley Bulk 103
INSERT INTO MDI060_SYS(PLANYEAR,SYS_ID,FOREIGN_SYS,SYS_NAME,SECONDARY_KV,REGION_ID,SYS_NUM,PRIMARY_KV) VALUES(2012,MDI060_SEQ.NEXTVAL,0,'Valley Bulk 500/115',115.0,3,'nvalb',500.0);-- regionId: 3
-- Vincent 104
INSERT INTO MDI060_SYS(PLANYEAR,SYS_ID,FOREIGN_SYS,SYS_NAME,SECONDARY_KV,REGION_ID,SYS_NUM,PRIMARY_KV) VALUES(2012,MDI060_SEQ.NEXTVAL,0,'Vincent 500/220',220.0,1,'nvin',500.0);-- regionId: 1

/*
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2011,117,0,0,0,2,0,0,0,null,null,null,null,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2012,117,0,0,0,2,0,0,0,null,null,to_date('16-APR-10','DD-MON-RR'),56,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2013,117,0,0,0.005,2,0,0,0,null,null,to_date('05-APR-11','DD-MON-RR'),133,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2014,117,0,0,0.005,2,0,0,0,null,null,to_date('05-APR-11','DD-MON-RR'),133,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2015,117,0,0,0.005,2,0,0,0,null,null,to_date('05-APR-11','DD-MON-RR'),133,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2016,117,0,0,0.005,2,0,0,0,null,null,to_date('05-APR-11','DD-MON-RR'),133,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2017,117,0,0,0.005,2,0,0,0,null,null,to_date('05-APR-11','DD-MON-RR'),133,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2018,117,0,0,0.005,2,0,0,0,null,null,to_date('05-APR-11','DD-MON-RR'),133,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2019,117,0,0,0.005,2,0,0,0,null,null,to_date('05-APR-11','DD-MON-RR'),133,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2020,117,0,0,0.005,2,0,0,0,null,null,to_date('05-APR-11','DD-MON-RR'),133,null,null);
INSERT into MDI120_ABANK_YEAR (PLANYEAR,SIM_ID,ABANK_SUB_ID,YEAR,SYS_ID,OPER_DRF,USE_OPER_DRF,TEMP_SENS,CRITERIA_ID,Q_LOSS,COND_OUTPUT,CHILD_KVAR_SUPPLY,INSERT_TS,INSERT_USER_ID,MODIFIED_TS,MODIFIED_USER_ID,DELETED_TS,DELETED_USER_ID) values (2012,0,345,2021,117,0,0,0.005,2,0,0,0,null,null,to_date('05-APR-11','DD-MON-RR'),133,null,null);
*/
select count(*) from mdi.mdis80_SCE_PROJ_ELEM_COST where CO_TYPE_ID=1

-- 2473 subs
select count(*) from mdi.mdis80_SCE_PROJ_ELEM_COST 
where CO_TYPE_ID=6 
AND (facility_id=338 OR facility_id=345 OR facility_id=362 OR facility_id=2107 OR facility_id=319 OR facility_id=384 OR facility_id=329)

update mdi.mdis80_SCE_PROJ_ELEM_COST set CO_TYPE_ID=18
where CO_TYPE_ID=6 AND (facility_id=338 OR facility_id=345 OR facility_id=362 OR facility_id=2107 OR facility_id=319 OR facility_id=384 OR facility_id=329)

select sce_proj_id, s1.sce_proj_rev_id, s1.cost_id, proj_num, location, s2.title from mdi.mdis80_SCE_PROJ_ELEM_COST s1 inner join MDI.mdis40_sce_proj_rev s2
on s1.sce_proj_rev_id = s2.sce_proj_rev_id where s1.CO_TYPE_ID=1 