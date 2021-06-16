
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:50:57">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:50:57">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:50:57"></script>
<script src="/style/common/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/plugin/swiper.min.js"></script>
<!-- 레벨 팝업 -->
<script src="/js/levelupPopup.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.popkontv.com/enm-1.0.0.js"></script>

</head>
<body>
<div class="wrap">
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

	<section class="content">
        <h3 class="sub-title">
			에듀<span class="sub">팝콘위드코인 에듀입니다.</span>
		</h3>
		<!-- HIT 컨텐츠 -->
        <div class="best-list">
            <ul class="list-type01 clfix">

                <li class="">
                    <a href="javascript:signAlert();" class="thumb hit-label" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/3/t45_19_4.png)">
                        <div class="info">
                            <span>조회수:15</span>
                        </div>
                    </a>
                    <a href="javascript:signAlert();" class="title">4강_자주 틀리는 유형 - 세부 내용 파악</a>
                </li>

                <li class="">
                    <a href="javascript:signAlert();" class="thumb hit-label" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/2/t43_19_10.png)">
                        <div class="info">
                            <span>조회수:41</span>
                        </div>
                    </a>
                    <a href="javascript:signAlert();" class="title">10강 적절한 응답 고르기</a>
                </li>

                <li class="">
                    <a href="javascript:signAlert();" class="thumb hit-label" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/2/t43_19_7.png)">
                        <div class="info">
                            <span>조회수:29</span>
                        </div>
                    </a>
                    <a href="javascript:signAlert();" class="title">7강 주제, 소재</a>
                </li>

                <li class="last-gridL">
                    <a href="javascript:signAlert();" class="thumb hit-label" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/2/t43_19_2.png)">
                        <div class="info">
                            <span>조회수:25</span>
                        </div>
                    </a>
                    <a href="javascript:signAlert();" class="title">2강 숫자 정보</a>
                </li>

            </ul>
        </div>
		<!-- HIT 컨텐츠 //-->

		<!-- 탭메뉴 -->
        <div class="clfix"></div>
        <div class="edu_cate_wrap">
            <div class="edu_main_cate">
                <ul class="main_cate_list">

				<li class="on">
					<a href="?categIDX=1">영역별영어</a>
					<div class="sub_cate_list">
						<ul>

    						<li>
    							<a href="/style/common/live/edu.asp?categIDX=1&catesIDX=1">공통</a>
    						</li>

						</ul>
					</div>
				</li>

				<li class="">
					<a href="?categIDX=2">계통수학</a>
					<div class="sub_cate_list">
						<ul>

    						<li>
    							<a href="/style/common/live/edu.asp?categIDX=2&catesIDX=2">초등</a>
    						</li>

						</ul>
					</div>
				</li>

				<li class="">
					<a href="?categIDX=4">요가</a>
					<div class="sub_cate_list">
						<ul>

    						<li>
    							<a href="/style/common/live/edu.asp?categIDX=4&catesIDX=4">요가</a>
    						</li>

						</ul>
					</div>
				</li>

				<li class="">
					<a href="?categIDX=3">잉그리스타</a>
					<div class="sub_cate_list">
						<ul>

    						<li>
    							<a href="/style/common/live/edu.asp?categIDX=3&catesIDX=3">잉그리스타</a>
    						</li>

						</ul>
					</div>
				</li>

				<li class="">
					<a href="?categIDX=5">힐링상담교육</a>
					<div class="sub_cate_list">
						<ul>

    						<li>
    							<a href="/style/common/live/edu.asp?categIDX=5&catesIDX=5">힐링상담교육</a>
    						</li>

						</ul>
					</div>
				</li>

				<li class="">
					<a href="?categIDX=6">유아영어</a>
					<div class="sub_cate_list">
						<ul>

    						<li>
    							<a href="/style/common/live/edu.asp?categIDX=6&catesIDX=6">유아영어</a>
    						</li>

						</ul>
					</div>
				</li>

                </ul>
            </div>
        </div>
        <!-- 탭메뉴 //-->

		<!-- 메인 리스트 -->
        <div id="edu-eng" class="list-content mT20">
            <ul>
				<li>

                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/1/g41_19_1.jpg)"></span>
                        <div class="txt">
                            <p class="title">공통_듣기(하)</p>
                            <p class="sub-txt">등록수 : 10개</p>
                        </div>
                        <a href="/style/common/live/edu_list.asp?categIDX=1&catesIDX=1&categoryIDX=1" class="view-all">전체보기</a>
                    </div>
                    <ul class="list-type01 five mT10">

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/1/t41_19_10.jpg)" alt="10강 유형별 듣기 총정리">
                                <div class="info">
                                    <span>조회수:167</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">10강 유형별 듣기 총정리</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/1/t41_19_9.jpg)" alt="9강 주제, 제목 찾기 유형">
                                <div class="info">
                                    <span>조회수:41</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">9강 주제, 제목 찾기 유형</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/1/t41_19_8.jpg)" alt="8강 목적 찾기 유형">
                                <div class="info">
                                    <span>조회수:56</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">8강 목적 찾기 유형</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/1/t41_19_7.jpg)" alt="7강 할 일 찾기 유형">
                                <div class="info">
                                    <span>조회수:46</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">7강 할 일 찾기 유형</a>
                        </li>

                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/1/t41_19_6.jpg)" alt="6강 주장, 의견 찾기 유형">
                                <div class="info">
                                    <span>조회수:23</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">6강 주장, 의견 찾기 유형</a>
                        </li>
