
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:59:25">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:59:25">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:59:25"></script>
<script src="/style/common/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/plugin/swiper.min.js"></script>
<!-- 레벨 팝업 -->
<script src="/js/levelupPopup.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.popkontv.com/enm-1.0.0.js"></script>

<style>
/* 팝캐스터 이용 가이드 */
.popcaster_guide{padding-top:30px}
.popcaster_guide table{width:100%;table-layout:fixed}
.popcaster_guide table th,
.popcaster_guide table td{height:22px;font-size:14px;color:#050505;text-align:center;border-bottom:1px solid #f2f2f2;vertical-align:middle}
.popcaster_guide table th:first-child,
.popcaster_guide table td:first-child{width:100px}
.popcaster_guide thead th{font-weight:bold;background:#f2f2f2}

.popcaster_guide .set_info{margin-bottom:40px}
.popcaster_guide .set_info h5{font-size:16px;font-weight:bold;color:#050505;margin-bottom:15px}

.popcaster_guide .guide_step_list .guide_num{display:inline-block;font-size:14px;color:#fff;width:40px;height:22px;line-height:22px;margin-right:10px;background:#00a4a6;text-align:center}
.popcaster_guide .guide_step_list .ico_plus{display:inline-block;width:21px;height:21px;background:#323232;color:#9c9c9c;text-align:center;line-height:21px;vertical-align:top}
.popcaster_guide .guide_step_list ol>li{margin-top:40px}
.popcaster_guide .guide_step_list ol>li:first-child{margin-top:0}
.popcaster_guide .guide_step_list ol>li h6{font-size:16px;font-weight:bold;color:#050505;margin-bottom:20px}
.popcaster_guide .guide_step_list ol>li p{font-size:14px;color:#040404;line-height:22px;margin-bottom:10px}
.popcaster_guide .guide_step_list ol>li>div{}
.popcaster_guide .guide_step_list ol>li>div img{float:left}
.popcaster_guide .guide_step_list ol>li>div ul{margin-left:392px}
.popcaster_guide .guide_step_list ol>li>div ul li{margin-top:20px;font-size:14px;color:#040404;line-height:22px;padding-left:55px;position:relative}
.popcaster_guide .guide_step_list ol>li>div ul li .guide_num{position:absolute;top:0;left:0}
.popcaster_guide .guide_step_list ol>li>div ul li:first-child{margin-top:0}
</style>
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
		<h3 class="sub-title mB20">PC 팝캐스터 방송가이드<span class="sub">팝콘위드코인 사용법 및 이용가이드입니다.</span></h3>


    <div class="popcaster_guide">
                    <div class="set_info">
                        <h5>시스템 설치사양</h5>
                        <table>
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>설치 최소사양</th>
                                    <th>설치 권장사양</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>OS</td>
                                    <td>윈도우 7이상</td>
                                    <td>윈도우 7이상</td>
                                </tr>
                                <tr>
                                    <td>CPU</td>
                                    <td>I5</td>
                                    <td>I7</td>
                                </tr>
                                <tr>
                                    <td>RAM</td>
                                    <td>8GB</td>
                                    <td>16GB</td>
                                </tr>
                                <tr>
                                    <td>HDD</td>
                                    <td>128GB</td>
                                    <td>128GB</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="guide_step_list">
                        <ol>
                            <li>
                                <h6>1. 팝콘TV 팝캐스터 실행</h6>
                                <p><span class="guide_num">01</span> 팝캐스터 설치 후 실행하시면 로그인 창이 나타납니다. 로그인 후 프로그램 이용이 가능합니다.</p>
                                <img src="https://pic.popkontv.com/images/www/userGuide/images/popcaster_guide_img01.png" alt="팝콘TV 팝캐스터 실행">
                            </li>
                            <li class="img_left">
                                <h6>2. 방송정보 설정</h6>
                                <div class="clfix">
                                    <img src="https://pic.popkontv.com/images/www/userGuide/images/popcaster_guide_img02.png" alt="방송정보 설정">
                                    <ul>
                                        <li><span class="guide_num">02</span>방송제목을 입력하세요.</li>
                                        <li><span class="guide_num">03</span>방송공지(입장 안내 멘트)를 입력하세요.</li>
                                        <li><span class="guide_num">04</span>방송 특성에 맞는 방송 카테고리를 선택하세요.</li>
                                        <li><span class="guide_num">05</span>최대 시청인원을 설정하세요.</li>
                                        <li><span class="guide_num">06</span>방송 형태에 따라 성인방송 체크를 확인하세요.</li>
                                        <li><span class="guide_num">07</span>송출 될 방송 비디오 해상도를 설정해주세요.</li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img_left">
                                <h6>3. 비디오 장치 설정</h6>
                                <div class="clfix">
                                    <img src="https://pic.popkontv.com/images/www/userGuide/images/popcaster_guide_img03.png" alt="비디오 장치 설정">
                                    <ul>
                                        <li><span class="guide_num">08</span>설치된 비디오 장치(캠, 캠 프로그램)를 선택 후<br>
                                        우측 <span class="ico_plus">+</span> 버튼을 눌러주세요.</li>
                                    </ul>
                                </div>
                                <div class="clfix mT40">
                                    <img src="https://pic.popkontv.com/images/www/userGuide/images/popcaster_guide_img04.png" alt="비디오 장치 설정">
                                    <ul>
                                        <li><span class="guide_num">09</span>등록된 캠이 노출 될 영역을 설정해주세요.
                                        <br>(1번 영역은 전체영역)</li>
                                        <li><span class="guide_num">10</span>등록된 캠의 내부 설정을 확인해주세요.<br>
                                        (해상도 및 노출)</li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img_left">
                                <h6>4. 오디오 장치 설정</h6>
                                <div class="clfix">
                                    <img src="https://pic.popkontv.com/images/www/userGuide/images/popcaster_guide_img05.png" alt="오디오 장치 설정">
                                    <ul>
                                        <li>
                                            <span class="guide_num">11</span> 설치된 오디오 장치(마이크)및 PC 기본 사운드<br>
                                            캡쳐를 선택 후 우측 <span class="ico_plus">+</span> 버튼을 눌러주세요.<br>
                                            * PC 기본 사운드 캡쳐 : PC에서 송출되는<br>
                                            사운드 송출(마이크 사운드 제외)
                                        </li>
                                    </ul>
                                </div>
                                <div class="clfix">
                                    <img src="https://pic.popkontv.com/images/www/userGuide/images/popcaster_guide_img06.png" alt="오디오 장치 설정">
                                    <ul>
                                        <li><span class="guide_num">12</span>등록된 오디오 장치 사운드 출력을 알맞게<br>
                                        설정해주세요.</li>
                                    </ul>
                                </div>
                            </li>
                            <li class="img_left">
                                <h6>5. 방송 시작</h6>
                                <div class="clfix">
                                    <img src="https://pic.popkontv.com/images/www/userGuide/images/popcaster_guide_img07.png" alt="방송 시작">
                                    <ul>
                                        <li><span class="guide_num">13</span>방송시작 버튼을 눌러 방송을 시작하세요.</li>
                                        <li>
                                            <span class="guide_num">14</span>
                                            방송시작 후 녹화버튼을 클릭하면 방송영상이<br>
                                            개인 PC에 저장됩니다.<br>
                                            * 방송정보>녹화폴더 지정된 경로에 저장됩니다.
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ol>
                    </div>
                </div>

		<div class="snb">
			<h3 class="snb-title">다운/이용가이드</h3>
			<ul>
			  <li class="on"><a href="/style/common/userGuide/virtualCam.asp">PC 팝캐스터 방송가이드</a></li>
				<li><a href="/style/common/userGuide/virtualCam.asp">MagicCamera가이드</a></li>
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
