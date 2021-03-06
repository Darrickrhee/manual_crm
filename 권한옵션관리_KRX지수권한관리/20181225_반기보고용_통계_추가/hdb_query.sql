-- 1. 제공고객사현황
select t3.COMP_NM, t3.CUST_ID, SUM(DID_SEE) CNT, SUM(C31) CD58, SUM(C32) CD59, SUM(C33) CD60, SUM(C35) CD62, SUM(C36) CD63, SUM(C37) CD64, SUM(C38) CD65, SUM(C39) CD66
from
(
select CUST_ID, SUM(C31) C31, SUM(C32) C32, SUM(C33) C33, SUM(C35) C35, SUM(C36) C36, SUM(C37) C37, SUM(C38) C38, SUM(C39) C39
from
(
select CUST_ID
    , decode(OPT_NO, 31, 1, 0) C31, decode(OPT_NO, 32, 1, 0) C32
    , decode(OPT_NO, 33, 1, 0) C33, decode(OPT_NO, 35, 1, 0) C35
    , decode(OPT_NO, 36, 1, 0) C36, decode(OPT_NO, 37, 1, 0) C37
    , decode(OPT_NO, 38, 1, 0) C38, decode(OPT_NO, 39, 1, 0) C39
from CUST_OPTION_MAST where AUTH_NM='DATA' and OPT_NO in (31,32,33,35,36,37,38,39) and AUTH_OPT_GB <> 3 group by CUST_ID, OPT_NO order by CUST_ID
)
group by CUST_ID
order by CUST_ID
) as t1 left outer join
(
select CUST_ID, (case when count(*) > 0 then 1 else 0 end) as DID_SEE
from CUST_SCR_INFO
where SCREEN_NO in (1155,1147,1148,1149)
-- and OPEN_DT between 20181101 and 20181231
group by CUST_ID
) as t2 on t1.CUST_ID=t2.CUST_ID
left outer join CUST_COMP_MAST t3 on t1.CUST_ID=t3.CUST_ID
where t3.COMP_NM is not null
group by t3.COMP_NM, t3.CUST_ID
order by t3.COMP_NM
;

-- 2. 고객사별화면조회건수
select t3.COMP_NM, t2.CUST_ID, SUM(t2.SV1155) SV1155, SUM(t2.SV1147) SV1147, SUM(t2.SV1148) SV1148, SUM(t2.SV1149) SV1149, sum(t2.SV1155)+sum(t2.SV1147)+sum(t2.SV1148)+sum(t2.SV1149) as SVALL
, t4.AUTH_OPT_GB
from
(
select CUST_ID
    , decode(SCREEN_NO, 1155, CNT, 0) SV1155
    , decode(SCREEN_NO, 1147, CNT, 0) SV1147
    , decode(SCREEN_NO, 1148, CNT, 0) SV1148
    , decode(SCREEN_NO, 1149, CNT, 0) SV1149
from
(
select CUST_ID, SCREEN_NO, COUNT(SCREEN_NO) as CNT
from CUST_SCR_INFO
where SCREEN_NO in (1155,1147,1148,1149)
-- and OPEN_DT between 20181101 and 20181231
group by CUST_ID, SCREEN_NO
) t1
) t2
left outer join CUST_COMP_MAST t3 on t2.CUST_ID=t3.CUST_ID
left outer join (select CUST_ID, AUTH_OPT_GB from CUST_OPTION_MAST where AUTH_NM='DATA' and OPT_NO in (31,32,33,35,36,37,38,39) and AUTH_OPT_GB <> 3 group by CUST_ID, AUTH_OPT_GB) t4 on t2.CUST_ID=t4.CUST_ID
group by t3.COMP_NM, t2.CUST_ID, t4.AUTH_OPT_GB
order by t3.COMP_NM
;

select CUST_ID, AUTH_OPT_GB from CUST_OPTION_MAST where AUTH_NM='DATA' and OPT_NO in (31,32,33,35,36,37,38,39) and AUTH_OPT_GB <> 3 group by CUST_ID, AUTH_OPT_GB;