</ul>
                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/2/g43_19_1.png)"></span>
                        <div class="txt">
                            <p class="title">공통_듣기(중)</p>
                            <p class="sub-txt">등록수 : 10개</p>
                        </div>
                        <a href="/style/common/live/edu_list.asp?categIDX=1&catesIDX=1&categoryIDX=2" class="view-all">전체보기</a>
                    </div>
                    <ul class="list-type01 five mT10">

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/2/t43_19_10.png)" alt="10강 적절한 응답 고르기">
                                <div class="info">
                                    <span>조회수:41</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">10강 적절한 응답 고르기</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/2/t43_19_9.png)" alt="9강 내용 일치">
                                <div class="info">
                                    <span>조회수:30</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">9강 내용 일치</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/2/t43_19_8.png)" alt="8강 도표, 특정 정보">
                                <div class="info">
                                    <span>조회수:22</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">8강 도표, 특정 정보</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/2/t43_19_7.png)" alt="7강 주제, 소재">
                                <div class="info">
                                    <span>조회수:29</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">7강 주제, 소재</a>
                        </li>

                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/2/t43_19_6.png)" alt="6강 할 일">
                                <div class="info">
                                    <span>조회수:12</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">6강 할 일</a>
                        </li>
</ul>
                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/3/g45_19_1.png)"></span>
                        <div class="txt">
                            <p class="title">공통_듣기(상)</p>
                            <p class="sub-txt">등록수 : 10개</p>
                        </div>
                        <a href="/style/common/live/edu_list.asp?categIDX=1&catesIDX=1&categoryIDX=3" class="view-all">전체보기</a>
                    </div>
                    <ul class="list-type01 five mT10">

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/3/t45_19_10.png)" alt="10강_실전 문제풀이 (4)">
                                <div class="info">
                                    <span>조회수:42</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">10강_실전 문제풀이 (4)</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/3/t45_19_9.png)" alt="9강_실전 문제풀이 (3)">
                                <div class="info">
                                    <span>조회수:22</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">9강_실전 문제풀이 (3)</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/3/t45_19_8.png)" alt="8강_실전 문제풀이 (2)">
                                <div class="info">
                                    <span>조회수:25</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">8강_실전 문제풀이 (2)</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/3/t45_19_7.png)" alt="7강_실전 문제풀이 (1)">
                                <div class="info">
                                    <span>조회수:21</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">7강_실전 문제풀이 (1)</a>
                        </li>

                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/3/t45_19_6.png)" alt="6강_자주 틀리는 유형 - 상황에 적절한 말 추론">
                                <div class="info">
                                    <span>조회수:19</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">6강_자주 틀리는 유형 - 상황에 적절한 말 추론</a>
                        </li>
</ul>
                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/4/g47_19_1.png)"></span>
                        <div class="txt">
                            <p class="title">독해 (최하)</p>
                            <p class="sub-txt">등록수 : 10개</p>
                        </div>
                        <a href="/style/common/live/edu_list.asp?categIDX=1&catesIDX=1&categoryIDX=4" class="view-all">전체보기</a>
                    </div>
                    <ul class="list-type01 five mT10">

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/4/t47_19_10.png)" alt="10강 이젠 멋지게 자신 있게 2">
                                <div class="info">
                                    <span>조회수:32</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">10강 이젠 멋지게 자신 있게 2</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/4/t47_19_9.png)" alt="9강 이젠 멋지게 자신 있게 1">
                                <div class="info">
                                    <span>조회수:17</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">9강 이젠 멋지게 자신 있게 1</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/4/t47_19_8.png)" alt="8강 꼼꼼히 보니 다시 보이는 아이들 2">
                                <div class="info">
                                    <span>조회수:16</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">8강 꼼꼼히 보니 다시 보이는 아이들 2</a>
                        </li>

                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/4/t47_19_7.png)" alt="7강 꼼꼼히 보니 다시 보이는 아이들 1">
                                <div class="info">
                                    <span>조회수:16</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">7강 꼼꼼히 보니 다시 보이는 아이들 1</a>
                        </li>

                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/1/1/4/t47_19_6.png)" alt="6강 꾸미는 말들아 놀자 2">
                                <div class="info">
                                    <span>조회수:3</span>
                                </div>
                            </a>
                            <a href="javascript:signAlert();" class="title">6강 꾸미는 말들아 놀자 2</a>
                        </li>
</ul>
				</li>
			</ul>
		</div>
		<!-- 메인 리스트 //-->
	</section>

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


</div>
</body>
</html>
