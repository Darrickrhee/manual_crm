<!DOCTPYE html>
<html>
<head>
	<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="./css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
	<style>
		/* * {letter-spacing:-0.4px;} */
		h4 {font-weight:bold;margin-bottom:40px;}
		article {padding:10px;margin:5px;margin-top:70px;}
        /* article {background-color:#fafafa;border-radius:20px;} */
		li {line-height:30px;}
        object {display:block;width:98vw;height:100vh;}
        .h5 {font-weight:bold;color:#2e2e2e;}
	</style>
    <script>
    /* 추후사용
        $(document).ready(function () {
            for(var i=1; i<=10; i++) {
                var no = i;
                if(i>0&&i<=9) no = '00'+i;
                else if(i>=10&&i<=99) no = '0' + i;
                
                $("section#object-index ul").append("<li><a href='#object"+no+"'>article"+no+"</a></li>");
                
                $("section#object-link").append("<object type='text/html' data='article/crm/"+no+".html' id='object"+no+"'></object>");
            }
        });
    */
    </script>
</head>
<body>
<h2>체크 고객관리(CRM) 서비스 운영 매뉴얼 V0.1</h2>
<section id="object-index">
<ul>
<!--
<li><a href="#object001">article001</a></li>
-->
</ul>
</section>

<section id="object-link">
<!--
<object type="text/html" data="article/crm/001.html"></object>
-->
</section>



<article>
<h4></h4>
<p></p>
</article>


<article>
<h4>주기적으로 반복해서 써야 할 기능 만들기</h4>
<p></p>
</article>


<article>
<h4>임시로 한 번만 쓰고 말 기능 만들어서 쓰기</h4>
<p></p>
</article>


<article>
<h4>특정 권한옵션에 대한 설정값을 일괄로 변경하기</h4>
<p>
<div>종종, 특정 PID들에 대해서, 혹은 특정 고객사에 속한 PID에 대해서 옵션의 권한값을 일괄로 변경해 달라는 요청이 있다.</div>
<div>옵션 권한값은 웹통합DB와 증권종합DB 양쪽에 모두 반영되어야 하기 때문에, 단순히 쿼리만 날리기에는 리스크가 있다.
</div>
<div></div>
- PID 또는 대상 기관이 특정되어야 한다.
- MySQL의 kc_crm DB와 증권종합DB의 CUST_OPTION_MAST가 모두 변경되어야 한다. -> 즉 수동으로 대량의 데이터를 변경하는 것은 힘들다.
- 1) 임시 기능 자체 제작


- 2) '옵션일괄변경' 이용
<ol>
<li><kbd>고객정보</kbd> - <kbd>옵션일괄변경</kbd> 메뉴 클릭
<blockquote class="text-muted small">※ 관리자ID로 로그인했을 때만 보이는 메뉴, 일반 사용자는 사용 불가</blockquote>

<li>변경하고자 하는 대상 옵션의 정보를 설정함
</li>

<li>변경하고자 하는 TO-BE 권한구분값을 설정함
</li>

<li>일괄 변경의 대상이 되는 기관명 또는 PID 목록을 입력한 뒤 <button class="btn btn-primary btn-xs">검색</button> 버튼을 클릭
<blockquote class="text text-danger small">※ <button class="btn btn-danger btn-xs">TO-BE 권한 일괄 적용</button> 버튼을 먼저 누르지 않도록 주의</blockquote>
</li>
</li>
</ol>
</p>
</article>


<article>
<h4>신규 메뉴를 만들었는데 사용자에게는 안보인다고 함!</h4>
<p>
<div>추가된 메뉴를 특정 사용자 그룹을 대상으로 열어주는 작업이 필요하다.</div>
<br/>
<ol>
<li><kbd>관리자기능</kbd> - <kbd>담당자관리</kbd> - <kbd>그룹 권한관리</kbd>를 클릭한다.</li>
<li>가장 마지막 행 '공통권한'에 있는 <kbd>메뉴권한설정</kbd>을 클릭한다.
<blockquote class="text-muted small">※ 전체 사용자를 대상으로 열어줄 때 이용한다.<br/>
※ 만일 특정 사용자 그룹(관리자, 영업(AM), 리서치 등)을 대상으로만 메뉴를 보이게 하고 싶다면 해당 그룹행의 <kbd>메뉴권한설정</kbd>으로 들어간다.
</blockquote></li>
<li>'메뉴목록' 체크 박스 하단에 있는 '고객관리시스템'을 클릭하면 하위 메뉴들이 열린다.</li>
<li>열려는 메뉴의 체크박스를 체크된 상태로 만든 후, 상단의 <button class="btn btn-primary btn-xs">권한적용</button> 버튼을 클릭하여 저장한다.</li>
</ol>
</p>
</article>

<article>
<h4>관련된 소스를 찾으려면?</h4>
<h5>게시판</h5>
<p></p>
<h5>그 외</h5>
<p></p>
</article>

<article>
<h4>관리자ID로 로그인</h4>
<p>
<ol>
<li>운영 환경
<pre>ID: test
PW: skatksthskan
</pre>
<pre class="text-muted small">※ 비밀번호 보안 규칙에 맞지 않다고 나오지만, 무시하고 '확인'</pre>
</li>
<li>개발 환경
<pre>ID: test
PW: test</pre>
</li>
</ol>
</p>
</article>


