KRX ������������ Audit ȭ�� ���� ��û�մϴ�
 
1. ȭ�� ���� ����
   KRX ������ �������������� CHECK ȭ��(1155, 1147, 1148, 1149)�� ������ 
   �����ǰ� �ִ� ����� ���纰 �ܸ� ������ �ݱ⸶�� �����Ͽ��� �ϸ�, 
   �ѱ��ŷ��ҿ��� ���� ��û�� ���� ��� ȭ���� �ʿ�
 
2. ���� �Ⱓ : ~  1/10(��)
 
3. ����ȭ�� : 2��(÷�� ����)
 
4. ��Ÿ �߰� ��û ���� 
   KRX ������������ ��༭�� ���ϸ� ���� ȭ��(1155, 1147, 1148, 1149) ��� �����͸� 3�Ⱓ �����ϵ��� �Ǿ� ����
   ����  ���� ȭ�鿡 ���� 3��ġ ������ ���� ��    


   
1. ������������ ���� ���� ��Ȳ(�Է� : �Ⱓ ��ȸ)			
��ȣ	�����	Level2	��ȸ PID��	���

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



2. ������������ ���纰 ȭ�� ��ȸ�Ǽ�(�Է�: �����, �Ⱓ ��ȸ)
��ȣ	�����	PID	1155	1147	1148	1149	�հ�

-- �ɼ��� �ϳ��� ���� �ִ� PID ���
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




