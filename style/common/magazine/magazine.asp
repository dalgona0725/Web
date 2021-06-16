
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:51:29">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:51:29">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:51:29"></script>
<script src="/style/common/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/plugin/swiper.min.js"></script>
<!-- 레벨 팝업 -->
<script src="/js/levelupPopup.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.popkontv.com/enm-1.0.0.js"></script>

<style>
.video-view-area .player{position:relative;width:740px;height:420px;background-size: contain;}
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
	<section class="content">
		<h3 class="sub-title">Magazine<span class="sub">팝콘위드코인 Magazine입니다.</span></h3>
        <ul class="tab-type01 mT15">
            <li class="on"><a href="/style/common/Magazine/magazine.asp?vtype=P">P.M.</a></li>
			<li ><a href="/style/common/Magazine/magazine.asp?vtype=I">Interview</a></li>
			<li ><a href="/style/common/Magazine/magazine.asp?vtype=T">뒤 Talk's</a></li>
			<li ><a href="/style/common/Magazine/magazine.asp?vtype=M">Mission</a></li>
        </ul>
		<div class="video-view-area clfix mT20">
			<a href="javascript:mainvod();">
			<div class="left">


					<div class="player" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190412161759_1.jpg)">
						<div class="detail" data-idx="677" data-vtype="P">
							<div class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 2&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#54861;&#47564;_&#45768;&#44032; &#51652;&#51676;&#47196; &#50896;&#54616;&#45716;&#44172; &#47952;&#50556;</div>
							<div class="sub">
								<span>2019-04-12 오후 4:17:54</span>
								<span>조회수 : 9,393</span>
							</div>
						</div>
					</div>


			</div>
			</a>
			<div class="right">
				<div class="banner">
					<img src="/style/type2/images/bg_magazine.png" alt="TOP MC 공식 인터뷰 MAGAZINE 내가 바로 TOP MC야!!">
				</div>
			</div>
		</div>
		<div class="radio-group txt-right mT25">

			<input type="radio" onclick="gogo(0);" id="radio01" name="mc-filter" class="radio-type01"checked="checked">
			<label for="radio01"><span></span>최신순</label>


			<input type="radio" onclick="gogo(1);" id="radio02" name="mc-filter" class="radio-type01">
			<label for="radio02"><span></span>조회순</label>


			<input type="radio" onclick="gogo(02);" id="radio03" name="mc-filter" class="radio-type01">
			<label for="radio03"><span></span>댓글순</label>

		</div>

		<div id="magazine-pm" class="list-content mT25" style="display:block">
			<ul class="list-type01 five">


					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=677&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190412161759_1.jpg)">
							<div class="info">
								<span>조회수:9393</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 2&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#54861;&#47564;_&#45768;&#44032; &#51652;&#51676;&#47196; &#50896;&#54616;&#45716;&#44172; &#47952;&#50556;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=671&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190412161602_1.jpg)">
							<div class="info">
								<span>조회수:9111</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 2&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#54392;&#47536;_&#49324;&#46993;&#50504;&#54644;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=669&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190412161530_1.jpg)">
							<div class="info">
								<span>조회수:8040</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 2&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#52152;&#48712;_&#51064;&#49373;&#51008; &#51600;&#44144;&#50892;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=667&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190412161508_1.jpg)">
							<div class="info">
								<span>조회수:6501</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 2&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#49800;&#54140;&#48380;_&#45236;&#44032; &#45320;&#51032; &#44225;&#50640; &#51104;&#49884; &#49332;&#50520;&#45796;&#45716; &#44152;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=665&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190412161446_1.jpg)">
							<div class="info">
								<span>조회수:8243</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 2&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#49707;&#46020;&#47532;_&#45224;&#51088;&#45716; &#50668;&#51088;&#47484; &#44480;&#52270;&#44172; &#54616;&#45348;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=663&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190412161413.jpg)">
							<div class="info">
								<span>조회수:7161</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 2&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#48120;&#54693;&#51060; - &#54620;&#49704;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=661&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190412160531_1.jpg)">
							<div class="info">
								<span>조회수:7198</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 2&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#46748;&#46360;_&#49436;&#50557;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=659&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190412160411_1.jpg)">
							<div class="info">
								<span>조회수:6591</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 2&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#44608;&#51116;&#55148;_&#54756;&#50612;&#51648;&#45716; &#51473; &#51077;&#45768;&#45796;.</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=657&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183616_1.jpg)">
							<div class="info">
								<span>조회수:6889</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#54861;&#47564;_&#45216;&#50500;&#46972; &#48337;&#50500;&#47532;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=655&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183549_1.jpg)">
							<div class="info">
								<span>조회수:6364</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#54392;&#47536;_&#45236;&#51068;&#51012; &#47931;&#45716;&#45796;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=653&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183458_1.jpg)">
							<div class="info">
								<span>조회수:6367</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#53364;&#47196;&#51060;_&#54620;&#49704;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=651&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183438_1.jpg)">
							<div class="info">
								<span>조회수:5996</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#50752;&#51060;&#49380;_&#51064;&#50672;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=649&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183416_1.jpg)">
							<div class="info">
								<span>조회수:6586</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#50713;&#45768;_&#52395;&#45576;&#52376;&#47100; &#45320;&#50640;&#44172; &#44032;&#44192;&#45796;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=647&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183355_1.jpg)">
							<div class="info">
								<span>조회수:6200</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#49888;&#48708;&#50648;&#53076;_&#50528;&#44032;&#53440;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=645&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183335_1.jpg)">
							<div class="info">
								<span>조회수:7170</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#49888;&#48708;&#50648;&#53076;_&#46028;&#47532;&#46020;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=643&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183310_1.jpg)">
							<div class="info">
								<span>조회수:6254</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#46972;&#46972;_&#52828;&#44396;&#46972;&#46020; &#46112; &#44152; &#44536;&#47020;&#50612;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=641&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183238_1.jpg)">
							<div class="info">
								<span>조회수:6354</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#44144;&#49692;&#44277;&#51452;_&#50500;&#47492;&#45796;&#50868; &#44053;&#49328;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=639&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190410183107.jpg)">
							<div class="info">
								<span>조회수:6304</span>
							</div>
						</a>
						<a href="" class="title">&#52376;&#45768;&#50724;&#48736; &#45432;&#47000;&#51088;&#46993; &#49884;&#51596;3 1&#54924;(&#50517;&#44396;&#51221;&#54200;) - MC&#44032;&#49688;&#51652;_&#45572;&#44396;&#50630;&#49548;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=637&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190222144944_1.png)">
							<div class="info">
								<span>조회수:5354</span>
							</div>
						</a>
						<a href="" class="title">&#52572;s &#54056;&#48128;&#47532; 12&#54868;(&#47560;&#51648;&#47561;&#54924;)_&#51221;&#50980;&#51032; &#49892;&#51333;</a>
					</li>



					<li class="mv_box">
						<a href="/style/common/magazine/magazine_view.asp?pkcode=635&vtype=P" class="thumb" style="background-image:url(https://pic.popkontv.com/board_file/magazine/fn_20190222144922_1.png)">
							<div class="info">
								<span>조회수:5368</span>
							</div>
						</a>
						<a href="" class="title">&#52572;s &#54056;&#48128;&#47532; 11&#54868;_&#54728;&#44221;&#50689;&#52509;&#51116;&#51032; &#52629;&#48373;</a>
					</li>


			</ul>
		</div>
		<input type="hidden" class="conut" id="conut">
		<div class="mT30"><button type="button" id="btn_viewMore" class="btn-list-more" data-compage="0" data-comCnt="0">더보기</button></div>
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
<script type="text/javascript" id="script2">
		$(function(){
			CommentNew(311);
		});
	</script>