<article>
<h4>사용자 비밀번호 초기화</h4>
<p>
<ol>
<li>관리자ID로 로그인</li>
<li>상단 메뉴 <kbd>관리자기능</kbd></li>
<li>좌측 메뉴 <kbd>담당자관리</kbd> - <kbd>담당자 정보관리</kbd></li>
<li>대상 ID 검색하여 ‘수정’ 버튼 클릭</li>
<li>좌측 하단 <kbd>비밀번호 초기화</kbd> 버튼 클릭</li>
<li>비밀번호를 초기화 하시겠습니까? - 예</li>
<li>비밀번호 초기화 성공! - 확인</li>
<li class="text text-primary">좌측 하단 “비밀번호 초기화 결과” 복사하여 사용자에게 통지</li>
</ol>
<pre class="text-muted small">※ 초기화된 비밀번호는 무작위 숫자 + 문자로 구성된 8자리 문자열</pre>
</p>
</article>

<article>
<h4>비밀번호 입력 오류 횟수 초기화</h4>
<p>
<ol>
<li>관리자ID로 로그인</li>
<li>상단 메뉴 <kbd>관리자기능</kbd></li>
<li>좌측 메뉴 <kbd>담당자관리</kbd> - <kbd>담당자 정보관리</kbd></li>
<li>대상 ID 검색하여 '아이디'에 걸려있는 링크를 클릭</li>
<li>'비밀번호 오류 횟수'칸에 있는 <button class="btn btn-primary btn-xs">초기화</button> 버튼을 클릭
</ol>
</p>
</article>



<article>
<h4>사용자 신규 등록</h4>
<p></p>
</article>


<article>
<h4>특정 사용자 외부 접속 허용/차단</h4>
<p></p>
</article>

<article>
<h4>권한옵션을 추가/변경/삭제</h4>
<p></p>
</article>

<article>
<h4>CHECK 고객 원격지원</h4>
<p>
<ol>
<li>미리 RSupport 사용 신청이 되어 있어야 한다.
<ul>
<li>CMS 접속 - 보안업무 - 인터넷pc 사용 및 부가권한 신청서</li>
<li>인터넷 pc 프로그램 사용신청서 작성 <button class="btn btn-xs btn-default" type="button" data-toggle="collapse" data-target="#collapse_img_rsupport" aria-expanded="false" aria-controls="collapse_img_rsupport">Img</button>
<pre class="collapse" id="collapse_img_rsupport"><img src="img/crm/img_rsupport.png"/>
</pre>
</li>
<li>팀장 결재까지 상신</li>
<pre class="text-muted small">※ IT리스크팀 담당자: 이루리 대리</pre>
</ul>
</li>
<li>RSupport 프로그램을 설치한 뒤 실행한다.
<pre>
    Download URL: <a href="">https://www.rsupport.com/ko-kr/resources/download/product-program/</a>
    대상: <span class="text text-primary">리모트콜 6.0 Windows용 통합 Agent 설치파일</span>
</pre>
</li>
<li>RSupport에 로그인한다.
<pre>
ID: check1 ~ check9
PW: koscom@1
</pre>
</li>
<li>고객에게 원격지원 프로그램을 실행 요청한다.
<pre>
    <span class="text text-info">"고객님, 체크가 활성화된 상태에서 <strong>F4</strong>를 눌러주세요."</span> <span class="small">또는</span>
    <span class="text text-info">"고객님, 체크 화면의 좌측 상단 화면번호/키워드 검색란에 9028을 입력해 주세요."</span>
</pre>
</li>
</ol>
<pre class="text-muted small">
※ RSupport 사용법을 잘 모르겠으면 체크 클라이언트 담당자(송현지, 최대한 사원)에게 문의
</pre>

</p>
</article>

<article>
<h4>이미지를 바탕으로 한 인터넷공지 CHECK 팝업</h4>
<p>
<h5 class="h5">JSP 페이지 제작하기</h5>
<ul>
<li>BIC&S 박정문 부장님께 의뢰</li>
<li>하는 것이 여의치 않다면 다음과 같이 진행
<ol>
<li></li>
<li></li>
<li></li>
</ol>
</li>
</ul>
</p>
<p>
<h5 class="h5">CRM에 등록하기</h5>
<ol>
<li></li>
<li></li>
<li></li>
</ol>
</p>
</article>

</section>

<section>

<article>
<h4>주기 반복 작업</h4>
<p>#. 주기 반복 작업의 종류
<div>CRM 접속기록 점검일지 작성</div>
</p>
<p>#. 기능 개발 방법</p>
<p>#. 반복 작업 등록 방법</p>
</article>

<article>
<h4>기타 Trouble Shooting</h4>

<p>
<h5 class="h5">CHECK 고객 - 팝업이 정상 동작하지 않음</h5>
IE10을 사용하는 고객이라면 IE11 이상으로 업그레이드 해볼 것
</p>


</article>
</section>
</body>
</html>