
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:52:43">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:52:43">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:52:43"></script>
<script src="/style/common/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/plugin/swiper.min.js"></script>
<!-- 레벨 팝업 -->
<script src="/js/levelupPopup.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.popkontv.com/enm-1.0.0.js"></script>

<script src='https://pic.popkontv.com/assets/js/chat/chat-animation.js'></script>
<script type="text/javascript" src="/js/plugin/jquery.number.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//플래시 무비 초기세팅값
		$('.playBtnOn').show();
		$('.playBtnOff').hide();
		$('.showImg').show();
	});

	//플래시 무비 재생하기
	function moviePlay(playMode, popkonType, coinvalue){
		if( playMode == "on" ){
			$('#popPlayer_'+popkonType).css('z-index', '0');
			$('.playBtnOn:eq('+popkonType+')').hide();
			$('.playBtnOff:eq('+popkonType+')').show();
			$('.showImg:eq('+popkonType+')').hide();
			chatanimation($("#popPlayer_"+popkonType), 360, 'coin', coinvalue, function(){
				moviePlay('off', popkonType, coinvalue)
			});
		}else{
			$('#popPlayer_'+popkonType).css('z-index', '-1');
			$('.playBtnOn:eq('+popkonType+')').show();
			$('.playBtnOff:eq('+popkonType+')').hide();
			$('.showImg:eq('+popkonType+')').show();
		}
	}
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
	<section class="content snb_content">
		<div class="content-type02">
			<h3 class="sub-title mB25">이벤트팝콘 (캐쉬)<span class="sub">이벤트팝콘은 시청자가 방송진행자에게 선물할 수 있는 유료 아이템입니다.</span></h3>
			<p class="tit02">카라멜/스위트/어니언팝콘(캐쉬) 이란?</p>
			<p class="txt01 mT5">해당 팝콘은 캐쉬/아이템으로 충전하여 방송을 진행하는 회원(MC)에게 선물이 가능합니다.<br>종류에 따라 각각 다른 플래쉬 효과가 노출됩니다.</p>
			<p class="tit02 mT20">이벤트 팝콘 구매하기</p>
			<div class="event-item mT7">

			    <div class="item-box">
			        <div class="swf">
						<span class="btn-play playBtnOn" style="z-index:2;cursor:pointer;" onclick="moviePlay('on','0', 'CCOIN');"><img src="https://pic.popkontv.com/images/aspw/common/popkon/item_play.png" alt="재생" /></span>
						<span class="btn-play playBtnOff" style="z-index:2;cursor:pointer;" onclick="moviePlay('off','0', '');" style="display:none;"><img src="https://pic.popkontv.com/images/aspw/common/popkon/item_pause.png" alt="일시정지" /></span>
						<img src="https://pic.popkontv.com/images/aspw/common/popkon/c_popkon.png" alt="카라멜팝콘" class="showImg" />
						<div id="coinPlayer">
							<div id="popPlayer_0" style="position:absolute;top:12px;left:-65px;z-index:-1"></div>
						</div>
			        </div>
			        <div class="info">
			            <p class="name">카라멜팝콘</p>
			            <p class="each">팝콘5,050개<span>묶음</span></p>
			            <p class="price">555,500원(VAT포함)</p>
			            <div class="direct">
                            <input type="text" name="itemCount0" id="itemCount0" class="basic txt-right" title="개수 입력" maxlength="2" value="1" onkeyup="numCheck(this.id);">개
                            <button type="button" name="lnk_signAlert" id="lnk_signAlert" class="btn-buy" data-coinCode="CCOIN" data-idCode="0" data-coinName="카라멜" data-coinvalue="5050">구매하기</button>
                        </div>
			        </div>
			    </div>

			    <div class="item-box">
			        <div class="swf">
						<span class="btn-play playBtnOn" style="z-index:2;cursor:pointer;" onclick="moviePlay('on','1', 'SCOIN');"><img src="https://pic.popkontv.com/images/aspw/common/popkon/item_play.png" alt="재생" /></span>
						<span class="btn-play playBtnOff" style="z-index:2;cursor:pointer;" onclick="moviePlay('off','1', '');" style="display:none;"><img src="https://pic.popkontv.com/images/aspw/common/popkon/item_pause.png" alt="일시정지" /></span>
						<img src="https://pic.popkontv.com/images/aspw/common/popkon/s_popkon.png" alt="스위트팝콘" class="showImg" />
						<div id="coinPlayer">
							<div id="popPlayer_1" style="position:absolute;top:12px;left:-65px;z-index:-1"></div>
						</div>
			        </div>
			        <div class="info">
			            <p class="name">스위트팝콘</p>
			            <p class="each">팝콘1,275개<span>묶음</span></p>
			            <p class="price">140,250원(VAT포함)</p>
			            <div class="direct">
                            <input type="text" name="itemCount1" id="itemCount1" class="basic txt-right" title="개수 입력" maxlength="2" value="1" onkeyup="numCheck(this.id);">개
                            <button type="button" name="lnk_signAlert" id="lnk_signAlert" class="btn-buy" data-coinCode="SCOIN" data-idCode="1" data-coinName="스위트" data-coinvalue="1275">구매하기</button>
                        </div>
			        </div>
			    </div>

			    <div class="item-box">
			        <div class="swf">
						<span class="btn-play playBtnOn" style="z-index:2;cursor:pointer;" onclick="moviePlay('on','2', 'ACOIN');"><img src="https://pic.popkontv.com/images/aspw/common/popkon/item_play.png" alt="재생" /></span>
						<span class="btn-play playBtnOff" style="z-index:2;cursor:pointer;" onclick="moviePlay('off','2', '');" style="display:none;"><img src="https://pic.popkontv.com/images/aspw/common/popkon/item_pause.png" alt="일시정지" /></span>
						<img src="https://pic.popkontv.com/images/aspw/common/popkon/o_popkon.png" alt="어니언팝콘" class="showImg" />
						<div id="coinPlayer">
							<div id="popPlayer_2" style="position:absolute;top:12px;left:-65px;z-index:-1"></div>
						</div>
			        </div>
			        <div class="info">
			            <p class="name">어니언팝콘</p>
			            <p class="each">팝콘465개<span>묶음</span></p>
			            <p class="price">51,150원(VAT포함)</p>
			            <div class="direct">
                            <input type="text" name="itemCount2" id="itemCount2" class="basic txt-right" title="개수 입력" maxlength="2" value="1" onkeyup="numCheck(this.id);">개
                            <button type="button" name="lnk_signAlert" id="lnk_signAlert" class="btn-buy" data-coinCode="ACOIN" data-idCode="2" data-coinName="어니언" data-coinvalue="465">구매하기</button>
                        </div>
			        </div>
			    </div>

			</div>
			<div class="gray-box mT15">
                <ul class="hyphen-list">
                    <li>구매한 팝콘의 <span class="point">유효기간은 구입일로부터 5년간</span> 입니다.</li>
                    <li>선물한 팝콘은 사용취소 및 환불이 어려우니 신중하게 선물하여 주세요.</li>
                    <li>팝콘 구매/ 이용내역은 마이페이지에서 확인이 가능합니다.</li>
					<li>팝콘구매 한도가 초과한 경우 구매가 불가합니다. (일 : 10,000개 / 월 : 300,000개)</li>
					<li>팝콘선물 한도가 초과한 경우 선물이 불가합니다. (일 : 95,000개 / 월 : 300,000개)</li>
					<li>당일 한도는 23시59분59초 / 당월 한도는 매월 말일까지 적용 됩니다.</li>
					<li>미성년자 가입자는 팝콘 및 유료아이템을 구매할 수 없습니다.</li>
					<li>법정대리인의 동의 없이 미성년자명의 결제한 아이템은 환불이 가능합니다.</li>
                    <li>유료팝콘은 구매일 기준 7일 이내에 청약철회가 가능합니다.<br>단, 사용하지 않은 팝콘에 대해서만 가능합니다.</li>
                    <li>유료팝콘의 내용이 표시ㆍ광고의 내용과 다르거나 계약내용과 다르게 이행된 경우에는 해당 유료팝콘을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회가 가능합니다.</li>
                </ul>
            </div>
			<p class="tit02 mT20">카라멜/스위트/어니언팝콘소개</p>
			<ul class="hyphen-list mT7">
			    <li>카라멜,스위트,어니언팝콘은 종류에 따라 각각 다른 플래쉬 효과를 노출합니다.</li>
                <li>카라멜팝콘 1개는 일반 팝콘 5050개로 100두산에 해당하는 갯수 입니다.</li>
                <li>스위트팝콘 1개는 일반 팝콘 1275개로 50두산에 해당하는 갯수 입니다.</li>
                <li>어니언팝콘 1개는 일반 팝콘 465개로 30두산에 해당하는 갯수 입니다.</li>
			</ul>
		</div>
		<div class="snb">
			<h3 class="snb-title">캐쉬 충전</h3>
			<ul>
				<li><a href="/style/common/coin/popkon.asp">팝콘 (캐쉬)</a></li>
				<li class="on"><a href="/style/common/coin/event_popkon.asp">이벤트 팝콘 (캐쉬)</a></li>
				<li><a href="/style/common/coin/luxury_popkon.asp">럭셔리 팝콘 (캐쉬)</a></li>
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
<form name="frm_listUp" id="frm_listUp" method="post" action="">
	<input type="hidden" name="itemCount" id="itemCount" value="0">
	<input type="hidden" name="itemCode" id="itemCode" value="">
	<input type="hidden" name="itemName" id="itemName" value="">
	<input type="hidden" name="coinValue" id="coinValue" value="">
	<input type="hidden" name="listBuyerId" id="listBuyerId" value="">
	<input type="hidden" name="listBuyType" id="listBuyType" value="">
