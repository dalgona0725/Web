
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오후 12:00:50">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오후 12:00:50">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오후 12:00:50"></script>
<script src="/style/common/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/plugin/swiper.min.js"></script>
<!-- 레벨 팝업 -->
<script src="/js/levelupPopup.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.popkontv.com/enm-1.0.0.js"></script>

</head>
<body>
<!-- s:wrap -->
<div class="wrap">
	<!-- s:header -->
        <header class="header">
    <div class="inner">
        <div class="gnb clfix">
            <ul class="left">
                <li><a href="/style/common/coin/popkon.asp">팝콘충전</a></li>
                <li><a href="/style/common/item/item_fullView.asp">아이템구매</a></li>
            </ul>
            <ul class="right">

                <!-- 비로그인 영역 시작 -->
                <li class="gnb-login"><a href="/style/common/sign/login.asp">로그인</a></li>
                <li class="gnb-join"><a href="/style/common/join/default.asp">회원가입</a></li>
                <li class="gnb-find"><a href="/style/common/private/finding.asp">아이디/비번찾기</a></li>


                    <li><a href="/style/common/event/popkoncoin.asp">팝콘코인</a></li>

                <li><a href="/style/common/event/event_close_list.asp">이벤트</a></li>
                <li><a href="/style/common/customer/customer_list.asp">고객센터</a></li>
                <!-- 비로그인 영역 종료 //-->

            </ul>
        </div>
        <div class="logo-area">
            <h1 class="logo">
                <a href="/" >
                    <img src="https://pic.popkontv.com/images/aspw/P-00139/common/siteLogo_190.png" alt="logo">
                </a>
            </h1>
            <div class="search">
                <form id="mcSearchForm" name="mcSearchForm" action="/style/common/live/ranking_total.asp" method="post">
                    <input type="hidden" id="searchType" name="searchType" value="0">
                    <input type="hidden" id="rankCode" name="rankCode" value="4">
                    <input type="text" name="searchStr" id="searchStr" class="form-search" placeholder="검색할 MC의 닉네임" maxlength="8">
                    <button type="button" id="btnSearchMC" class="btn-search">검색</button>
                </form>
            </div>
            <a href="/style/common/userGuide/download.asp" class="download-link">
                PC/Mobile<br>프로그램 다운로드<div class="go">GO</div>
            </a>
        </div>

        <div class="lnb">
            <ul class="clfix">

                <li><a href="/style/common/live/live.asp">Live</a></li>

                <!-- <li><a href="/style/common/live/ucc.asp">UCC</a></li> -->
                <li><a href="/style/common/webtoon/webtoon.asp">웹툰</a></li>
                <li><a href="/style/common/live/edu.asp">에듀</a></li>
                <li><a href="/style/common/fortune/fortune.asp">운세</a></li>
                <li><a href="/style/common/magazine/magazine.asp">Magazine</a></li>

                <li><a href="/style/common/event/popkoncoin.asp">팝콘코인</a></li>

            </ul>
        </div>
    </div>
</header>
<script type="text/javascript">
    $(document).ready(function(){
        $('#btnSearchMC').bind('click',function(evt){
            evt.preventDefault();

            if( $('#searchStr').val().length < 2 ){
                alert('MC닉네임을 2~8자 이내로 입력하세요');
                $('#searchStr').focus();
            }else if( wordFilter($('#searchStr').val())){
                $('#searchStr').val('');
                $('#searchStr').focus();
            }else{
                $('#mcSearchForm').submit();
            }
        });

        $('#searchStr').bind('keydown',function(evt){
            var keyCode = evt.which;

            if(keyCode==13){
                evt.preventDefault();

                if( $('#searchStr').val().length < 2 ){
                    alert('MC닉네임을 2~8자 이내로 입력하세요');
                    $('#searchStr').focus();
                }else if( wordFilter($('#searchStr').val())){
                    $('#searchStr').val('');
                    $('#searchStr').focus();
                }else{
                    $('#mcSearchForm').submit();
                }
            }
        });
    });
