/*
012 | 펀드매니저 | 12
013 | 트레이더 | 14
014 | 딜러 | 14
015 | 퀀트 | 15
016 | 세일즈 | 16
017 | 브로커 | 17
018 | 리스크관리(미들) | 18
019 | 백오피스 | 19
020 | 분석 및 전략 | 20 
021 | 시스템 개발 | 21 
022 | 기타 | 22

select * from TC_CMMNCODE_DETAIL where CODE_ID='COM052';
delete from TC_CMMNCODE_DETAIL where CODE_ID='COM052' and USE_AT='Y';
+-------------------------+-------------------------+--------+------+---------+---------------------+------------------+---------------------+----------------+------------+-------+-----------+---------+---------+---------+---------+---------+
| CODE_NM                 | CODE_DC                 | USE_AT | CODE | CODE_ID | FRST_REGIST_PNTTM   | FRST_REGISTER_ID | LAST_UPDT_PNTTM     | LAST_UPDUSR_ID | UPPER_CODE | DEPTH | SORT_ORDR | OPTION1 | OPTION2 | OPTION3 | OPTION4 | OPTION5 |
+-------------------------+-------------------------+--------+------+---------+---------------------+------------------+---------------------+----------------+------------+-------+-----------+---------+---------+---------+---------+---------+
| 트레이더                | 트레이더                | N      | 001  | COM052  | 2015-03-24 18:51:25 | test             | 2019-01-29 13:52:36 | test           | 0          |     1 |         1 |         |         |         |         |         |
| 영업(브로커)            | 영업(브로커)            | N      | 002  | COM052  | 2015-03-24 18:52:08 | test             | 2019-01-29 13:52:40 | test           | 0          |     1 |         2 |         |         |         |         |         |
| 딜러                    | 딜러                    | N      | 003  | COM052  | 2015-03-24 18:53:03 | test             | 2019-01-29 13:52:44 | test           | 0          |     1 |         3 |         |         |         |         |         |
| 리서치                  | 리서치                  | N      | 004  | COM052  | 2015-03-24 18:53:21 | test             | 2019-01-29 13:52:46 | test           | 0          |     1 |         4 |         |         |         |         |         |
| 컴플라이언스            | 컴플라이언스            | N      | 005  | COM052  | 2015-03-24 18:53:54 | test             | 2019-01-29 13:52:55 | test           | 0          |     1 |         5 |         |         |         |         |         |
| 리스크관리              | 리스크관리              | N      | 006  | COM052  | 2015-03-24 18:54:10 | test             | 2019-01-29 13:57:02 | test           | 0          |     1 |         6 |         |         |         |         |         |
| 퀀트운용                | 퀀트운용                | N      | 007  | COM052  | 2015-03-24 18:54:43 | test             | 2019-01-29 13:57:05 | test           | 0          |     1 |         7 |         |         |         |         |         |
| 헤지펀드                | 헤지펀드                | N      | 008  | COM052  | 2015-03-24 18:55:03 | test             | 2019-01-29 13:57:08 | test           | 0          |     1 |         8 |         |         |         |         |         |
| IB(M&A,DCM,ECM등)       | IB(M&A,DCM,ECM등)       | N      | 009  | COM052  | 2015-03-24 18:55:27 | test             | 2019-01-29 13:57:11 | test           | 0          |     1 |         9 |         |         |         |         |         |
| 기업금융                | 기업금융                | N      | 010  | COM052  | 2017-07-24 13:55:25 | test             | 2019-01-29 13:57:14 | test           | 0          |     1 |        10 |         |         |         |         |         |
| 백오피스                | 백오피스                | N      | 011  | COM052  | 2017-07-24 13:55:47 | test             | 2019-01-29 13:57:16 | test           | 0          |     1 |        11 |         |         |         |         |         |
| 기타                    | 기타                    | N      | 099  | COM052  | 2015-03-24 18:55:47 | test             | 2019-01-29 14:04:25 | test           | 0          |     1 |        99 |         |         |         |         |         |
+-------------------------+-------------------------+--------+------+---------+---------------------+------------------+---------------------+----------------+------------+-------+-----------+---------+---------+---------+---------+---------+

*/
-- delete from TC_CMMNCODE_DETAIL where CODE_ID='COM052' and USE_AT='Y';
update TC_CMMNCODE_DETAIL set USE_AT='N' where CODE_ID='COM052' and DEPTH=1;
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('펀드매니저','펀드매니저','Y','012','COM052',NOW(),'test',NOW(),'test',0,1,12);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('트레이더','트레이더','Y','013','COM052',NOW(),'test',NOW(),'test',0,1,13);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('딜러','딜러','Y','014','COM052',NOW(),'test',NOW(),'test',0,1,14);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('퀀트','퀀트','Y','015','COM052',NOW(),'test',NOW(),'test',0,1,15);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('세일즈','세일즈','Y','016','COM052',NOW(),'test',NOW(),'test',0,1,16);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('브로커','브로커','Y','017','COM052',NOW(),'test',NOW(),'test',0,1,17);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('리스크관리(미들)','리스크관리(미들)','Y','018','COM052',NOW(),'test',NOW(),'test',0,1,18);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('백오피스','백오피스','Y','019','COM052',NOW(),'test',NOW(),'test',0,1,19);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('분석 및 전략','분석 및 전략','Y','020','COM052',NOW(),'test',NOW(),'test',0,1,20);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('시스템 개발','시스템 개발','Y','021','COM052',NOW(),'test',NOW(),'test',0,1,21);
insert into TC_CMMNCODE_DETAIL (CODE_NM, CODE_DC, USE_AT, CODE, CODE_ID, FRST_REGIST_PNTTM, FRST_REGISTER_ID, LAST_UPDT_PNTTM, LAST_UPDUSR_ID, UPPER_CODE, DEPTH, SORT_ORDR) values ('기타','기타','Y','022','COM052',NOW(),'test',NOW(),'test',0,1,22);
