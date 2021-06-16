
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:52:19">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:52:19">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:52:19"></script>
<script src="/style/common/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/plugin/swiper.min.js"></script>
<!-- 레벨 팝업 -->
<script src="/js/levelupPopup.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.popkontv.com/enm-1.0.0.js"></script>

<script type="text/javascript" src="/js/plugin/jquery.number.min.js"></script>
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
			<h3 class="sub-title mB25">팝콘 (캐쉬)<span class="sub">팝콘은 시청자가 방송진행자에게 선물할 수 있는 유료 아이템입니다.</span></h3>
			<p class="tit02">팝콘 아이템 이란?</p>
			<p class="txt01 mT5">팝콘위드코인 사이트 안에서의 아이템들을 구매하실 수 있으며 다양한 컨텐츠를 이용하실 수 있습니다.<br>선물받은 팝콘은 현금으로 환전이 가능합니다.</p>
			<p class="tit02 mT20">팝콘 아이템 구매하기</p>
			<ul class="item-list4 popkon clfix">

                <li>
					<a href="#" alt="1100" name="lnk_signAlert" data-coinvalue="10">
						<div class="item_detail">
							<p class="item-title">팝콘10개</p>
							<p class="price">1,100원 (VAT포함)</p>
						</div>
                    </a>
                </li>
                <li>
                    <a href="#" alt="3300" name="lnk_signAlert" data-coinvalue="30">
                        <div class="item_detail">
                            <p class="item-title">팝콘30개</p>
                            <p class="price">3,300원 (VAT포함)</p>
                        </div>
                    </a>
                </li>
                <li>
					<a href="#" alt="5500" name="lnk_signAlert" data-coinvalue="50">
						<div class="item_detail">
							<p class="item-title">팝콘50개</p>
							<p class="price">5,500원 (VAT포함)</p>
						</div>
                    </a>
                </li>
                <li>
                    <a href="#" alt="11000" name="lnk_signAlert" data-coinvalue="100">
						<div class="item_detail">
							<p class="item-title">팝콘100개</p>
							<p class="price">11,000원 (VAT포함)</p>
						</div>
                    </a>
                </li>
                <li>
                    <a href="#" alt="33000" name="lnk_signAlert" data-coinvalue="300">
                        <div class="item_detail">
                            <p class="item-title">팝콘300개</p>
                            <p class="price">33,000원 (VAT포함)</p>
                        </div>
                    </a>
				</li>
				<a href="#" alt="55000" name="lnk_signAlert" data-coinvalue="500">
					<li>
						<div class="item_detail">
							<p class="item-title">팝콘500개</p>
							<p class="price">55,000원 (VAT포함)</p>
						</div>
					</li>
				</a>
				<li>
                    <a href="#" alt="110000" name="lnk_signAlert" data-coinvalue="1000">
                        <div class="item_detail">
                            <p class="item-title">팝콘1000개</p>
                            <p class="price">110,000원 (VAT포함)</p>
                        </div>
                    </a>
				</li>
				<li>
                    <a href="#" alt="220000" name="lnk_signAlert" data-coinvalue="2000">
                        <div class="item_detail">
                            <p class="item-title">팝콘2000개</p>
                            <p class="price">220,000원 (VAT포함)</p>
                        </div>
                    </a>
				</li>
			</ul>
			<div class="popkon-direct mT5">
				<div class="title">팝콘갯수 직접입력</div>
				<div class="form">
	                <span>
	                    <input type="text" name="manualUnit" id="manualUnit" class="basic txt-right" style="width:170px;" title="개수 입력" maxlength="7" onkeyup="this.value=number_format(this.value);">
	                    개
	                </span>
					<span>
                        <input type="text" name="manualCalc" id="manualCalc" class="basic txt-right" style="width:150px;cursor:default;" title="금액" readonly="">원 (VAT 포함)
                    </span>
					<button type="button" class="btn-buy" id="unitSubmit">구매하기</button>
				</div>
			</div>

			<div class="popkon-direct item_auto_box mT5">
			    <dl>
                    <dt>팝콘 자동충전</dt>
                    <dd>설정한 기간 동안 <span>편리하게 팝콘을 자동으로 충전</span>해주는 서비스 입니다.</dd>
                </dl>
                <div class="item_auto_btn form">

					<a href="/style/common/coin/coin_auto_buy.asp" class="btn-auto" name="lnk_signAlert">신청하기</a>

                </div>
        </div>

			<p class="tit02 mT20">팝콘으로 할 수 있는 것?</p>
			<div class="item_explain popkon">
				<ul class="num-list">
					<li>MC나 친구에게 선물할 수 있습니다. 팝콘을 선물 받은 MC는 방송하는데 큰 힘이 됩니다.</li>
					<li>사이트의 아이템들을 구매하실 수 있습니다.</li>
					<li>쇼핑몰에서 물건을 구매하실 수 있습니다.</li>
					<li>VOD서비스, 다시보기 서비스 등의 컨텐츠를 이용하실 수 있습니다.</li>
				</ul>
			</div>
			<div class="gray-box mT15" style="font-size:13px;">
				<ul>
					<li>- 구매한 팝콘의 유효기간은 구입일로부터 5년간 입니다.</li>
					<li>- 팝콘 구매/ 이용내역은 마이페이지에서 확인이 가능합니다.</li>
					<li>- 300개 이상 구매시 결제방법에 따라 보너스팝콘을 추가 제공 해드립니다. (신용카드 1%, 계좌이체 2%, 무통장입금 3%)</li>
					<li>- 팝콘구매 한도가 초과한 경우 구매가 불가합니다. (일 : 10,000개 / 월 : 300,000개)</li>
					<li>- 팝콘선물 한도가 초과한 경우 선물이 불가합니다. (일 : 95,000개 / 월 : 300,000개)</li>
					<li>- 당일 한도는 23시59분59초 / 당월 한도는 매월 말일까지 적용 됩니다.</li>
					<li>- 미성년자 가입자는 팝콘 및 유료아이템을 구매할 수 없습니다.</li>
					<li>- 법정대리인의 동의 없이 미성년자명의 결제한 아이템은 환불이 가능합니다.</li>
                    <li>- 유료팝콘은 구매일 기준 7일 이내에 청약철회가 가능합니다.<br>단, 사용하지 않은 팝콘에 대해서만 가능합니다.</li>
                    <li>- 유료팝콘의 내용이 표시ㆍ광고의 내용과 다르거나 계약내용과 다르게 이행된 경우에는 해당 유료팝콘을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회가 가능합니다.</li>
				</ul>
			</div>
		</div>
		<div class="snb">
			<h3 class="snb-title">캐쉬 충전</h3>
			<ul>
				<li class="on"><a href="/style/common/coin/popkon.asp">팝콘 (캐쉬)</a></li>
				<li><a href="/style/common/coin/event_popkon.asp">이벤트 팝콘 (캐쉬)</a></li>
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
<form name="frm" id="frm" method="post" action="https://stageaspw.popkontv.com/style/common/coin/coin_payment.asp">
	<input type="hidden" name="itemCount" id="itemCount" value="1">
	<input type="hidden" name="itemCode" id="itemCode" value="COIN">
	<input type="hidden" name="itemName" id="itemName" value="COIN">
	<input type="hidden" name="coinValue" id="coinValue" value="">
	<input type="hidden" name="listBuyerId" id="listBuyerId" value="">
	<input type="hidden" name="listBuyType" id="listBuyType" value="buy">
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$('a[name="lnk_coin"]').bind('click', function(evt){
			evt.preventDefault();
			var coinValue = $(this).data('coinvalue');

			$('#coinValue').val(coinValue);
			$('#frm').submit();
		});

		$('a[name="lnk_signAlert"]').bind('click', function(evt){
			evt.preventDefault();
			signAlert();
		});

		$('#unitSubmit').bind('click', function(evt){
			evt.preventDefault();
			var coinValue = $('#manualUnit').val();

			if(coinValue === ''){
				alert('구매할 팝콘의 수량을 입력해 주세요');
				$('#manualUnit').focus();
			}else{
				var arrUnit = coinValue.split(',');
				var arrLenth = arrUnit.length;
				var oriNumber = '';

				for (var i=0; i < arrLenth; i++){
					oriNumber = oriNumber + arrUnit[i]
				}

				var	parseUnit = parseInt(oriNumber);

				if(parseUnit % 10 !== 0){
					alert('직접구매 수량은 10개 단위로 입력 가능합니다.')
					$('#manualUnit').focus();
				}else{
					$('#coinValue').val(parseUnit);
					$('#frm').submit();
				}
			}
		});

		$('#manualUnit').keydown(function(event){
			if (!((event.keyCode < 58 && event.keyCode > 47) || (event.keyCode < 106 && event.keyCode > 95)|| event.keyCode == 8 || event.keyCode == 46 || event.keyCode == 37 || event.keyCode == 39)) {
				event.preventDefault();
				event.returnValue = false;
			}
		});

		$('#manualUnit').keyup(function(){
			var manualUnit = $('#manualUnit').val();
			var regFirstLimit = /(^0+)/;

			if(regFirstLimit.test(manualUnit)){
				$('#manualUnit').val('');
			}

			var arrUnit = manualUnit.split(',');
			var arrLenth = arrUnit.length;
			var oriNumber = '';

			for (var i=0; i < arrLenth; i++){
				oriNumber = oriNumber + arrUnit[i]
			}

			var	parseUnit = parseInt(oriNumber);

			if(parseUnit !== '' && parseUnit !== undefined){
				var calcTotal;
				calcTotal = parseUnit * 110;

				/*
				if(calcTotal > 10000000){
					alert('최대 구매갯수는 90,900개(1000만원)을 넘을 수 없습니다.');
					$('#manualUnit').val('');
					$('#manualCalc').val(0);
				}else{
					$('#manualCalc').val($.number(calcTotal));
				}
				*/

				$('#manualCalc').val($.number(calcTotal));
			}else{
				$('#manualCalc').val(0);
			}
		});

		number_format = function(num) {
			num = num.replace(/,/g, "")
			var num_str = num.toString()
			var result = ''

			for(var i=0; i<num_str.length; i++) {
				var tmp = num_str.length-(i+1)

				if(i%3==0 && i!=0) result = ',' + result
				result = num_str.charAt(tmp) + result
			}

			return result;
		}
	});
</script>

	<!-- 계좌번호 변경 안내 팝업 -->

</body>
</html>
