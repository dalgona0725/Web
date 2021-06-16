
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오후 12:03:26">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오후 12:03:26">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오후 12:03:26"></script>
<script src="/style/common/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/plugin/swiper.min.js"></script>
<!-- 레벨 팝업 -->
<script src="/js/levelupPopup.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.popkontv.com/enm-1.0.0.js"></script>

<script type="text/javascript">
/* s: 팝콘 알림용 팝업 */
function popOn(target) {
    var win = $(window);
    var body = $('body');
    var docuHeight = win.height();

    $('html,body').css({
        height : docuHeight,
        overflow : 'hidden',
    });

    target.fadeIn(300);
}

function popOff(target) {
    $('html,body').css({
        height : 'auto',
        overflow : 'visible',
    });

    target.fadeOut(200);
}

function popModal(poptitle, poptext, popuse) {// poptitle = 팝업 타이틀, poptext = 팝업 컨텐츠, popuse = 팝업사용여부( 1이면 사용 )

    if(popuse == 1){// 1이면 팝업 사용

        if(poptitle !== ''){// 팝업 타이틀에 내용이 있을 때,
            $('.pop_header .title').text(poptitle);//타이틀 출력
        }else{// 팝업 타이틀에 내용이 없을 때,
            $('.pop_header').css({//팝업의 header를 숨김
                display: 'none',
            });
        }
        $('.pop_content .txt').html(poptext);//팝업내용 출력

        // 팝업 실행
        popOn($('.pop_wrapper'));
    }
}
/* e: 팝콘 알림용 팝업 */
</script>
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
	<section class="content" style="min-height: 400px;">
		<h3 class="sub-title mB20">아이디/비번찾기<span class="sub">팝콘위드코인 아이디,비밀번호를 찾아드립니다.</span></h3>
		<ul class="tab-type01 mT15">
			<li class="on" data-tab="magazine-pm"onclick="javascript:location.href='finding.asp'">아이디찾기</li>
			<li data-tab="magazine-interview"onclick="javascript:location.href='finding_pw.asp'">비밀번호 찾기</li>
		</ul>
		<div class="finding clfix">
			<a href="" id="btn_danalPop" class="left phone">
				<p class="tit">휴대폰 본인 인증</p>
				<p class="txt mT40">휴대폰 인증은 본인명의 휴대폰만 가능하며 본인명의가 아닐경우 인증이 불가합니다.</p>
			</a>
			<a href="" id="btn_ipinPop" class="right ipin">
				<p class="tit">아이핀 본인인증</p>
				<p class="txt mT35">아이핀이란? 인터넷상에서 주민번호를 대신하여 아이디와 패스워드를 이용하여 본인확인을 하는 수단입니다.</p>
			</a>
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

<!-- s: 알림 팝업 -->
<div class="pop_wrapper find_alert">
    <div class="pop_common">
        <div class="pop_inner">
            <!-- 팝업 머릿글 / 제목 -->
            <div class="pop_header">
                <h2 class="title">알림 팝업 머릿글/제목</h2>
            </div>
            <div class="pop_container">
                <div class="pop_content">
                    <p class="txt">
                        알림 팝업 내용 출력.
                    </p>
                </div>
            </div>
            <div class="pop_footer">
                <div class="pop_btn_group">
                    <a href="/style/common/sign/login.asp">로그인 바로가기</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- e: 알림 팝업 -->


	<form name="form_ipin" method="post">

		<input type="hidden" name="m" value="pubmain">

		<input type="hidden" name="enc_data" value="AgAEQzY0Nodu9RTt7+DoAVJPTIRwHmYNHF9AjRHwIZNFTT1gKNJkIcnE2eRgEffOdjgjtBa3Yk3tB+DupkIbqjg/EkYqay1fKJgaUPSp3/U/+PPKfqfjY65WGYJM6jht95SvuYqJiHzSfthueEg9tkzMITXxtT5vCI9G9fLMG86py3d4JkJGKeJkFiHPZIyikuEi/HoFBKiai0I/DLclgPimeepxYsyAveQr/IpxMm8usBcadc++XipI5rRTlbC56x8Yx5QRDyDDbJOtsMfdZqYhQUpbZfxk9DpOMNS0nr3XSUvl3gxU9gfYGah4aVyxs1qOASVIu3C1BoX9sqVe/fHbd95Dm7g=">

		<input type="hidden" name="param_r1" value="">
		<input type="hidden" name="param_r2" value="">
		<input type="hidden" name="param_r3" value="">
	</form>

	<form name="vnoform" method="post">

		<input type="hidden" name="enc_data">

		<input type="hidden" name="param_r1" value="">
		<input type="hidden" name="param_r2" value="">
		<input type="hidden" name="param_r3" value="">
	</form>
	<script type="text/javascript">
		window.name ="Parent_window";
		function fnPopup(){
			window.open('', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
			document.form_ipin.target = "popupIPIN2";
			document.form_ipin.action = "https://cert.vno.co.kr/ipin.cb";
			document.form_ipin.submit();
		}
	</script>

	<form name="danalResultForm" method="post">

		<input type="hidden" name="dTID" value="" />
		<input type="hidden" name="dCI" value="" />
		<input type="hidden" name="dDI" value="" />
		<input type="hidden" name="dNAME" value="" />
		<input type="hidden" name="dIDEN" value="" />

		<input type="hidden" name="danalCheck" value="" />
	</form>


	<form name="mobilResultForm" method="post">
		<input type="hidden" name="Name" id="Name" value="" />
		<input type="hidden" name="Socialno" id="Socialno" value="" />
		<input type="hidden" name="Sex" id="Sex" value="" />
		<input type="hidden" name="Di" id="Di" value="" />
		<input type="hidden" name="mobilCheck" id="mobilCheck" value="1" />
	</form>

	<script type="text/javascript">
	var pgCheck = 'D';

	$(document).ready(function(){
		//* btn_ipin
		$('#btn_ipinPop').bind('click',function(evt){
			evt.preventDefault();
			fnPopup();
		});
		//* btn_danalPop
		$('#btn_danalPop').bind('click',function(evt){
			evt.preventDefault();
			if (pgCheck == 'M') {
				window.open("/style/common/mobilCheck/find_id/ci_web.asp", "auth_popup", "width=470,height=619,scrollbar=no");  		//모빌리언스
			} else {
				window.open("/style/common/danalCheck/find_id/ready.asp", "auth_popup", "width=470,height=619,scrollbar=no");		//다날
			}
		});
		//* end
	});
	</script>
</body>
</html>
