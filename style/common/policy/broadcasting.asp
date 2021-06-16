
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오후 12:01:14">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오후 12:01:14">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오후 12:01:14"></script>
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
			<li><a href="privacy.asp">개인정보처리방침</a></li>
			<li><a href="youthpolicy.asp">청소년보호정책</a></li>
			<li><a href="watch.asp">시청기준안내</a></li>
			<li class="on"><a href="broadcasting.asp">방송기준안내</a></li>
		</ul>
		<div class="title-link mT10">
			<h3 class="sub-title">방송기준 안내</h3>
		</div>
		<div class="policy-content">
			<p>팝콘위드코인는 방송통신심의 위원회 규칙 <strong>'정보통신에 관한 심의규정'</strong>을 준수합니다.
			즐겁고, 건전한 방송문화 정착을 위해 팝콘위드코인의 방송기준을 알려드리오니 참고하시기 바랍니다.<br><br>
			아래와 같은 내용이 포함된 방송은 허용되지 않습니다.
			</p>

			<h3>1. 저작권 및 권리 침해 방송</h3>
			<ol>
				<li>① 저작권이 해결되지 않는 스포츠 중계, 영화, 드라마와 같은 방송중계</li>
				<li>② 회사 또는 개인이 명백한 저작권을 가지고 있는 컨텐츠</li>
				<li>③ 권한 없이 타인의 사진,영상 등을 게재하여 타인의 인격권을 현저히 침해하는 내용</li>
			</ol>

			<h3>2. 음란물 및 노출방송</h3>
			<ol>
				<li>① 음란(포르노,야동)물 동영상이나 혐오스러운 행위나 사진, 동영상 등을 방송</li>
				<li>② 방송중에 과도한 신체노출을 하는 경우</li>
				<li>③ 과도한 노출을 하지 않더라도 성행위를 묘사하거나 표현할 경우</li>
				<li>④ 위의 규정되어 있지 아니하더라도 아래에 명기된 팝콘위드코인 내부규정 위반 및 금지되는 내용</li>
			</ol>
			<h3>3. 특정단체 / 지역 / 종교/ 인종차별</h3>
			<ol>
				<li>① 계좌 입금 요구 등의 사기 행위 등이 포함 된 내용</li>
				<li>② 비방할 목적으로 공연히 타인을 모욕하거나 사실 또는 허위사실을 적시하여 타인의 명예를 훼손하는 방송</li>
			</ol>
			<h3>4. 사기,욕설 방송</h3>
			<ol>
				<li>① 차별용어를 직접적으로 언급하거나 비하 및 편견을 조장하는 내용</li>
				<li>② 이름이나 신분, 사회적 지위, 인격 등에 해를 끼쳐 피해를 입히는 내용</li>
			</ol>
			<h3>5. 기타</h3>
			<ol>
				<li>① 법령에 위반되는 위법행위를 조장하여 법질서를 해할우려가 있는 내용</li>
				<li>② 고의적으로 서비스 운영을 방해하거나, 불공정한 경쟁을 유도하는등의 서비스제공에 악영향을 끼치는 경우</li>
				<li>③ 그외 정보통신망 이용촉진 및 정보보호등에 관한 법률을 위반하는 내용</li>
			</ol>
			<h3>위반 시 제재 내용</h3>
			<ol>
				<li>정상 사용자를 보호하기 위하여 방송기준 위반 시 팝콘위드코인 내부규정에 따라 서비스 이용제한 제재가 가해집니다.</li>
				<li class="mT10">▶ 1회 적발시</li>
				<li>1. 원칙: 경고 및 이용정지 (방송진행, 시청 자격 박탈) 최소 1일 (위반 사실이 중할 경우 정지기간이 늘어날 수 있음)</li>
				<li>예외: 위반 사실이 중 할 경우 (예: 저작권 침해방송-도방 등) 자체 심의 위원회에 회부, 중징계 조치가 취해질 수 있습니다. (중징계 내용의 예: 영구정지 및 회원자격 박탈)</li>
				<li>2. 기존에 환전 신청한 팝콘의 경우 지급 거절</li>
				<li>3. 환전신청을 하지 않은 팝콘이 있는 경우에 방송정지 기간 중에 환전신청 할 수 없음</li>
				<li>4. 방송기준을 위배하여 적발된 당일에 선물 받은 팝콘의 경우 환전신청 불가하며, 해당 팝콘 환전액은 선정한 업체에 기부, 후원하겠습니다.</li>
				<li>▶ 2회 적발 시(누적)</li>
				<li>1. 원칙: 경고 및 이용정지 최소 3일 (위반 사실이 중할 경우 정지기간이 늘어날 수 있음)</li>
				<li>예외: 위반 사실이 중 할 경우 자체 심의 위원회에 회부, 중징계 조치가 취해질 수 있습니다. (중징계 내용의 예: 영구정지 및 회원자격 박탈)</li>
				<li>2. 기존에 환전 신청한 팝콘의 경우 지급 거절</li>
				<li>3. 환전신청을 하지 않은 팝콘이 있는 경우에 방송정지 기간 중에 환전신청 할 수 없음</li>
				<li>4. 방송기준을 위배하여 적발된 당일에 선물 받은 팝콘의 경우 환전신청 불가하며, 해당 팝콘 환전액은 선정한 업체에 기부, 후원하겠습니다.</li>
				<li>5. 위의 내용에 따라 1회 적발 시에도 경고 및 한시적인 방송정지 등 유예조치를 취하는 대신에, 중징계 조치 (영구정지, 회원자격 박탈 포함)가 취해질 수 있으며, 또한 사안에 따라 팝콘위드코인에 의해 고소, 고발 당할 수 있음</li>
				<li>▶ 3회 적발 시 (누적)</li>
				<li>1. 원칙: 경고 및 이용정지 최소 7일 (위반 사실이 중할 경우 정지기간이 늘어날 수 있음)</li>
				<li>예외: 위반 사실이 중 할 경우 자체 심의 위원회에 회부, 중징계 조치가 취해질 수 있습니다. (중징계 내용의 예: 영구정지 및 회원자격 박탈)</li>
				<li>2. 기존에 환전 신청한 팝콘의 경우 지급 거절</li>
				<li>3. 환전신청을 하지 않은 팝콘이 있는 경우에 방송정지 기간 중에 환전신청 할 수 없음</li>
				<li>4. 방송기준을 위배하여 적발된 당일에 선물 받은 팝콘의 경우 환전신청 불가하며, 해당 팝콘 환전액은 선정한 업체에 기부, 후원하겠습니다.</li>
				<li>5. 위의 내용에 따라 1회 적발 시에도 경고 및 한시적인 방송정지 등 유예조치를 취하는 대신에, 중징계 조치 (영구정지, 회원자격 박탈 포함)가 취해질 수 있으며, 또한 사안에 따라 팝콘위드코인에 의해 고소, 고발 당할 수 있습니다.</li>
				<li>▶ 음란물 방송 및 불법정보에 대한 단속 및 형사고발조치</li>
				<li>1. 모니터링을 통한 단속 및 규제 외에 형사고발조치를 진행하여 강력대응 할 것임을 알려드립니다.</li>
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