</form>
<script type="text/javascript">
	function numCheck(id) {
		$('#' + id).val($('#' + id).val().replace(/[^0-9]/gi, ''));
	}

	$(document).ready(function(){
		var regExp_coin = /^\d{1,5}/;

		$('.btn-buy').bind('click', function(evt) {
			evt.preventDefault();

			if (this.name == 'lnk_signAlert') {
				signAlert();
			}

			if (this.name == 'lnk_coin') {
				var buyType = 'buy';
				var buyCode = $(this).data('coincode');
				var buyName = $(this).data('coinname');
				var coinValue = $(this).data('coinvalue');
				var idCodeNumber = $(this).data('idcode');
				var idCode = "#itemCount"+idCodeNumber;
				var itemCnt = $(idCode).val();
				var usersid = '';
				var itemCount = itemCnt;

				$("#itemCount").val(itemCount);
				$("#itemCode").val(buyCode);
				$("#listBuyType").val(buyType);
				$('#listBuyerId').val(usersid);
				$('#itemName').val(buyName);
				$('#coinValue').val(coinValue);

				if( !regExp_coin.test($('#itemCount').val()) || $('#itemCount').val() < 1 ){
					alert('구매 수량을 입력하세요.');
					$(idCode).focus();
				}else if($('#itemCount').val() > 10){
					alert('최대구매수량은 10개 입니다.');
				}else{
					var buyTP = $("#listBuyType").val();

					$('#frm_listUp').attr('action','https://stageaspw.popkontv.com/style/common/coin/coin_payment.asp');
					$('#frm_listUp').submit();
				}
			}
		});
	});
</script>
</body>
</html>
