
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:59:48">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:59:48">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:59:48"></script>
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
		<div class="content-type02">
		<h3 class="sub-title mB20">다운로드/이용가이드<span class="sub">팝콘위드코인 사용법 및 이용가이드입니다.</span></h3>

		<h1 class="userT">설치환경</h1>
		<div class="gray-box mB20">
			<ul class="mgc_env">
				<li>지원 O/S : Microsoft Windows XP, Vista, Windows 7, Windows 8</li>
				<li>화면 색상 : 24비트 이상</li>
				<a href="https://down.popcast.co.kr/pc/magicCamera.zip"><div class="btn-download">MagicCamera 다운로드</div></a>
			</ul>
		</div>

		<h1 class="userT">설치하기</h1>
		<div class="gray-box mB20">
			<ul class="mgc_setup">
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_01.png">
				<div class="mgc_text">1. MagicCamera_Setup.exe 파일 실행</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_02.png">
				<div class="mgc_text">2. 설치시작 화면에서 다음 클릭</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_03.png">
				<div class="mgc_text">3. 이용약관을 자세히 읽으시고 동의 클릭</div></li>
			</ul>
		</div>

		<h1 class="userT">사용하기</h1>
		<div class="gray-box mB20">
			<ul class="mgc_use">
				<h2 class="userTm">스크린<span>(설정된 영역의 윈도우 화면을 송출 합니다.)</span></h2>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_04.png">
				<div class="mgc_text">1. 스크린 버튼 클릭</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_05.png">
				<div class="mgc_text">2. 영역 설정 또는 창 선택 설정 완료 후 닫기</div></li>

				<h2 class="userTm">사진<span>(사진은 JPG, GIF, PNG 형태의 사진을 추가 할 수 있습니다.)</span></h2>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_06.png">
				<div class="mgc_text">1. 사진 버튼 클릭</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_07.png">
				<div class="mgc_text">2. 열기 버튼 클릭<br>3. 사진 선택 완료 후 적용 버튼 클릭</div></li>

				<h2 class="userTm">PIP<span>(위치는 0~100까지 설정이 가능 합니다. X 위치는 가로를 설정, Y 위치는 세로위치를 설정.)</span></h2>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_08.png">
				<div class="mgc_text">1. PIP 버튼 클릭</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_09.png">
				<div class="mgc_text">2. 스크린 또는 사진 선택</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_10.png">
				<div class="mgc_text">3. 사이즈 및 위치 선택<br>4. 설정 완료 후 적용 버튼 클릭</div></li>

				 <h2 class="userTm">효과<span></span></h2>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_11.png">
				<div class="mgc_text">1. 효과 버튼 클릭</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_12.png">
				<div class="mgc_text">2. 삽입할 자막에서 글꼴, 배경색, 내용설정 완료 후 적용 버튼 클릭</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_13.png">
				<div class="mgc_text">3. 로고 파일은 열기 버튼 클릭</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_14.png">
				<div class="mgc_text">4. 로고 위치, 사이즈 설정 완료 후 적용 버튼 클릭</div></li>

				 <h2 class="userTm">설정<span>(해상도 설정은 640*480, 320*240으로 설정이 가능, 프레임은 1~60까지 설정이 가능.)</span></h2>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_15.png">
				<div class="mgc_text">1. 설정 버튼 클릭</div></li>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_16.png">
				<div class="mgc_text">2. 해상도, 프레임 설정 완료 후 적용 버튼 클릭</div></li>

				<h2 class="userTm">방송장치 설정<span>(MagicCamera 프로그램 설치 후 적용할 수 있습니다.)</span></h2>
				<li><img src="https://pic.popkontv.com/images/aspw/style/common/userGuide/img_17.png" class="mT10">
				<div class="mgc_text">1. 강냉이티비 실행 후 방송하기-> 방송장치로 이동<br>
				2. 방송장치에서 Magic Camera Capture(User Mode) 선택<br>
				3. 적용하기 버튼 눌러 내용 저장<br>
				4. 라이브 방송 탭 이동 후 방송하기 버튼을 눌러 방송시작</li>
			</ul>
		</div>
		<div class="snb">
			<h3 class="snb-title">다운/이용가이드</h3>
			<ul>
				<li class="on"><a href="/style/common/userGuide/virtualCam.asp">MagicCamera가이드</a></li>
				<li><a href="/style/common/userGuide/pc_guide.asp">PC용 방송가이드</a></li>
				<li><a href="/style/common/userGuide/mobile_guide.asp">모바일APP 방송가이드</a></li>
				<li><a href="/style/common/userGuide/download.asp">다운로드가이드</a></li>
			</ul>
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