</script>

	<!-- e:header -->
	<!-- s:content -->
	<section class="content">
		<ul class="tab-type01 mT15">
			<li><a href="serviceUse.asp">이용약관</a></li>
			<li class="on"><a href="privacy.asp">개인정보처리방침</a></li>
			<li><a href="youthpolicy.asp">청소년보호정책</a></li>
			<li><a href="watch.asp">시청기준안내</a></li>
			<li><a href="broadcasting.asp">방송기준안내</a></li>
		</ul>
		<div class="title-link mT10">
			<h3 class="sub-title">개인정보 처리방침</h3>
		</div>
		<div class="policy-content">

			<h3>1. 수집하는 개인정보의 항목 및 수집방법</h3>
			<ol>
			<li><b>가. 수집하는 개인정보의 항목</b></li>
			<li>회사는 원활한 서비스 제공을 위하여 다음과 같은 정보를 수집하고 있습니다. </li>
			<ol>
			<li>첫째, 회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 당시 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.</li>
			<li>&lt;일반 회원가입&gt;</li>
			<li>- 성명, 생년월일,성별, 아이디, 비밀번호, 닉네임, 연락처(휴대폰 번호)</li>
			<li>&lt;실명확인 회원가입 : 선택적 주민번호/아이핀 가입&gt;</li>
			<li>- 성명, 실명인증값, 아이핀 회원은 아이핀 번호, 생년월일, 성별, 아이디, 비밀번호, 닉네임, 연락처(휴대폰 번호), 가입인증정보</li>
			<li>둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.</li>
			<li>- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록</li>
			<li>셋째, 팝콘위드코인 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용시 또는 이벤트 응모 과정에서 회원 가입시 수집하지 않았던 개인정보를 추가 수집할 때에 이용자들에게 고지하고 동의를 받는 경우에 다음과 같은 정보들을 수집 할 수 있습니다.</li>
			<li>- 이벤트 응모로 인한 개인정보 수집 시에는 추가 수집에 동의를 하는 경우에만 수집하며 이벤트 별로 수집하는 정보가 달라질 수 있습니다.</li>
			<li>- 수집하는 정보에 대해서는 이벤트 별로 별도로 공지합니다.</li>
			<li>넷째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.</li>
			<li>- 신용카드 결제시: 카드사명, 카드번호 등</li>
			<li>- 휴대전화 결제시: 이동전화번호, 이동 통신사, 결제승인번호 등</li>
			<li>- 계좌이체시: 은행명, 계좌번호 등</li>
			<li>- 상품권 이용시: 상품권 번호</li>
			<li>다섯째, 종량제 결제 서비스를 이용하는 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다. </li>
			<li> - 결제 등을 위해 불가피하게 필요한 경우 주민등록번호, 휴대폰 번호, 통신사 정보 등 </li>
			</ol>
			<li><b>나. 개인정보 수집방법</b></li>
			<ol>
			<li>회사는 다음과 같은 방법으로 개인정보를 수집합니다.</li>
			<li>- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 환불 요청</li>
			<li>- 협력회사로부터의 제공</li>
			<li>- 생성정보 수집 툴을 통한 수집</li>
			</ol>
			</ol>

			<h3>2. 개인정보의 수집 및 이용목적</h3>
			<ol>
			<li><b>가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</b></li>
			<li>컨텐츠 제공, 특정 맞춤 서비스 제공, 물품배송 또는 청구서 등 발송, 본인인증</li>
			<li><b>나. 회원관리</b></li>
			<li>회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 이용약관 위반 회원의 부정 이용 및 연동티비(팝콘티비와 연동되어 팝콘티비를 시청할 수 있는 개인 인터넷방송 플랫폼 일체)를 이용한 우회적인 이용방지와 비인가 사용방지, 가입의사 확인, 가입 및 가입횟수 제한, 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달, 회원탈퇴 의사의 확인</li>
			<li><b>다. 신규 서비스 개발 및 마케팅•광고에의 활용</b></li>
			<li>신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성 확인, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 접속빈도 파악, 회원의 서비스이용에 대한 통계</li>
			</ol>

			<h3>3. 개인정보의 공유 및 제공</h3>
			<ol>
			<li>회사는 이용자들의 개인정보를 "2. 개인정보의 수집목적 및 이용목적"에서 고지한 범위내에서 사용하며, 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.</li>
			<li>- 이용자들이 사전에 공개에 동의한 경우</li>
			<li>- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
			</ol>

			<h3>4. 개인정보의 취급위탁</h3>
			<ol>
			<li>회사는 향상된 서비스 제공을 위하여 아래와 같이 개인정보를 위탁하고 있으며, 위탁받은 업체가 정보통신망법에 따라 개인정보를 안전하게 처리하도록 필요한 사항을 규정하고 있습니다.</li>
			<li class="mT5 mB5 table_policy">
				<table>
					<colgroup>
						<col width="33%">
						<col width="/">
						<col width="33%">
					</colgroup>
					<tr>
						<th>수탁업체</th>
						<th>위탁업무 내용</th>
						<th>개인정보의 보유 및 이용기간</th>
					</tr>
					<tr>
						<td>더이앤엠㈜</td>
						<td>서비스 제공을 위한 시스템 개발 및 운영, 테스트</td>
						<td rowspan="6">회원 탈퇴시 혹은 위탁 계약 종료시까지</td>
					</tr>
					<tr>
						<td>더이앤엠㈜</td>
						<td>데이터 보관 및 공유</td>
					</tr>
					<tr>
						<td>㈜버라이어티웍스</td>
						<td>고객상담지원,서비스 운영지원, 결제처리(무통장 입금)</td>
					</tr>
					<tr>
						<td>㈜다날, NICE평가정보㈜</td>
						<td>회원 가입 시 본인확인 및 인증</td>
					</tr>
					<tr>
						<td>모빌리언스, 갤럭시아커뮤니케이션즈㈜, 페이원큐</td>
						<td>결제처리(휴대폰, 무통장 입금, 계좌이체, 신용카드, 지류상품권 및 기타 결제수단) 및 결제도용 방지</td>
					</tr>

				</table>
			</li>
			</ol>

			<h3>5. 개인정보의 보유 및 이용기간</h3>
			<ol>
			<li>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</li>
			<li><b>가. 회사 내부 방침에 의한 정보보유 사유</b></li>
			<li>- 부정이용기록 보존 이유 : 부정 이용 방지</li>
			<li>보존기간 : 1년</li>
			<li><b>나. 관련법령에 의한 정보보유 사유</b></li>
			<li>상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.</li>
			<li>- 계약 또는 청약철회 등에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
			<li>보존기간 : 5년</li>
			<li>- 대금결제 및 재화 등의 공급에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
			<li>보존기간 : 5년</li>
			<li>- 소비자의 불만 또는 분쟁처리에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
			<li>보존기간 : 3년</li>
			<li>- 본인확인에 관한 기록 보존 이유 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률</li>
			<li>보존기간 : 6개월</li>
			<li>- 웹사이트 방문기록 보존 이유 : 통신비밀보호법</li>
			<li>보존기간 : 3개월</li>
			</ol>

			<h3>6. 개인정보 파기절차 및 방법</h3>
			<ol>
			<li>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다.회사의 개인정보 파기절차 및 방법은 다음과 같습니다.</li>
			<li><b>가. 파기절차</b></li>
			<li>- 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조)일정 기간 저장된 후 파기됩니다.</li>
			<li>- 동 개인정보는 법률에 의한 경우가 아니고서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.</li>
			<li><b>나. 파기방법</b></li>
			<li>- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</li>
			<li>- 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. </li>
			</ol>

			<h3>7. 이용자 및 법정대리인의 권리와 그 행사방법</h3>
			<ol>
			<li>- 이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며, 회사의 개인정보의 처리에 동의하지 않는 경우 동의를 거부하거나 가입해지(회원탈퇴)를 요청하실 수 있습니다. 다만, 그러한 경우 서비스의 일부 또는 전부 이용이 어려울 수 있습니다.</li>
			<li>- 이용자 혹은 만 14세 미만 아동의 개인정보 조회, 수정을 위해서는 '개인정보변경'(또는 '회원정보수정' 등)을, 가입해지(동의철회)를 위해서는 "회원탈퇴"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.</li>
			<li>- 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.</li>
			<li>- 이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3 자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다. </li>
			<li>- 회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 "5. 개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</li>
			</ol>

			<h3>8. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</h3>
			<ol>
			<li><b>가. 쿠키란?</b></li>
			<li>- 회사는 개인화되고 맞춤화된 서비스를 제공하기 위해서 이용자의 정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용합니다.</li>
			<li>- 쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에게 보내는 아주 작은 텍스트 파일로 이용자 컴퓨터의 하드디스크에 저장됩니다. 이후 이용자가 웹 사이트에 방문할 경우 웹 사이트 서버는 이용자의 하드 디스크에 저장되어 있는 쿠키의 내용을 읽어 이용자의 환경설정을 유지하고 맞춤화된 서비스를 제공하기 위해 이용됩니다.</li>
			<li>- 쿠키는 개인을 식별하는 정보를 자동적/능동적으로 수집하지 않으며, 이용자는 언제든지 이러한 쿠키의 저장을 거부하거나 삭제할 수 있습니다.</li>
			<li><b>나. 회사의 쿠키 사용 목적</b></li>
			<li>이용자들이 방문한 팝콘위드코인 의 각 서비스와 개인 방송 서비스에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 편집, 이용자 규모 등을 파악하여 이용자에게 광고를 포함한 최적화된 맞춤형 정보를 제공하기 위해 사용합니다. </li>

			<li><b>다. 쿠키의 설치/운영 및 거부</b></li>
			<li>- 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.</li>
			<li>- 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 팝콘위드코인 일부 서비스는 이용에 어려움이 있을 수 있습니다.</li>
			<li>- 쿠키 설치 허용 여부를 지정하는 방법(Internet Explorer의 경우)은 다음과 같습니다.</li>
			<ol>
			<li>① [도구] 메뉴에서 [인터넷 옵션]을 선택합니다.</li>
			<li>② [개인정보 탭]을 클릭합니다.</li>
			<li>③ [개인정보취급 수준]을 설정하시면 됩니다.</li>
			</ol>
			</ol>

			<h3>9. 개인정보의 기술적/관리적 보호 대책</h3>
			<ol>
			<li>회사는 이용자들의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.</li>
			<li><b>가. 비밀번호 암호화</b></li>
			<li>팝콘위드코인 회원 아이디(ID)의 비밀번호는 암호화되어 저장 및 관리되고 있어 본인만이 알고 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 한해서만 가능합니다.</li>
			<li><b>나. 해킹 등에 대비한 대책</b></li>
			<li>팝콘위드코인는 해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다.
			개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있으며, 암호화통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다.
			그리고 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, 기타 시스템적으로 보안성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.</li>
			<li><b>다. 취급 직원의 최소화 및 교육</b></li>
			<li>회사의 개인정보관련 취급 직원은 담당자에 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하여 정기적으로 갱신하고 있으며, 담당자에 대한 수시 교육을 통하여 팝콘위드코인개인정보취급방침의 준수를 항상 강조하고 있습니다. </li>
			<li><b>라. 개인정보보호전담기구의 운영</b></li>
			<li>그리고 사내 개인정보보호전담기구 등을 통하여 팝콘위드코인 개인정보취급방침의 이행사항 및 담당자의 준수여부를 확인하여 문제가 발견될 경우 즉시 수정하고 바로 잡을 수 있도록 노력하고 있습니다. </li>
			단, 이용자 본인의 부주의나 인터넷상의 문제로 ID, 비밀번호, 주민등록번호 등 개인정보가 유출되어 발생한 문제에 대해 회사는 일체의 책임을 지지 않습니다.</li>
			</ol>

			<h3>10. 개인정보관리책임자 및 담당자의 연락처</h3>
			<ol>
			<li>귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.</li>
			<ol>
			<li>관리 책임자 이름: 신종성</li>
			<li>소속: 플랫폼사업부</li>
			<li>연락처: 02-3273-0545</li>
			<li>E-mail: nabi0152@redburn.co.kr</li>
			<li>개인정보/청소년보호 관리</li>
			<li>담당자 이름: 지태홍</li>
			<li>소속: 서비스전략사업부</li>
			<li>연락처: 02-3273-0545</li>
			<li>E-mail: jdclub11@redburn.co.kr</li>
			</ol>
			<li>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</li>
			<li>- 개인정보침해신고센터 (www.118.or.kr / 118)</li>
			<li>- 정보보호마크인증위원회 (www.eprivacy.or.kr / 02-580-0533~4)</li>
			<li>- 대검찰청 첨단범죄수사과 (www.spo.go.kr / 02-3480-2000)</li>
			<li>- 경찰청 사이버테러대응센터 (www.ctrc.go.kr / 02-392-0330)</li>
			</ol>

			<h3>11. 기타</h3>
			<ol>
			<li>팝콘위드코인에 링크되어 있는 웹사이트들이 개인정보를 수집하는 행위에 대해서는 본 "팝콘위드코인 개인정보취급방침"이 적용되지 않음을 알려 드립니다. 또한 팝콘위드코인모바일서비스에서의 개인정보 보호에 대한 상세한 내용은 "팝콘위드코인모바일 개인정보보호 정책"에서 확인하실 수 있습니다.
			</li>
			</ol>

			<h3>12. 고지의 의무</h3>
			<ol>
			<li>현 개인정보취급방침 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지의 '공지사항'을 통해 고지할 것입니다. 다만, 개인정보의 수집 및 활용, 제3자 제공 등과 같이 이용자 권리의 중요한 변경이 있을 경우에는 최소 30일 전에 고지합니다.</li>
			<li>- 공고일자 : 2012년 10월 09일</li>
			<li>- 시행일자 : 2012년 10월 09일</li>
			</ol>

		</div>
	</section>
	<!-- e:content -->
	<!-- s:footer -->

