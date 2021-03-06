### 고객 요청 통계

> '통계정보' 메뉴엔 없는 통계 정보가 필요할 때

> 일회성, 감사용, 행동 패턴 파악용

- 고객 요청 통계는 기존에 crm의 '통계정보' 메뉴에 구비되어 있지 않은 유형의 통계 결과가 필요할 때 받게 되는 요청이다. 주로 어떤 조건을 만족시키는 고객들의, 특정 화면들 또는 기능들에 대한 조회 및 사용 기록 등을 요구하는 경우가 많으며 일회성으로 제공하고 끝나는 경우엔 상황실에서 운영db에 접속하여 통계 query를 수행하고 그 결과를 정리해서 전달하면 되지만 자주, 반복적으로 사용해야 할 통계라면 '통계정보'에 새로운 메뉴로 추가하는 것을 추천한다.

- 주로 통계 대상이 되는 정보는 **고객의 사용 log** 이기 때문에, hdb에 있는 `CUST_SCR_INFO` 또는 `CUST_TR_INFO` 를 이용하는 경우가 대다수이다. 다만 이 두 테이블에 저장되는 raw data는 그 양이 매우 방대하기 때문에 장 중에 운영 hdb에서 바로 통계 query를 수행하는 등의 부하가 큰 작업은 _지양_ 하는 것이 좋다. 또한 유지 기간은 '최근 1년' 정도로 길지 않으므로 통계를 낼 수 있는 대상 기간도 제한적임을 요청자에게 사전에 미리 공지해야 한다.

- 따라서 이러한 요청을 처리하기 위해 추천하는 방식은 **hdb로부터 필요한 만큼만 raw data를 분할 저장**한 뒤 **개발 kc_crm db에 업로드하여 query를 수행하는 방식**이다. 이렇게 하면 kc_crm에 있는 고객의 부가 정보와의 연계도 용이하고, 완벽한 query를 준비하여 상황실에 가서 운영 db에 수행해야 한다는 부담을 줄일 수 있기 때문에 여러모로 편리하다.

- 정형화된 요청이 존재하지 않으므로 그때그때 요구가 있을 때마다 수행하여 결과를 제공하면 된다. 고객 사용 패턴의 파악, 또는 감사 자료로의 활용 등 중요한 목적에 따른 요청일 경우가 많으므로 적절한 시간 내 작업할 수 있도록 작업 패턴에 익숙해 지는 것이 좋다.