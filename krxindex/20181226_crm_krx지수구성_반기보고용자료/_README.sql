KRX 지수구성정보 Audit 화면 개발 요청합니다
 
1. 화면 개발 사유
   KRX 소유의 지수구성종목을 CHECK 화면(1155, 1147, 1148, 1149)에 제공시 
   제공되고 있는 고객사와 고객사별 단말 수량을 반기마다 제출하여야 하며, 
   한국거래소에서 감사 요청시 관리 통계 화면이 필요
 
2. 개발 기간 : ~  1/10(목)
 
3. 개발화면 : 2개(첨부 참조)
 
4. 기타 추가 요청 사항 
   KRX 지수구성정보 계약서에 의하면 관련 화면(1155, 1147, 1148, 1149) 통계 데이터를 3년간 보관하도록 되어 있음
   따라서  관련 화면에 대한 3년치 데이터 보관 요    


   
1. 지수구성종목 제공 고객사 현황(입력 : 기간 조회)			
번호	고객사명	Level2	조회 PID수	비고

select INSTT_NM
	,if(sum(CD58)>0,1,'XXX')
	,if(sum(CD59)>0,1,'XXX')
	,if(sum(CD60)>0,1,'XXX')
	,if(sum(CD62)>0,1,'XXX')
	,if(sum(CD64)>0,1,'XXX')
	,if(sum(CD63)>0,1,'XXX')
	,if(sum(CD65)>0,1,'XXX')
	,if(sum(CD66)>0,1,'XXX')
from (
select g.PID, i.INSTT_NM,
	if(o.GOODS_OPTION_CD='58', 1, 0) as CD58
	, if(o.GOODS_OPTION_CD='59', 1, 0) as CD59
	, if(o.GOODS_OPTION_CD='60', 1, 0) as CD60
	, if(o.GOODS_OPTION_CD='62', 1, 0) as CD62
	, if(o.GOODS_OPTION_CD='64', 1, 0) as CD64
	, if(o.GOODS_OPTION_CD='63', 1, 0) as CD63
	, if(o.GOODS_OPTION_CD='65', 1, 0) as CD65
	, if(o.GOODS_OPTION_CD='66', 1, 0) as CD66
from
	TN_GOODS_OPTIONS o left outer join TN_GOODS g on o.GOODS_SQ=g.GOODS_SQ
	left outer join TN_INSTT i on g.INSTT_SQ=i.INSTT_SQ
where
	g.CNTRCT_STT_CD='001'
	and o.GOODS_OPTION_CD in ('58','59','60','62','64','63','65','66')
	and o.AUTHOR_SE_CD='104'
group by i.INSTT_NM, g.PID, o.GOODS_OPTION_CD
order by i.INSTT_NM, g.PID, o.GOODS_OPTION_CD
) as sub
group by INSTT_NM
;



2. 지수구성종목 고객사별 화면 조회건수(입력: 고객사명, 기간 조회)
번호	고객사명	PID	1155	1147	1148	1149	합계

-- 옵션을 하나라도 갖고 있는 PID 목록
select g.PID, i.INSTT_NM
from
	TN_GOODS_OPTIONS o left outer join TN_GOODS g on o.GOODS_SQ=g.GOODS_SQ
	left outer join TN_INSTT i on g.INSTT_SQ=i.INSTT_SQ
where
	g.CNTRCT_STT_CD='001'
	and o.GOODS_OPTION_CD in ('58','59','60','62','64','63','65','66')
	and o.AUTHOR_SE_CD='104'
group by i.INSTT_NM, g.PID, o.GOODS_OPTION_CD
order by i.INSTT_NM, g.PID, o.GOODS_OPTION_CD