<script type="text/javascript">
$('#btn_viewMore').bind('click',function(evt){

	evt.preventDefault();
	var cpage = $(this).data('compage');
	var cCnt = parseInt($(this).data('comCnt'));
	var vtype = "P";
	var stype = "0";

	$.post('magazine_ListData.asp', {vtype: vtype, compage: cpage, sortType: stype}, function(res){

		$('.list-type01').append(res);
		$('#script1').remove();
		var nn = parseInt($('.mv_box').length);
		console.log(nn);
		console.log(cCnt);

		if (nn > cCnt)
		{
			$('#btn_viewMore').hide();
		}else{

			$('#btn_viewMore').data('compage',parseInt(cpage)+1);

		}
	});

});
function gogo(cnt){
	location.href='/style/common/magazine/magazine.asp?SortType=' + cnt + '&vType=P'
}

function CommentNew(rcnt){
	rcnt = parseInt(rcnt);
	//$('#commCnt').text('댓글 '+$.formatNumber(rcnt,3)+'개');
	if (rcnt>25)
	{

		$('#btn_viewMore').data('compage','1');
		$('#btn_viewMore').data('comCnt', rcnt);
	}else{
		$('#script2').remove();
		$('#btn_viewMore').hide();
		$('#btn_viewMore').data('compage','0');
		$('#btn_viewMore').data('comCnt', rcnt);
	}
}
function mainvod(){
	var pkcode = $(".detail").data('idx');
	var vtype = $(".detail").data('vtype');
	location.href='/style/common/magazine/magazine_view.asp?pkcode='+ pkcode +'&vtype='+vtype;
}

</script>
<!-- e:wrap -->
</body>
</html>
