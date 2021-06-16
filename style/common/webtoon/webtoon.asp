
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:50:14">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:50:14">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:50:14"></script>
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
        <h3 class="sub-title">웹 툰<span class="sub">팝콘위드코인 웹툰입니다.</span></h3>
        <div class="best-list">
            <ul class="list-type01 clfix">
                <!---웹툰 Large---->


                            <li>
                                <a href="javascript:signAlert();" class="thumb hit-label" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/6/t6_3_8.jpg)"alt="8화 빠른 전환..">
                                    <div class="info">
                                        <span>조회수:37</span>
                                    </div>
                                </a>
                                <a href="javascript:signAlert();" class="title">8화 빠른 전환..</a>
                            </li>


                            <li>
                                <a href="javascript:signAlert();" class="thumb hit-label" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/3/t3_3_2.jpg)"alt="2화 독도는 우리땅">
                                    <div class="info">
                                        <span>조회수:118</span>
                                    </div>
                                </a>
                                <a href="javascript:signAlert();" class="title">2화 독도는 우리땅</a>
                            </li>


                            <li>
                                <a href="javascript:signAlert();" class="thumb hit-label" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/2/t2_3_15.jpg)"alt="15화 엔조이">
                                    <div class="info">
                                        <span>조회수:153</span>
                                    </div>
                                </a>
                                <a href="javascript:signAlert();" class="title">15화 엔조이</a>
                            </li>


                            <li>
                                <a href="javascript:signAlert();" class="thumb hit-label" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_16.jpg)"alt="16화 배째">
                                    <div class="info">
                                        <span>조회수:224</span>
                                    </div>
                                </a>
                                <a href="javascript:signAlert();" class="title">16화 배째</a>
                            </li>


            </ul>
        </div>
		<div class="clfix mT20">
			<ul class="tab-type01 left">
				<li class="on" ><a href="/style/common/webtoon/webtoon.asp?catCode=3">코믹</a></li>
				<li ><a href="/style/common/webtoon/webtoon.asp?catCode=4">정보</a></li>
			</ul>
		</div>
        <div id="comic-toon" class="list-content mT20" style="display:block">
            <ul>
                <li>
            <!-- 회차별 보기 -->

                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/g1_3_1.jpg)"></span>
                        <div class="txt">
                            <p class="title">차차나아지겠지</p>
                            <p class="sub-txt">등록수 : 20개</p>
                        </div>
                        <a href="/style/common/webtoon/webtoon_list.asp?grpcode=1&catcode=3" class="view-all">전체보기</a>
                    </div>

					<!-- //회차별 보기 -->

					<!---웹툰 Small---->
                    <ul class="list-type01 five mT10">
                        <li>
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_20.jpg)" alt="20화 후유증">
                                <div class="info">
                                    <span>조회수:1,544</span>
                                </div>
                            </a>
                            <a href="" class="title">20화 후유증</a>
                        </li>



                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_19.jpg)" alt="19화 동기">
                                <div class="info">
                                    <span>조회수:1,260</span>
                                </div>
                            </a>
                            <a href="" class="title">19화 동기</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_18.jpg)" alt="18화 차직딩">
                                <div class="info">
                                    <span>조회수:409</span>
                                </div>
                            </a>
                            <a href="" class="title">18화 차직딩</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_17.jpg)" alt="17화 미스터리">
                                <div class="info">
                                    <span>조회수:364</span>
                                </div>
                            </a>
                            <a href="" class="title">17화 미스터리</a>
                        </li>


                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_16.jpg)" alt="16화 배째">
                                <div class="info">
                                    <span>조회수:224</span>
                                </div>
                            </a>
                            <a href="" class="title">16화 배째</a>
                        </li>
                        </ul>
                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/2/g2_3_1.jpg)"></span>
                        <div class="txt">
                            <p class="title">차차좋아지겠지</p>
                            <p class="sub-txt">등록수 : 20개</p>
                        </div>
                        <a href="/style/common/webtoon/webtoon_list.asp?grpcode=2&catcode=3" class="view-all">전체보기</a>
                    </div>

					<!-- //회차별 보기 -->

					<!---웹툰 Small---->
                    <ul class="list-type01 five mT10">
                        <li>
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/2/t2_3_20.jpg)" alt="20화 싸움의 진화">
                                <div class="info">
                                    <span>조회수:377</span>
                                </div>
                            </a>
                            <a href="" class="title">20화 싸움의 진화</a>
                        </li>



                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/2/t2_3_19.jpg)" alt="19화 데이트">
                                <div class="info">
                                    <span>조회수:362</span>
                                </div>
                            </a>
                            <a href="" class="title">19화 데이트</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/2/t2_3_18.jpg)" alt="18화 차차좋아지겠지">
                                <div class="info">
                                    <span>조회수:329</span>
                                </div>
                            </a>
                            <a href="" class="title">18화 차차좋아지겠지</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/2/t2_3_17.jpg)" alt="17화 결혼준비">
                                <div class="info">
                                    <span>조회수:277</span>
                                </div>
                            </a>
                            <a href="" class="title">17화 결혼준비</a>
                        </li>


                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/2/t2_3_16.jpg)" alt="16화 사육">
                                <div class="info">
                                    <span>조회수:131</span>
                                </div>
                            </a>
                            <a href="" class="title">16화 사육</a>
                        </li>
                        </ul>
                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/3/g3_3_1.jpg)"></span>
                        <div class="txt">
                            <p class="title">차차의사생활</p>
                            <p class="sub-txt">등록수 : 20개</p>
                        </div>
                        <a href="/style/common/webtoon/webtoon_list.asp?grpcode=3&catcode=3" class="view-all">전체보기</a>
                    </div>

					<!-- //회차별 보기 -->

					<!---웹툰 Small---->
                    <ul class="list-type01 five mT10">
                        <li>
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/3/t3_3_20.jpg)" alt="20화 숙취">
                                <div class="info">
                                    <span>조회수:371</span>
                                </div>
                            </a>
                            <a href="" class="title">20화 숙취</a>
                        </li>



                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/3/t3_3_19.jpg)" alt="19화 투모로우">
                                <div class="info">
                                    <span>조회수:265</span>
                                </div>
                            </a>
                            <a href="" class="title">19화 투모로우</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/3/t3_3_18.jpg)" alt="18화 뻑">
                                <div class="info">
                                    <span>조회수:246</span>
                                </div>
                            </a>
                            <a href="" class="title">18화 뻑</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/3/t3_3_17.jpg)" alt="17화 5월">
                                <div class="info">
                                    <span>조회수:221</span>
                                </div>
                            </a>
                            <a href="" class="title">17화 5월</a>
                        </li>


                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/3/t3_3_16.jpg)" alt="16화 힘들어">
                                <div class="info">
                                    <span>조회수:118</span>
                                </div>
                            </a>
                            <a href="" class="title">16화 힘들어</a>
                        </li>
                        </ul>
                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/4/g4_3_1.jpg)"></span>
                        <div class="txt">
                            <p class="title">괭씨의 나른한 세상</p>
                            <p class="sub-txt">등록수 : 20개</p>
                        </div>
                        <a href="/style/common/webtoon/webtoon_list.asp?grpcode=4&catcode=3" class="view-all">전체보기</a>
                    </div>

					<!-- //회차별 보기 -->

					<!---웹툰 Small---->
                    <ul class="list-type01 five mT10">
                        <li>
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/4/t4_3_20.jpg)" alt="20화 더위도 끄덕치 않는 무적의 그들!!!!!">
                                <div class="info">
                                    <span>조회수:327</span>
                                </div>
                            </a>
                            <a href="" class="title">20화 더위도 끄덕치 않는 무적의 그들!!!!!</a>
                        </li>



                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/4/t4_3_19.jpg)" alt="19화 리얼 고양이는........!!!!!">
                                <div class="info">
                                    <span>조회수:273</span>
                                </div>
                            </a>
                            <a href="" class="title">19화 리얼 고양이는........!!!!!</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/4/t4_3_18.jpg)" alt="18화 유람선의 재발견??????!!!!!!!!">
                                <div class="info">
                                    <span>조회수:221</span>
                                </div>
                            </a>
                            <a href="" class="title">18화 유람선의 재발견??????!!!!!!!!</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/4/t4_3_17.jpg)" alt="17화 동생 친구의 반응-_-??">
                                <div class="info">
                                    <span>조회수:184</span>
                                </div>
                            </a>
                            <a href="" class="title">17화 동생 친구의 반응-_-??</a>
                        </li>


                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/4/t4_3_16.jpg)" alt="16화 효과적인 알람소리??????!!!!">
                                <div class="info">
                                    <span>조회수:91</span>
                                </div>
                            </a>
                            <a href="" class="title">16화 효과적인 알람소리??????!!!!</a>
                        </li>
                        </ul>
                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/5/g5_3_1.jpg)"></span>
                        <div class="txt">
                            <p class="title">그녀의 일상</p>
                            <p class="sub-txt">등록수 : 20개</p>
                        </div>
                        <a href="/style/common/webtoon/webtoon_list.asp?grpcode=5&catcode=3" class="view-all">전체보기</a>
                    </div>

					<!-- //회차별 보기 -->

					<!---웹툰 Small---->
                    <ul class="list-type01 five mT10">
                        <li>
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/5/t5_3_20.jpg)" alt="20화 대화">
                                <div class="info">
                                    <span>조회수:603</span>
                                </div>
                            </a>
                            <a href="" class="title">20화 대화</a>
                        </li>



                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/5/t5_3_19.jpg)" alt="19화 싸움">
                                <div class="info">
                                    <span>조회수:379</span>
                                </div>
                            </a>
                            <a href="" class="title">19화 싸움</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/5/t5_3_18.jpg)" alt="18화 고구마">
                                <div class="info">
                                    <span>조회수:601</span>
                                </div>
                            </a>
                            <a href="" class="title">18화 고구마</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/5/t5_3_17.jpg)" alt="17화 졸업앨범">
                                <div class="info">
                                    <span>조회수:289</span>
                                </div>
                            </a>
                            <a href="" class="title">17화 졸업앨범</a>
                        </li>


                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/5/t5_3_16.jpg)" alt="16화 체중계님">
                                <div class="info">
                                    <span>조회수:199</span>
                                </div>
                            </a>
                            <a href="" class="title">16화 체중계님</a>
                        </li>
                        </ul>
                    <div class="user-detail">
                        <span class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/6/g6_3_1.jpg)"></span>
                        <div class="txt">
                            <p class="title">잰체스토리</p>
                            <p class="sub-txt">등록수 : 20개</p>
                        </div>
                        <a href="/style/common/webtoon/webtoon_list.asp?grpcode=6&catcode=3" class="view-all">전체보기</a>
                    </div>

					<!-- //회차별 보기 -->

					<!---웹툰 Small---->
                    <ul class="list-type01 five mT10">
                        <li>
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/6/t6_3_20.jpg)" alt=" 20화 그런데..왜…">
                                <div class="info">
                                    <span>조회수:230</span>
                                </div>
                            </a>
                            <a href="" class="title"> 20화 그런데..왜…</a>
                        </li>



                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/6/t6_3_19.jpg)" alt="19화 이렇게 비가 오는 날엔…">
                                <div class="info">
                                    <span>조회수:215</span>
                                </div>
                            </a>
                            <a href="" class="title">19화 이렇게 비가 오는 날엔…</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/6/t6_3_18.jpg)" alt="18화 다 알면서도…">
                                <div class="info">
                                    <span>조회수:237</span>
                                </div>
                            </a>
                            <a href="" class="title">18화 다 알면서도…</a>
                        </li>


                        <li class="">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/6/t6_3_17.jpg)" alt="17화 역시 힘들군…">
                                <div class="info">
                                    <span>조회수:182</span>
                                </div>
                            </a>
                            <a href="" class="title">17화 역시 힘들군…</a>
                        </li>


                        <li class="last-gridS">
                            <a href="javascript:signAlert();" class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/6/t6_3_16.jpg)" alt="16화 문제해결에 관해서…">
                                <div class="info">
                                    <span>조회수:86</span>
                                </div>
                            </a>
                            <a href="" class="title">16화 문제해결에 관해서…</a>
                        </li>
                        </ul>
					<!---//웹툰 Small---->


                </li>
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
