
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:51:16">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:51:16">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:51:16"></script>
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
			<h3 class="sub-title mB20">2018년 토정비결</h3><span class="sub" style="color:#515151;">운세서비스는 모두 무료입니다. 정확한 사주 정보를 입력하세요.</span>
			<img class="js-head-img" src="https://pic.popkontv.com/images/aspw/style/type2/bg_fortune.png" alt="올해의 토정비결" style="margin-top:5px;">
			<p class="title-type01 mT10">생년월일 입력정보<span class="sub">정확한 사주 정보를 입력하세요.</span></p>
			<form name="fortuneFrm" id="fortuneFrm" method="post" action="fortune_result.asp" role="form">
			<div class="table-type02 fortune mT10">
			<input type="hidden" name="fortuneCode" id="fortuneCode" value="0">
				<table>
					<caption>생년월일 입력정보 테이블</caption>
					<colgroup>
						<col style="width:240px">
						<col>
					</colgroup>
					<tbody>
					<tr>
						<th scope="row">이름</th>
						<td><input type="text" name="userName" id="userName" value="" class="basic" title="이름 입력" style="width:230px"></td>
					</tr>
					<tr>
						<th scope="row">성별구분</th>
						<td>
							<input type="radio" id="sex01" name="sex" class="radio-type01" value="0" checked="checked">
							<label for="sex01"><span></span>남자</label>
							<input type="radio" id="sex02" name="sex" class="radio-type01" value="1" >
							<label for="sex02" class="mL6"><span></span>여자</label>
						</td>
					</tr>
					<tr>
						<th scope="row">음력/양력</th>
						<td>
							<input type="radio" name="monthType" id="monthType1" class="radio-type01" value="0" >
							<label for="monthType1"><span></span>음력</label>
							<input type="radio" name="monthType" id="monthType0" class="radio-type01"  value="1" checked="checked">
							<label for="monthType0" class="mL6"><span></span>양력</label>
						</td>
					</tr>
					<tr>
						<th scope="row">윤달/평달</th>
						<td>
							<input type="radio" name="calType" id="calType1" value="1"  class="radio-type01" >
							<label for="calType1"><span></span>윤달</label>
							<input type="radio" name="calType" id="calType0" value="0" checked="checked" class="radio-type01">
							<label for="calType0" class="mL6"><span></span>평달</label>
						</td>
					</tr>
					<tr>
						<th scope="row">생년월일</th>
						<td>
							<div class="frm-select" style="width:80px">
								<label for="bday-year">년도</label>
								<select name="userYear" id="userYear" class="select-opt" title="년도 선택">
									<option>년도</option>

							<option value="2021" >2021년</option>

							<option value="2020" >2020년</option>

							<option value="2019" >2019년</option>

							<option value="2018" >2018년</option>

							<option value="2017" >2017년</option>

							<option value="2016" >2016년</option>

							<option value="2015" >2015년</option>

							<option value="2014" >2014년</option>

							<option value="2013" >2013년</option>

							<option value="2012" >2012년</option>

							<option value="2011" >2011년</option>

							<option value="2010" >2010년</option>

							<option value="2009" >2009년</option>

							<option value="2008" >2008년</option>

							<option value="2007" >2007년</option>

							<option value="2006" >2006년</option>

							<option value="2005" >2005년</option>

							<option value="2004" >2004년</option>

							<option value="2003" >2003년</option>

							<option value="2002" >2002년</option>

							<option value="2001" >2001년</option>

							<option value="2000" >2000년</option>

							<option value="1999" >1999년</option>

							<option value="1998" >1998년</option>

							<option value="1997" >1997년</option>

							<option value="1996" >1996년</option>

							<option value="1995" >1995년</option>

							<option value="1994" >1994년</option>

							<option value="1993" >1993년</option>

							<option value="1992" >1992년</option>

							<option value="1991" >1991년</option>

							<option value="1990" >1990년</option>

							<option value="1989" >1989년</option>

							<option value="1988" >1988년</option>

							<option value="1987" >1987년</option>

							<option value="1986" >1986년</option>

							<option value="1985" >1985년</option>

							<option value="1984" >1984년</option>

							<option value="1983" >1983년</option>

							<option value="1982" >1982년</option>

							<option value="1981" >1981년</option>

							<option value="1980" >1980년</option>

							<option value="1979" >1979년</option>

							<option value="1978" >1978년</option>

							<option value="1977" >1977년</option>

							<option value="1976" >1976년</option>

							<option value="1975" >1975년</option>

							<option value="1974" >1974년</option>

							<option value="1973" >1973년</option>

							<option value="1972" >1972년</option>

							<option value="1971" >1971년</option>

							<option value="1970" >1970년</option>

							<option value="1969" >1969년</option>

							<option value="1968" >1968년</option>

							<option value="1967" >1967년</option>

							<option value="1966" >1966년</option>

							<option value="1965" >1965년</option>

							<option value="1964" >1964년</option>

							<option value="1963" >1963년</option>

							<option value="1962" >1962년</option>

							<option value="1961" >1961년</option>

							<option value="1960" >1960년</option>

							<option value="1959" >1959년</option>

							<option value="1958" >1958년</option>

							<option value="1957" >1957년</option>

							<option value="1956" >1956년</option>

							<option value="1955" >1955년</option>

							<option value="1954" >1954년</option>

							<option value="1953" >1953년</option>

							<option value="1952" >1952년</option>

							<option value="1951" >1951년</option>

							<option value="1950" >1950년</option>

							<option value="1949" >1949년</option>

							<option value="1948" >1948년</option>

							<option value="1947" >1947년</option>

							<option value="1946" >1946년</option>

							<option value="1945" >1945년</option>

							<option value="1944" >1944년</option>

							<option value="1943" >1943년</option>

							<option value="1942" >1942년</option>

							<option value="1941" >1941년</option>

							<option value="1940" >1940년</option>

							<option value="1939" >1939년</option>

							<option value="1938" >1938년</option>

							<option value="1937" >1937년</option>

							<option value="1936" >1936년</option>

								</select>
							</div>
							<div class="frm-select" style="width:70px">
								<label for="bday-month">월</label>
								<select name="userMonth" id="userMonth" class="select-opt" title="월 선택">
									<option value="" selected>월</option>
								</select>
							</div>
							<div class="frm-select" style="width:70px">
								<label for="bday-day">일</label>
								<select name="userDay" id="userDay" class="select-opt" title="일 선택">
									<option value="" selected>일</option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">태어난시</th>
						<td>
							<div class="frm-select" style="width:230px">
								<label for="bday-hour">태어난 시</label>
								<select name="userTime" id="userTime" class="select-opt" title="일 선택">
									<option value="" selected>태어난시</option>
								</select>
							</div>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
			<div class="txt-center mT20"><button class="btn-basic sizeM" btn_fortuneSubmit>무료 운세보기</button></div>
			</form>
			<div class="gray-box mT30">
				<p class="title">이용안내</p>
				<ul class="hyphen-list">
					<li>요 금 : 무료</li>
					<li>컨텐츠 : 2021년 토정비결, 나의인생풀이, 궁합, 인연을 만나는 시기,재물운, 오늘운세, 주간운세, 월간운세, 바이오리듬, 별자리운세, 혈액형 운세</li>
				</ul>
			</div>
		</div>
		<div class="snb">
			<h3 class="snb-title">Fortune</h3>
			<ul class="js-sidemenu-active">
				<li><a class="js-btn-fortune-type" data-tp="0">2021년 토정비결</a></li>
				<li><a class="js-btn-fortune-type" data-tp="1">2021년 나의인생풀이</a></li>
				<li><a class="js-btn-fortune-type" data-tp="2">2021년 재물운</a></li>
				<li><a class="js-btn-fortune-type" data-tp="3">2021년 건강운</a></li>
				<li><a class="js-btn-fortune-type" data-tp="4">오늘의 운세</a></li>
				<li><a class="js-btn-fortune-type" data-tp="5">오늘의 별자리운세</a></li>
				<li><a class="js-btn-fortune-type" data-tp="6">오늘의 띠별운세</a></li>
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
<script type="text/javascript">
$(document).ready(function() {
});
		"use strict";
		$('#userName').focus();

		var mYear = "";
		var mMonth = "";
		var mDay = "";
		var mHour = "";


		if (mYear != ""){
			$('#userMonth').empty().append('<option value="" selected>월</option>');
			$('#userDay').empty().append('<option value="" selected>일</option>');

			var _nDate_n = new Date(mYear, mMonth-1, mDay);
			var _cDate_n = new Date(1961, 7, 10);

			if (_nDate_n > _cDate_n) {
				switch(mHour){
					case "01":
						$('#userTime').empty().append('<option value="01">자(子) 23:30 ~ 01:29</option>');
						break;
					case "02":
						$('#userTime').empty().append('<option value="02">축(丑) 01:30 ~ 03:29</option>');
						break;
					case "04":
						$('#userTime').empty().append('<option value="04">인(寅) 03:30 ~ 05:29</option>');
						break;
					case "06":
						$('#userTime').empty().append('<option value="06">묘(卯) 05:30 ~ 07:29</option>');
						break;
					case "08":
						$('#userTime').empty().append('<option value="08">진(辰) 07:30 ~ 09:29</option>');
						break;
					case "10":
						$('#userTime').empty().append('<option value="10">사(巳) 09:30 ~ 11:29</option>');
						break;
					case "12":
						$('#userTime').empty().append('<option value="12">오(午) 11:30 ~ 13:29</option>');
						break;
					case "14":
						$('#userTime').empty().append('<option value="14">미(未) 13:30 ~ 15:29</option>');
						break;
					case "16":
						$('#userTime').empty().append('<option value="16">신(申) 15:30 ~ 17:29</option>');
						break;
					case "18":
						$('#userTime').empty().append('<option value="18">유(酉) 17:30 ~ 19:29</option>');
						break;
					case "20":
						$('#userTime').empty().append('<option value="20">술(戌) 19:30 ~ 21:29</option>');
						break;
					case "22":
						$('#userTime').empty().append('<option value="22">해(亥) 21:30 ~ 23:29</option>');
						break;
					case "0" :
						$('#userTime').empty().append('<option value="0">모름</option>');
						break;
				}
			}
			else{
				switch(mHour){
					case "01":
						$('#userTime').empty().append('<option value="01">자(子) 23:00 ~ 00:59</option>');
						break;
					case "02":
						$('#userTime').empty().append('<option value="02">축(丑) 01:00 ~ 02:59</option>');
						break;
					case "04":
						$('#userTime').empty().append('<option value="04">인(寅) 03:00 ~ 04:59</option>');
						break;
					case "06":
						$('#userTime').empty().append('<option value="06">묘(卯) 05:00 ~ 06:59</option>');
						break;
					case "08":
						$('#userTime').empty().append('<option value="08">진(辰) 07:00 ~ 08:59</option>');
						break;
					case "10":
						$('#userTime').empty().append('<option value="10">사(巳) 09:00 ~ 10:59</option>');
						break;
					case "12":
						$('#userTime').empty().append('<option value="12">오(午) 11:00 ~ 12:59</option>');
						break;
					case "14":
						$('#userTime').empty().append('<option value="14">미(未) 13:00 ~ 14:59</option>');
						break;
					case "16":
						$('#userTime').empty().append('<option value="16">신(申) 15:00 ~ 16:59</option>');
						break;
					case "18":
						$('#userTime').empty().append('<option value="18">유(酉) 17:00 ~ 18:59</option>');
						break;
					case "20":
						$('#userTime').empty().append('<option value="20">술(戌) 19:00 ~ 20:59</option>');
						break;
					case "22":
						$('#userTime').empty().append('<option value="22">해(亥) 21:00 ~ 22:59</option>');
						break;
					case "0" :
						$('#userTime').empty().append('<option value="0">모름</option>');
						break;
				}
			}
		}

		//년도 변경시
		$('#userYear').on('change',function(){
			var _nDate = new Date();
			var _sIndex = $(this).prop('selectedIndex');
			var _s = '';
			var _monthCnt;

			$('#userMonth').empty().append('<option value="" selected>월</option>');
			$('#userDay').empty().append('<option value="" selected>일</option>');
			$('#userTime').empty().append('<option value="" selected>태어난시</option>');

			if (_sIndex){

				(1 < $(this).prop('selectedIndex')) ? _monthCnt = 12 : _monthCnt = _nDate.getMonth() + 1;

				for (var i = 0; i < _monthCnt; i+=1) {
					(i < 10) ? (i === 9) ? (_s += '<option value="' + (i+1) + '">' + (i+1) + '월</option>') : (_s += '<option value="' + '0' + (i+1) + '">' + '0' + (i+1) + '월</option>') : (_s += '<option value="' + '' + (i+1) + '">' + (i+1) + '월</option>');
				}

				$('#userMonth').append(_s);
			} else {
				$('#userMonth').empty().append('<option value="" selected>월</option>');
				$('#userDay').empty().append('<option value="" selected>일</option>');
				return false;
			}
		});



		//월 변경시
		$('#userMonth').on('change', function(){
			var _nDate = new Date($('#userYear').val(), parseInt($('#userMonth').val(), 10), 0);
			var _lDate = _nDate.getDate();
			var _s = '';
			var _nMonth = parseInt($('#userMonth').val(), 10);
			var _nYear = parseInt($('#userYear').val(), 10);

			$('#userDay').empty().append('<option value="" selected>일</option>');

			if (_nYear === ((new Date).getFullYear()) && _nMonth === (new Date).getMonth() + 1) { //올해 이번달인 경우는 오늘까지만 선택 가능하도록 한다.
				var _lDate = (new Date).getDate();
			}
			for (var i = 1; i <= _lDate; i+=1) {
				(i < 10) ? (_s += '<option value="' + '0' + i + '">' + '0' + i + '일</option>') : (_s += '<option value="' + i + '">' + '' + i + '일</option>')
			}
			$('#userDay').append(_s);
		});

		//일 변경시 윤달 확인
		$('#userDay').on('change', function(){
			var _nYear = parseInt($('#userYear').val(), 10);
			var _nMonth = parseInt($('#userMonth').val(), 10);
			var _nDay = parseInt($('#userDay').val(), 10);
			var _nDate = new Date(_nYear, _nMonth-1, _nDay);
			var _cDate = new Date(1961, 7, 10);
			var timeoptHtml = '';

			$('#userTime').empty().append('<option value="" selected>태어난시</option>');

			if (_nDate > _cDate) {
				timeoptHtml = '<option value="01">자(子) 23:30 ~ 01:29</option>';
				timeoptHtml += '<option value="02">축(丑) 01:30 ~ 03:29</option>';
				timeoptHtml += '<option value="04">인(寅) 03:30 ~ 05:29</option>';
				timeoptHtml += '<option value="06">묘(卯) 05:30 ~ 07:29</option>';
				timeoptHtml += '<option value="08">진(辰) 07:30 ~ 09:29</option>';
				timeoptHtml += '<option value="10">사(巳) 09:30 ~ 11:29</option>';
				timeoptHtml += '<option value="12">오(午) 11:30 ~ 13:29</option>';
				timeoptHtml += '<option value="14">미(未) 13:30 ~ 15:29</option>';
				timeoptHtml += '<option value="16">신(申) 15:30 ~ 17:29</option>';
				timeoptHtml += '<option value="18">유(酉) 17:30 ~ 19:29</option>';
				timeoptHtml += '<option value="20">술(戌) 19:30 ~ 21:29</option>';
				timeoptHtml += '<option value="22">해(亥) 21:30 ~ 23:29</option>';
				timeoptHtml += '<option value="0">모름</option>';
			} else {
				timeoptHtml = '<option value="01">자(子) 23:00 ~ 00:59</option>';
				timeoptHtml += '<option value="02">축(丑) 01:00 ~ 02:59</option>';
				timeoptHtml += '<option value="04">인(寅) 03:00 ~ 04:59</option>';
				timeoptHtml += '<option value="06">묘(卯) 05:00 ~ 06:59</option>';
				timeoptHtml += '<option value="08">진(辰) 07:00 ~ 08:59</option>';
				timeoptHtml += '<option value="10">사(巳) 09:00 ~ 10:59</option>';
				timeoptHtml += '<option value="12">오(午) 11:00 ~ 12:59</option>';
				timeoptHtml += '<option value="14">미(未) 13:00 ~ 14:59</option>';
				timeoptHtml += '<option value="16">신(申) 15:00 ~ 16:59</option>';
				timeoptHtml += '<option value="18">유(酉) 17:00 ~ 18:59</option>';
				timeoptHtml += '<option value="20">술(戌) 19:00 ~ 20:59</option>';
				timeoptHtml += '<option value="22">해(亥) 21:00 ~ 22:59</option>';
				timeoptHtml += '<option value="0">모름</option>';
			}

			$('#userTime').append(timeoptHtml);
		});


		$('#userName').on('keyup', function(){
			var regExp = /[a-z0-9]|[\[\]{}()<>?|'~!@#$%^&*-_=+,.;:\"\\]/gi;
			var value = $(this).val();
			if (regExp.test(value)) {
				alert('한글만 입력 가능합니다.');
				$(this).val(value.replace(regExp,''));
			}
			return false;
		});

		$('#fortuneFrm').on('submit', function(){


			var _userName = $('#userName').val();
			var _userBirth = new Date(parseInt($('#userYear').val(), 10), parseInt($('#userMonth').val(), 10)-1, parseInt($('#userDay').val(), 10));

			if ($.trim(_userName) === '') {
				alert('성함을 입력해 주세요');
				$('#userName').focus();
				return false;
			};

			if(!(_userBirth < (new Date))) {
				alert('생년월일을 입력해 주시기 바랍니다.');
				return false;
			};

			if ($.trim($('#userTime option:selected').val()) === '') {
				alert('태어난시를 선택해 주시기 바랍니다.');
				return false;
			};

			if(wordFilter($.trim(_userName))){
				alert('필터링');
				$('#userName').focus();
				return false;
			};

			return;
		});

		(function(val){
			var headText;
			var headImg;
			var altText;

			var getFullYear = (new Date).getFullYear();
			if (getFullYear === 2015) {
			//	getFullYear += 1;
			}


			(isNaN(val) || (val < 0 || val > 6)) && (val = 0);

			switch(val){
				case 0://토정비결
					headText =  getFullYear + "년 토정비결";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_01.png";
					altText = "토정비결";
					break;
				case 1://나의 인생풀이
					headText = getFullYear + "년 나의인생풀이";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_02.png";
					altText = "나의인생풀이";
					break;
				case 2:
					headText = getFullYear + "년 재물운";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_03.png";
					altText = "재물운";
					break;
				case 3:
					headText = getFullYear + "년 건강운";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_04.png";
					altText = "건강운";
					break;
				case 4:
					headText = "오늘의 운세";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_05.png";
					altText = "오늘의운세";
					break;
				case 5:
					headText = "오늘의 별자리운세";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_06.png";
					altText = "오늘의 별자리운세";
					break;
				case 6:
					headText = "오늘의 띠별운세";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_08.png";
					altText = "오늘의 띠별운세";

					break;
			}

			$('h3.sub-title, .js-fortune-head').text(headText);
			$('img.js-head-img').attr("src", headImg).attr("alt", altText);
			$('#fortuneCode').val(val);
			$('.js-btn-fortune-type').each(function(index){
				var _that = $(this).data('tp');
				(val !== _that) && ($(this).removeClass('on')) || ($(this).addClass('active'));
			});
			(isNaN(val)) && (val = 0);
			$.each($('.js-sidemenu-active > li'), function(index){
				if (val === index) {
					$(this).addClass('on');
				} else {
					$(this).removeClass('on');
				}
			});

		})(parseInt($.QueryString('tp'), 10));

		$('.js-btn-fortune-type').on('click', function () {
			var val = parseInt($(this).data('tp'), 10);
			(val < 0 || val > 6) && (val = 0);
			var headText;
			var headImg;
			var altText;
			var getFullYear = (new Date).getFullYear();
			if (getFullYear === 2015) {
			//	getFullYear += 1;
			}
			switch(val){
				case 0://토정비결
					headText =  getFullYear + "년 토정비결";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_01.png";
					altText = "토정비결";
					break;
				case 1://나의 인생풀이
					headText = getFullYear + "년 나의인생풀이";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_02.png";
					altText = "나의인생풀이";
					break;
				case 2:
					headText = getFullYear + "년 재물운";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_03.png";
					altText = "재물운";
					break;
				case 3:
					headText = getFullYear + "년 건강운";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_04.png";
					altText = "건강운";
					break;
				case 4:
					headText = "오늘의 운세";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_05.png";
					altText = "오늘의운세";
					break;
				case 5:
					headText = "오늘의 별자리운세";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_06.png";
					altText = "오늘의 별자리운세";
					break;
				case 6:
					headText = "오늘의 띠별운세";
					headImg = "https://pic.popkontv.com/images/aspw/common/unse_08.png";
					altText = "오늘의 띠별운세";
					break;
			}
			$('h3.sub-title, .js-fortune-head').text(headText);

			$('img.js-head-img').attr("src", headImg).attr("alt", altText);
			$(this).addClass('active');
			$('#fortuneCode').val(val);
			$('.js-btn-fortune-type').each(function(index){
				var _that = $(this).data('tp');
				(val !== _that) && ($(this).removeClass('active'));
			});
			$('#userName').focus();

			(isNaN(val)) && (val = 0);
			$.each($('.js-sidemenu-active > li'), function(index){
				if (val === index) {
					$(this).addClass('on');
				} else {
					$(this).removeClass('on');
				}
			});

		});
		$('#userYear').val('년도').attr('selected','selected');
	</script>
</body>
</html>
