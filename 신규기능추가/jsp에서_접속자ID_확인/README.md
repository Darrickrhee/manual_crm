관리자 ID인 'test'로 로그인했을 때면 화면 하단에 jsp 파일명이 표시된다는 것에 착안하여,

jsp에서 현재 로그인한 사용자의 ID를 확인하는 소스를 찾아가보자.

---

1. jsp 파일명이 표시되는 부분이 어떤 jsp 페이지에든 공통적으로 적용되어 있는 것으로 보아, 어떤 공통코드를 통해 적용되고 있음을 추측할 수 있다.

2. jsp 파일들을 몇 개 확인해보자. crm의 거의 모든 jsp에는 사용자 정의 tag인 page 영역의 PageAdmin 태그가 사용되고 있다.
`<page:PageAdmin>`

3. PageAdmin.tag 파일을 열어보면 주석에 '현재 로그인 ID가 'test'인 경우만 표시' 라는 부분이 존재하는 것을 볼 수 있다.
    - /WEB-INF/tags/util 에 정의된 GetLoginUserId.tag 를 이용하여 loginName을 구한 후,
    - 이 loginName을 주어진 조건과 비교하여 특정 작업을 수행함

4. 이 코드를 응용하면, 로그인한 특정 ID에 대해서만 특정 기능을 수행하도록 하는 코드를 jsp에서 구현할 수 있다.

---

(예) crList.jsp에 아래와 같은 코드를 추가한다면

로그인ID가 'test'일 때만 value=100으로 설정된 checkbox를 'checked'로 설정하는 코드를 추가할 수 있다.

- 필요한 taglib 참조
- jstl c:if 문으로 특정 조건을 만족할 때만 특정 javascript 구문 실행

```
<%@ taglib prefix="u" tagdir="/WEB-INF/tags/util" %>

...

<u:GetLoginUserId var="loginName"/>
<c:if test="${loginName eq 'test'}">
    <script>
        ...
        $("input[type='checkbox'][value='100']").prop("checked", true);
        ...
    </script>
</c:if>
```
> loginName='test'일 때, checkbox 중 value=100인 요소를 'checked'로 설정함

---

그러나...

---

위와 같이 작업한 후 테스트해보면 느끼겠지만, 이 기능이 제대로 동작하게 하기 위해서는 단순히 checkbox를 체크해 주는 것만으로는 부족하다.
- 기존 검색조건과 충돌나지 않아야 하고,
- 화면이 열리자 마자 검색 결과에 반영되려면 체크 된 후 '검색'버튼을 누른 것 같은 이벤트가 일어나야 하는 등

이것을 모두 jsp에서 javascript로 판별하여 처리하는 것이 불가능?하진 않겠지만 좋은 방법은 아닐 것이다.