<footer class="footer mT30">
    <div class="notice">
        <div class="inner">
            <div class="notice-view clfix">
                <a href="/style/common/customer/customer_list.asp" class="title">공지사항</a>
                <ul class="view-content">

                </ul>
                <a href="/style/common/customer/customer_list.asp" class="more">+더보기</a>
            </div>
        </div>
    </div>
    <div class="all-service">
        <div class="inner clfix">
            <div class="col">
                <h3 class="title"><strong>Live</strong></h3>
                <ul class="menu-list">
                    <li><a href="/style/common/live/ranking_total.asp">인기순위</a></li>
                    <li><a href="/style/common/live/ranking_live.asp">실시간순위</a></li>
                    <li><a href="/style/common/coin/popkon.asp">팝콘구매</a></li>
                    <li><a href="/style/common/item/item_fullView.asp">아이템</a></li>
                </ul>
            </div>
            <div class="col">
                <h3 class="title"><strong>UCC</strong></h3>
                <ul class="menu-list">
                    <li><a href="/style/common/live/ucc.asp?catCode=1">실시간이슈 UCC</a></li>
                    <!--li><a href="/style/common/live/ucc.asp?catCode=2">유머 UCC</a></li//-->
                </ul>
            </div>
            <div class="col">
                <h3 class="title"><strong>웹툰</strong></h3>
                <ul class="menu-list">
                    <li><a href="/style/common/webtoon/webtoon.asp?catCode=3">코믹 웹툰</a></li>
                    <li><a href="/style/common/webtoon/webtoon.asp?catCode=4">정보 웹툰</a></li>
                </ul>
            </div>
            <div class="col">
                <h3 class="title"><strong>에듀</strong></h3>
                <ul class="menu-list">
                    <li><a href="/style/common/live/edu.asp?catCode=19">영역별영어</a></li>
                    <li><a href="/style/common/live/edu.asp?catCode=20">계통수학</a></li>
                    <li><a href="/style/common/live/edu.asp?catCode=8">잉그리스타</a></li>
                    <li><a href="/style/common/live/edu.asp?catCode=7">힐링 상담교육</a></li>
                    <li><a href="/style/common/live/edu.asp?catCode=9">유아영어</a></li>
                </ul>
            </div>
            <div class="col">
                <h3 class="title"><strong>다운로드/이용가이드</strong></h3>
                <ul class="menu-list">
                    <li><a href="/style/common/userGuide/popcaster_guide.asp">PC 팝캐스터 방송가이드</a></li>
                    <li><a href="/style/common/userGuide/mobile_guide.asp">모바일APP 방송가이드</a></li>
                    <li><a href="https://down.popcast.co.kr/popplayer/download.asp?st=%uD31D%uCF58%uC704%uB4DC%uCF54%uC778&sc=P-00139">응용프로그램 다운로드</a></li>
                </ul>
            </div>

            <div class="btn-shortcuts">
                <a href="javascript:signAlert();" class="report"><span>장애 및<br>버그신고</span></a>
                <a href="/style/common/customer/customer_list.asp" class="customer"><span>고객센터</span></a>
                <a href="/style/common/userGuide/solution.asp" class="popcast"><span>POPCAST</span></a>
            </div>
        </div>
    </div>
    <div class="fnb">
        <div class="inner clfix">
            <ul class="nav-list left">
                <li><a href="/style/common/policy/serviceUse.asp">이용약관</a></li>
                <li><a href="/style/common/policy/privacy.asp">개인정보처리방침</a></li>
                <li><a href="/style/common/policy/youthpolicy.asp">청소년보호정책</a></li>
                <li><a href="/style/common/policy/watch.asp">시청기준안내</a></li>
                <li><a href="/style/common/policy/broadcasting.asp">방송기준안내</a></li>
            </ul>
            <ul class="nav-list right">
                <li><a href="/style/common/customer/customer_list.asp">고객센터</a></li>
                <li><a href="/style/common/userGuide/virtualCam.asp">다운로드/이용가이드</a></li>
            </ul>
        </div>
    </div>
    <div class="copyright">
        <div class="inner clfix">
            <a href="/" class="logo">
                <img src="https://pic.popkontv.com/images/aspw/P-00139/common/siteLogo_190.png" alt="logo">
            </a>
            <div class="txt">
                <p>사업자등록번호 : 603-81-50424 <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=6038150424" target="_blank" class="ftc_link">사업자 정보확인</a> | 통신판매업신고번호 : 제 2019-서울강남-03303호</p>
                <p>대표이사 : 신환률, 김대권 | 주소 : 서울시 강남구 논현로 842, 압구정빌딩 8층 | 회사명 : 더이앤엠(주)</p>
                <p>고객센터 : 1599-7035 | 무통장입금문의 : 02-6238-5000 | E-MAIL : asp@theenm.com</p>
                <p>호스팅서비스 사업자 : 효성ITX</p>
                <p>Copyright ⓒpokonwithcoin. All Rights reserved.</p>
            </div>
        </div>
    </div>
    <!--
    <div class="copyright">
        <div class="inner clfix">
            <a href="#" class="logo"></a>
            <div class="txt">
                THE E&M 대표: 양성휘<br>
                사업자번호: 603-81-50424    |   서울특별시 금천구 디지털로 9길 68, 9층 (가산동, 대륭포스트타워5차)<br>
                Copyright ⓒ THE E&M. All rights reserved.
            </div>
        </div>
    </div>
    //-->
</footer>

<!--SA:.24 / PC:P-00139 / MC:00001 / CC:00001 / RA:175.196.87.148 / SN:stageaspw.popkontv.com / -->


<script language="JavaScript">
// 사업자등록번호 조회
function companyNumOpen(companyNum) {
	if (companyNum != '') {
		var url =
		"http://www.ftc.go.kr/bizCommPop.do?wrkr_no="+companyNum;
		window.open(url, "bizCommPop", "width=750, height=700;");
	} else {
		alert('사업자 정보가 확인되지 않습니다.');
	}
}
</script>


	<!-- e:footer -->
</div>
<!-- e:wrap -->
</body>
</html>
