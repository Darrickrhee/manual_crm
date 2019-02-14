/*
009 | 국내주식/지수               | 9

010 | 국내주식/지수관련파생       | 10
011 | 해외주식/지수               | 11
012 | 해외주식/지수관련파생       | 12
013 | ETF/ETN                     | 13
014 | ELW                         | 14
015 | ELS/DLS                     | 15
016 | IB(발행, M&A 등)            | 16
017 | 대체투자(부동산/인프라)     | 17
018 | 국고채/통안채               | 18
019 | 회사채                      | 19

020 | 소액채권                    | 20
021 | RP                          | 21
022 | 단기자금                    | 22
023 | 국채선물                    | 23
024 | Korean Paper                | 24
025 | 외화채권(KP제외)            | 25
026 | 외화채권선물                | 26
027 | 원화구조화채권              | 27
028 | 외화구조화채권              | 28
029 | 원화이자율스왑              | 29

030 | 외화이자율스왑              | 30
031 | FX Spot & FX Swap           | 31
032 | CRS & FX Option             | 32
033 | FRA/이자율옵션              | 33
034 | 신용파생                    | 34
035 | 원자재파생                  | 35

select * from TC_CMMNCODE_DETAIL where CODE_ID='COM053';
+-----------------------------------+-----------------------------------+--------+------+---------+---------------------+------------------+---------------------+----------------+------------+-------+-----------+---------+---------+---------+---------+---------+
| CODE_NM                           | CODE_DC                           | USE_AT | CODE | CODE_ID | FRST_REGIST_PNTTM   | FRST_REGISTER_ID | LAST_UPDT_PNTTM     | LAST_UPDUSR_ID | UPPER_CODE | DEPTH | SORT_ORDR | OPTION1 | OPTION2 | OPTION3 | OPTION4 | OPTION5 |
+-----------------------------------+-----------------------------------+--------+------+---------+---------------------+------------------+---------------------+----------------+------------+-------+-----------+---------+---------+---------+---------+---------+
| 주식                              | 주식                              | N      | 001  | COM053  | 2015-03-24 18:56:23 | test             | 2019-01-29 14:28:47 | test           | 0          |     1 |         1 |         |         |         |         |         |
| 장내파생                          | 장내파생                          | N      | 002  | COM053  | 2015-03-24 18:56:34 | test             | 2019-01-29 14:28:56 | test           | 0          |     1 |         2 |         |         |         |         |         |
| 장외파생(ELS,DLS)                 | 장외파생(ELS,DLS)                 | N      | 003  | COM053  | 2015-03-24 18:56:46 | test             | 2019-01-29 14:28:59 | test           | 0          |     1 |         3 |         |         |         |         |         |
| 채권                              | 채권                              | N      | 004  | COM053  | 2015-03-24 18:56:59 | test             | 2019-01-29 14:29:01 | test           | 0          |     1 |         4 |         |         |         |         |         |
| 외환                              | 외환                              | N      | 005  | COM053  | 2015-03-24 18:57:16 | test             | 2019-01-29 14:29:05 | test           | 0          |     1 |         5 |         |         |         |         |         |
| 해외주식                          | 해외주식                          | N      | 006  | COM053  | 2017-07-24 13:57:42 | test             | 2019-01-29 14:29:07 | test           | 0          |     1 |         6 |         |         |         |         |         |
| 해외채권                          | 해외채권                          | N      | 007  | COM053  | 2017-07-24 13:57:56 | test             | 2019-01-29 14:29:09 | test           | 0          |     1 |         7 |         |         |         |         |         |
| 대체투자(부동산,인프라)           | 대체투자(부동산,인프라)           | N      | 008  | COM053  | 2017-07-24 13:58:09 | test             | 2019-01-29 14:29:13 | test           | 0          |     1 |         8 |         |         |         |         |         |
| 기타                              | 기타                              | N      | 099  | COM053  | 2015-03-24 18:57:29 | test             | 2019-01-29 14:29:19 | test           | 0          |     1 |        99 |         |         |         |         |         |
+-----------------------------------+-----------------------------------+--------+------+---------+---------------------+------------------+---------------------+----------------+------------+-------+-----------+---------+---------+---------+---------+---------+
*/
update TC_CMMNCODE_DETAIL set USE_AT='N' where CODE_ID='COM053' and DEPTH=1;
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('국내주식/지수','국내주식/지수','Y','009','COM053',NOW(),'test',NOW(),'test',0,1,009);

insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('국내주식/지수관련파생','국내주식/지수관련파생','Y','010','COM053',NOW(),'test',NOW(),'test',0,1,010);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('해외주식/지수','해외주식/지수','Y','011','COM053',NOW(),'test',NOW(),'test',0,1,011);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('해외주식/지수관련파생','해외주식/지수관련파생','Y','012','COM053',NOW(),'test',NOW(),'test',0,1,012);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('ETF/ETN','ETF/ETN','Y','013','COM053',NOW(),'test',NOW(),'test',0,1,013);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('ELW','ELW','Y','014','COM053',NOW(),'test',NOW(),'test',0,1,014);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('ELS/DLS','ELS/DLS','Y','015','COM053',NOW(),'test',NOW(),'test',0,1,015);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('IB(발행, M&A 등)','IB(발행, M&A 등)','Y','016','COM053',NOW(),'test',NOW(),'test',0,1,016);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('대체투자(부동산/인프라)','대체투자(부동산/인프라)','Y','017','COM053',NOW(),'test',NOW(),'test',0,1,017);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('국고채/통안채','국고채/통안채','Y','018','COM053',NOW(),'test',NOW(),'test',0,1,018);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('회사채','회사채','Y','019','COM053',NOW(),'test',NOW(),'test',0,1,019);

insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('소액채권','소액채권','Y','020','COM053',NOW(),'test',NOW(),'test',0,1,020);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('RP','RP','Y','021','COM053',NOW(),'test',NOW(),'test',0,1,021);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('단기자금','단기자금','Y','022','COM053',NOW(),'test',NOW(),'test',0,1,022);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('국채선물','국채선물','Y','023','COM053',NOW(),'test',NOW(),'test',0,1,023);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('Korean Paper','Korean Paper','Y','024','COM053',NOW(),'test',NOW(),'test',0,1,024);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('외화채권(KP제외)','외화채권(KP제외)','Y','025','COM053',NOW(),'test',NOW(),'test',0,1,025);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('외화채권선물','외화채권선물','Y','026','COM053',NOW(),'test',NOW(),'test',0,1,026);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('원화구조화채권','원화구조화채권','Y','027','COM053',NOW(),'test',NOW(),'test',0,1,027);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('외화구조화채권','외화구조화채권','Y','028','COM053',NOW(),'test',NOW(),'test',0,1,028);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('원화이자율스왑','원화이자율스왑','Y','029','COM053',NOW(),'test',NOW(),'test',0,1,029);

insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('외화이자율스왑','외화이자율스왑','Y','030','COM053',NOW(),'test',NOW(),'test',0,1,030);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('FX Spot & FX Swap','FX Spot & FX Swap','Y','031','COM053',NOW(),'test',NOW(),'test',0,1,031);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('CRS & FX Option','CRS & FX Option','Y','032','COM053',NOW(),'test',NOW(),'test',0,1,032);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('FRA/이자율옵션','FRA/이자율옵션','Y','033','COM053',NOW(),'test',NOW(),'test',0,1,033);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('신용파생','신용파생','Y','034','COM053',NOW(),'test',NOW(),'test',0,1,034);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('원자재파생','원자재파생','Y','035','COM053',NOW(),'test',NOW(),'test',0,1,035);
