
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js"></script>
<script src="/style/common/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/plugin/swiper.min.js"></script>
<!-- 레벨 팝업 -->
<script src="/js/levelupPopup.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.popkontv.com/enm-1.0.0.js"></script>

<script type="text/javascript" src="/js/jquery.colorbox-min.js"></script>
<style>
.main_vip_pop{display:none;position:fixed;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,0.6);z-index:5000}
.main_vip_pop .vip_card_wrap{display:table;width:100%;height:100%}
.main_vip_pop .vip_card_wrap .vip_card{display:table-cell;vertical-align:middle;text-align:center;width:100%;height:100%}
.main_vip_pop .vip_card_wrap .vip_card .card_box{display:inline-block;top:-100px;position:relative}
.close_btn_set{text-align:right;height:26px;line-height:26px;color:#fff;font-size:0}
.close_btn_set *{vertical-align:top;font-size:15px}
.close_btn_set .bar{margin:0 5px}
.close_btn_set button{height:26px;color:#fff;font-size:15px;margin:0;border:0;padding:0;background:transparent}
.close_btn_set input[type="checkbox"]{display:none}
.close_btn_set input[type="checkbox"] + label{font-size:15px;color:#fff;cursor:pointer;position:relative;display:inline-block;height:26px;line-height:26px}
.close_btn_set input[type="checkbox"] + label:before{display:inline-block;vertical-align:middle;width:24px;height:24px;background-color:transparent;border:1px solid #fff;-webkit-border-radius:12px;-moz-border-radius:12px;border-radius:12px;position:relative;top:-2px;margin-right:10px;content:''}
.close_btn_set input[type="checkbox"]:checked + label:after{display:block;width:16px;height:16px;background-color:#fff;border-radius:50%;position:absolute;top:5px;left:5px;content:''}
</style>
</head>
<body>

<!-- 2020 설날 이벤트 팝업 -->


<div class="wrap">
	<!-- TOP / Menu 시작 -->
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

	<!-- TOP / Menu 종료 //-->
	<!-- 본문 시작 -->
	<section class="content">

	<!-- s: 핫클립 -->

				<div class="hot_clip_area">
                    <div class="hot_clip_hd">
                        <h3 class="hot_clip_title"><span>HOT</span> CLIP</h3>
                        <div class="hot_dir_group">
                            <div class="hot_prev"><a href="#">prev</a></div>
                            <div class="hot_next"><a href="#">next</a></div>
                        </div>
                    </div>
                    <div class="swiper-container hc_list">
                        <ul class="swiper-wrapper hot_clip_list">

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17648&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EC%95%84%EB%A6%AC%EC%97%98%20%EC%9D%B4%EB%9F%B0%20%EB%AA%B8%EB%A7%A4%EC%97%90%20%EA%B5%AC%EB%AF%B8%EB%B2%A0%EC%96%B4%EB%8A%94%20%EB%B0%98%EC%B9%99%EC%9D%B4%EC%A7%80%5F%EC%8D%B8%2Ejpg')"></div>
                                    <p class="item_title">&#51060;&#47088; &#47800;&#47588;&#50640; &#44396;&#48120;&#48288;&#50612;&#45716; &#48152;&#52825;&#51060;&#51648;!! &#50500;&#47532;&#50648;</p>
                                </a>
                            </li>

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17626&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EC%9D%80%EC%B1%84%2D%ED%8A%B8%EC%9B%94%ED%82%B9%EC%9D%98%EC%B2%B8%EA%B0%91%EB%8B%88%EB%8B%A4%2Ejpg')"></div>
                                    <p class="item_title">&#53944;&#50900;&#53433; &#51032;&#52408; &#44049;&#45768;&#45796;! &#53944;&#50900;&#53433; &#47112;&#51204;&#46300;! &#51008;&#52292;</p>
                                </a>
                            </li>

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17630&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EC%95%84%EC%B9%98%20%EB%A7%89%EC%B6%A4%EB%8F%84%20%EC%8C%89%EA%B0%80%EB%8A%A5%5F%EC%8D%B8%EB%84%A4%EC%9D%BC%2Ejpg')"></div>
                                    <p class="item_title">&#47561;&#52644;&#46020; &#49929;&#44032;&#45733;&#54620; &#50500;&#52824;&#51032; &#50633;&#45929;&#51068; &#55124;&#46308;&#50612;&#48400;~&#9834; &#50500;&#52824;</p>
                                </a>
                            </li>

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17417&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EC%8B%9C%EC%B2%AD%EC%9E%90%EC%99%80%20%EA%B2%8C%EC%9E%84%20%EB%8C%80%EA%B2%B0%5F%EC%8D%B8%EB%84%A4%EC%9D%BC%2Ejpg')"></div>
                                    <p class="item_title">&#49884;&#52397;&#51088;&#50752; &#44172;&#51076; &#45824;&#44208;!! &#51648;&#47732; &#47582;&#45716;&#45796;!! &#50028;&#55148;</p>
                                </a>
                            </li>

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17674&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EB%9A%9C%EC%97%B0%2D%EB%A6%AC%EC%95%A1%EC%85%98%EC%9D%98%20%EC%A7%80%EC%98%A5%EA%B3%BC%20%EC%B2%9C%EA%B5%AD%EC%9D%84%20%EB%A7%9B%EB%B3%B4%EA%B2%8C%ED%95%B4%EC%A4%84%EA%B2%8C%2Ejpg')"></div>
                                    <p class="item_title">&#50724;&#45720; &#49465;&#49884;&#48120; &#53552;&#51648;&#45716; &#45216;! &#47532;&#50529;&#49496;&#51032; &#51648;&#50725;&#44284; &#52380;&#44397;&#51012; &#47579;&#48372;&#44172; &#54644;&#51460;&#44172;~!&#46748;&#50672;</p>
                                </a>
                            </li>

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17571&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EC%86%8C%EB%A6%AC%2D%ED%94%BC%EC%9E%904%ED%8C%90%EC%97%90%EB%9D%BC%EB%A9%B4%EC%97%90%EC%86%8C%EC%A3%BC%EA%B9%8C%EC%95%84%EC%A7%80%28%EC%9C%A0%ED%88%AC%EB%B8%8C%29%2Ejpg')"></div>
                                    <p class="item_title">&#49548;&#47532;&#51032; &#47673;&#48169;!! &#54588;&#51088; 4&#54032;&#50640; &#46972;&#47732;&#50640; &#49548;&#51452;&#44620;&#51648;..?! </p>
                                </a>
                            </li>

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17493&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EC%A7%80%EC%95%BC%20%ED%81%B4%EB%9F%BD%EC%9D%80%20%EB%8B%A4%EB%8B%88%EC%A7%84%20%EC%95%8A%EC%A7%80%EB%A7%8C%20%EC%A0%80%20%EC%84%B8%EC%83%81%20%ED%85%90%EC%85%98%20%ED%81%B4%EB%9F%BD%EB%8C%84%EC%8A%A4%5F%EC%8D%B8%EB%84%A4%EC%9D%BC%2Ejpg')"></div>
                                    <p class="item_title">&#50724;&#48736; &#51200; &#53364;&#47101; &#50504;&#45796;&#45376;&#50836;.. &#51648;&#50556;&#51032; &#51200;&#49464;&#49345; &#53584;&#49496; &#53364;&#47101;&#45828;&#49828;!!</p>
                                </a>
                            </li>

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17509&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EC%A7%80%ED%83%9D%EA%B5%AC%5F%EB%AA%A9%20%EC%95%84%EC%9E%91%EB%82%9C%20%EB%A6%AC%EC%95%A1%EC%85%98%20400%EB%B2%88%20%EB%AF%B8%EC%85%98%5F%EC%9C%A0%ED%8A%9C%EB%B8%8C%EC%8D%B8%2Epng')"></div>
                                    <p class="item_title">&#47785; &#50500;&#51089;&#45212; &#47532;&#50529;&#49496; 400&#48264; &#48120;&#49496;!! &#51648;&#53469;&#44396;</p>
                                </a>
                            </li>

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17471&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EC%8D%AC%ED%9D%AC%2D%EC%84%B1%EB%8C%80%EB%AA%A8%EC%82%AC%EC%9E%A5%EC%9D%B8%EB%93%A4%20%EC%97%AC%EA%B8%B0%EB%8B%A4%EC%9E%88%EC%97%88%EB%85%B8%21%28%EC%9C%A0%ED%8A%AD%EC%9A%A9%29%2Ejpg')"></div>
                                    <p class="item_title">&#44060;&#50883;&#44596; &#49457;&#45824;&#47784;&#49324; &#51109;&#51064;&#46308; &#50668;&#44592; &#45796; &#47784;&#50668;&#51080;&#50632;&#45348;!! &#12619;&#12619;&#12619;&#12619;&#12619;&#50028;&#55148;</p>
                                </a>
                            </li>

		            		<li class="swiper-slide hot_clip_item">
                                <a href="/content/ucc/ucc_view.asp?grpcode=1&regcode=17456&cat=9&stype=0" class="item_inner">
                                    <div class="item_figure" style="background-image:url('https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_CATE_VOD/group_1/cate_9/%EC%A1%B0%EB%A1%9C%EB%A1%9C%2D%EC%9D%B4%EC%98%B7%EC%9E%85%EA%B3%A0%20%EB%A1%9C%ED%86%A0%EB%B0%94%EC%9D%B4%EC%B6%94%EB%A9%B4%ED%81%B0%EC%9D%BC%EB%82%A0%EA%B2%83%EA%B0%99%EC%9D%80%EB%8D%B0%28%EC%9C%A0%ED%8A%AD%EC%9A%A9%29%2Ejpg')"></div>
                                    <p class="item_title">&#51060; &#50743; &#51077;&#44256; &#50724;&#53664;&#48148;&#51060; &#45828;&#49828; &#52628;&#47732; &#53360;&#51068;&#45216; &#44163; &#44057;&#51008;&#45936;...&#51312;&#47196;&#47196;!!</p>
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>

    <script type="text/javascript">
    /* 핫클립 영역 슬라이드 (swiper.js) */
    $(function(){
        // 로드되기전 레이아웃 마진값을 초기화
        $('.hot_clip_wrap .hc_list ul li').css('margin-left','0');
        // 슬라이드 이벤트
        var hotClipSlide = new Swiper(".hc_list",{
            effect: 'slide',
            initialSlide : 0,
            centeredSlides: false,
            slidesPerView: 5,
            paginationClickable: true,
            spaceBetween: 14,
            centeredSlides: false,
            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },
            loop: true
        });
        // direction controls event
        $('.hot_dir_group .hot_next > a').click(function(){
            hotClipSlide.slideNext();
            return false;
        });
        $('.hot_dir_group .hot_prev > a').click(function(){
            hotClipSlide.slidePrev();
            return false;
        });
    });
    </script>

		<!-- 배너 / 실시간 LIVE랭킹 시작 -->
		<article class="main-banner clfix">
			<!-- 배너 시작 -->
			<div class="slide left">
				<ul class="bxslider">

                <li>
                    <a href="/style/common/event/popkoncoin.asp" target="_self"><img src="https://pic.popkontv.com/bAD/freeASP/202105/팝콘코인소개_740.jpg" alt="[ASP] 팝콘코인 배너" style="width:750px;height:250px;"></a>
                </li>

                <li>
                    <a href="/style/common/event/common/campaign/default.asp" target="_self"><img src="https://pic.popkontv.com/images/aspw/event/common/campaign/b_20180402.jpg" alt="CommonBanner" style="width:750px;height:250px;"></a>
                </li>

				</ul>
			</div>
			<!-- 배너 종료 //-->
			<!-- 회원 정보 -->
			<!-- 로그인 전 -->

            <div class="main-login-area right">
                <h2 class="hidden">로그인 정보</h2>
                <form name="frmLogin" id="frmLogin" onsubmit="return false;">
                    <fieldset>
                    <legend class="hidden">로그인 및 관련 설정</legend>
                        <div class="login-inp">
                            <label class="hidden" for="txt_id">아이디</label>
                            <input type="text" id="txt_id" name="txt_id" class="inp" maxlength="25" placeholder="아이디" title="아이디를 입력하세요" value="">
                            <label class="hidden" for="txt_pw">비밀번호</label>
                            <input type="password" id="txt_pw" name="txt_pw" class="inp" maxlength="25" placeholder="비밀번호" title="비밀번호를 입력하세요">
                        </div>
                        <div class="login-set">
                            <span class="frm-check">
                                <input type="checkbox" id="chk_saveId" name="chk_saveId" class="chk-box"  value="1">
                                <label for="chk_saveId" class="chk-label"><span></span>아이디저장</label>
                            </span>
                        </div>
						<button class="btn-login" id="btn_sign" title="로그인">로그인</button>
						<a href="https://www.sepay.org/spm/join?regSiteCode=PO&ctgCode=&subCode=1" target="_blank">
							<img src="https://pic.popkontv.com/images/aspw/common/btn_mobile_login_pc.png" alt="간편로그인" style="margin-top:15px;" />
						</a>
                        <ul class="list-user">
                            <li class="fst">
                                <a href="/style/common/join/default.asp" class="link-join">회원가입</a>
                            </li>
                            <li>
                                <a href="/style/common/private/finding.asp" class="link-find">아이디/비번 찾기</a>
                            </li>
                        </ul>
                    </fieldset>
                </form>
            </div>

		</article>
		<article class="main-contents">
	        <div class="left">
				<!-- 실시간 핫이슈 시작 -->
                <div class="main-hot-list">
                    <ul class="clfix">
                        <li class="hot-list-tlte">
                            <a>
                                <p class="title">실시간 핫이슈</p>
                                <p class="sub-txt">아직도 못봤어?<br>지금 가장 핫한 영상</p>
                            </a>
                        </li>

                <li class="best-label">
                    <a href="/style/common/live/ucc_view.asp?grpcode=6&regcode=7799&cat=0">
                        <div class="thumb" style="background-image:url(https://i.ytimg.com/vi/m81kdiXRbfQ/hqdefault.jpg)"></div>
                    </a>
                    <p class="title">하니의 무대시작 전후 갭차이
</p>
                </li>

                <li class="best-label">
                    <a href="/style/common/live/ucc_view.asp?grpcode=6&regcode=6000&cat=0">
                        <div class="thumb" style="background-image:url(https://i.ytimg.com/vi/RL9hKEQG4nw/hqdefault.jpg)"></div>
                    </a>
                    <p class="title">충격과 공포의 레몬사탕
</p>
                </li>

                    </ul>
                </div>
                <div class="main-best-list">
                    <ul class="clfix">

                <li class="">
                    <a href="/style/common/live/ucc_view.asp?grpcode=6&regcode=7088&cat=0">
                        <div class="thumb" style="background-image:url(https://i.ytimg.com/vi/LDMqnuatlvw/maxresdefault.jpg)">
                            <div class="info">
                                <span class="view">조회수 318</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">하나의 눈, 10가지 메이크업
</p>
                </li>

                <li class="">
                    <a href="/style/common/live/ucc_view.asp?grpcode=6&regcode=5594&cat=0">
                        <div class="thumb" style="background-image:url(https://i.ytimg.com/vi/QhoBOl09OWc/hqdefault.jpg)">
                            <div class="info">
                                <span class="view">조회수 349</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">I believe, I can fly
</p>
                </li>

                <li class="">
                    <a href="/style/common/live/ucc_view.asp?grpcode=6&regcode=8685&cat=0">
                        <div class="thumb" style="background-image:url(https://i.ytimg.com/vi/PyFYcN_Neh8/hqdefault.jpg)">
                            <div class="info">
                                <span class="view">조회수 278</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">축구공을 얼마나 세게 찼으면..
</p>
                </li>

                <li class="">
                    <a href="/style/common/live/ucc_view.asp?grpcode=6&regcode=5943&cat=0">
                        <div class="thumb" style="background-image:url(https://i.ytimg.com/vi/Ife0MbiU7eI/maxresdefault.jpg)">
                            <div class="info">
                                <span class="view">조회수 275</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">씨스타 Shake it을 발랄하게 부른 일반인...</p>
                </li>

                    </ul>
                </div>
				<!-- 실시간 핫이슈 종료 //-->
				<!-- 인기웹툰 시작 -->
                <p class="content-title">
					인기웹툰<a href="/style/common/webtoon/webtoon.asp"><button class="btn-all-list">+ 전체보기</button></a>
				</p>
                <div class="main-best-list">
                    <ul class="clfix">

                <li class="best-label">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_9.jpg)">
                            <div class="info">
                                <span class="view">조회수 833</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">9화 1일</p>
                </li>

                <li class="best-label">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_6.jpg)">
                            <div class="info">
                                <span class="view">조회수 1,213</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">6화 양치기 빵녀</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_5.jpg)">
                            <div class="info">
                                <span class="view">조회수 842</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">5화 프로젝트</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/1/t1_3_1.jpg)">
                            <div class="info">
                                <span class="view">조회수 1,229</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">1화 인트로</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/9/t9_4_17.jpg)">
                            <div class="info">
                                <span class="view">조회수 1,055</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">17화 폴라로이드 사진 만들기!</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/9/t9_4_16.jpg)">
                            <div class="info">
                                <span class="view">조회수 663</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">16화 멋진 네온간판 만들기!</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/9/t9_4_13.jpg)">
                            <div class="info">
                                <span class="view">조회수 1,394</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">13화 햇살내리쬐는효과 and 카메라렌즈반짝이...</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/9/t9_4_8.jpg)">
                            <div class="info">
                                <span class="view">조회수 326</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">8화 구겨진 사진 만들기(and 눈물 번짐 효...</p>
                </li>

                    </ul>
                </div>
				<!-- 인기웹툰 종료 //-->
				<!-- 에듀케이션 시작 -->
                <div class="education">
                    <div>
                        <p class="t-title">에듀케이션</p>
                        <ul class="main-list-tab clfix">
                            <li class="on" data-tab="tab-1">요가</li>
                            <li data-tab="tab-2">잉그리스타</li>
                            <li data-tab="tab-3">힐링상담교육</li>
                            <li data-tab="tab-4">유아영어</li>
                        </ul>
                    </div>
					<!-- 요가 시작 -->
                    <div id="tab-1" class="tab-content" style="display:block">
                        <div class="main-best-list">
                            <ul class="clfix">

                <li class="best-label">
                   <a href="javascript:signAlert();">
                       <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/4/4/12/t31_11_48.jpg)">
                           <div class="info">
                               <span class="view">조회수 948</span>
                           </div>
                       </div>
                   </a>
                   <p class="title">[48강] 하체를 마사지 해주는 동작
</p>
               </li>

                <li class="best-label">
                   <a href="javascript:signAlert();">
                       <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/4/4/12/t31_11_39.jpg)">
                           <div class="info">
                               <span class="view">조회수 277</span>
                           </div>
                       </div>
                   </a>
                   <p class="title">[39강] 상체를 이완시켜주는 동작
</p>
               </li>

                <li class="">
                   <a href="javascript:signAlert();">
                       <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/4/4/12/t31_11_32.jpg)">
                           <div class="info">
                               <span class="view">조회수 1,168</span>
                           </div>
                       </div>
                   </a>
                   <p class="title">[32강] 상 하체 유연성을 도와주는 동작1
</p>
               </li>

                <li class="">
                   <a href="javascript:signAlert();">
                       <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/4/4/12/t31_11_30.jpg)">
                           <div class="info">
                               <span class="view">조회수 144</span>
                           </div>
                       </div>
                   </a>
                   <p class="title">[30강] 인터벌 트레이닝
</p>
               </li>

                            </ul>
                        </div>
                    </div>
					<!-- 요가 종료 //-->
					<!-- 잉그리스타 시작 -->
                    <div id="tab-2" class="tab-content">
                        <div class="main-best-list">
                            <ul class="clfix">

                <li class="best-label">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/3/3/9/t10_8_30.jpg)">
                            <div class="info">
                                <span class="view">조회수 217</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">[30강] why 의문문</p>
                </li>

                <li class="best-label">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/3/3/9/t10_8_27.jpg)">
                            <div class="info">
                                <span class="view">조회수 51</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">[27강] when 의문문</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/3/3/9/t10_8_17.jpg)">
                            <div class="info">
                                <span class="view">조회수 38</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">[17강] 완료형</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/3/3/9/t10_8_14.jpg)">
                            <div class="info">
                                <span class="view">조회수 42</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">[14강] 과거시제</p>
                </li>

                            </ul>
                        </div>
                    </div>
					<!-- 잉그리스타 종료 //-->
					<!-- 힐링상담교육 시작 -->
                    <div id="tab-3" class="tab-content">
                        <div class="main-best-list">
                            <ul class="clfix">

                <li class="best-label">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/5/5/13/t13_7_10.jpg)">
                            <div class="info">
                                <span class="view">조회수 63</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">힐링 상담학 2편</p>
                </li>

                <li class="best-label">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/5/5/13/t13_7_9.jpg)">
                            <div class="info">
                                <span class="view">조회수 64</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">힐링 상담학 1편</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/5/5/13/t13_7_8.jpg)">
                            <div class="info">
                                <span class="view">조회수 32</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">창의경영시대의 리더쉽</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/5/5/13/t13_7_7.jpg)">
                            <div class="info">
                                <span class="view">조회수 30</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">창의경영시대의 소통</p>
                </li>

                            </ul>
                        </div>
                    </div>
					<!-- 힐링상담교육 종료 //-->
					<!-- 유아영어 시작 -->
                    <div id="tab-4" class="tab-content">
                        <div class="main-best-list">
                            <ul class="clfix">

                <li class="best-label">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/6/6/14/t21_9_2.jpg)">
                            <div class="info">
                                <span class="view">조회수 13</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">Chapter 2. 총잡이 토마토</p>
                </li>

                <li class="best-label">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/6/6/15/t22_9_17.jpg)">
                            <div class="info">
                                <span class="view">조회수 7</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">17강 람보,집만들기,화가</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/6/6/15/t22_9_14.jpg)">
                            <div class="info">
                                <span class="view">조회수 6</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">14강 맨홀뚜껑,가짜돈,미터기</p>
                </li>

                <li class="">
                    <a href="javascript:signAlert();">
                        <div class="thumb" style="background-image:url(https://vod2.popkontv.hscdn.com/CAST_VOD/POPCAST_VOD/EDU_VOD/6/6/15/t22_9_11.jpg)">
                            <div class="info">
                                <span class="view">조회수 3</span>
                            </div>
                        </div>
                    </a>
                    <p class="title">11강 공원,과수원,해변</p>
                </li>

                            </ul>
                        </div>
                    </div>
					<!-- 유아영어 종료 //-->
                </div>
				<!-- 에듀케이션 종료 //-->
            </div>
            <div class="right">


				<!-- 인기 UCC 시작 -->
                <p class="side-title">
					인기UCC <a href="/style/common/live/ucc.asp?catCode=2"><button type="button" class="">+ 전체보기</button></a>
				</p>
                <div class="ucc">
                    <ul class="ucc-top">

                <li class="best-label">
                    <a href="/style/common/live/ucc_view.asp?grpcode=6&regcode=5749&cat=0">
                        <div class="thumb" style="background-image:url(https://i.ytimg.com/vi/4xhqV1NmrlI/maxresdefault.jpg)">
                            <div class="info">
                                <span class="view">범삼치않은 막춤
</span>
                            </div>
                        </div>
                    </a>
                </li>

                    </ul>
                    <ul class="ucc-list">

                <li>
                    <a href="/style/common/live/ucc_view.asp?grpcode=6&regcode=8975&cat=0">
                        <span class="thumb" style="background-image:url(https://i.ytimg.com/vi/9sjaY9T7Zns/maxresdefault.jpg
)"></span>
                        <span class="info">
                            <span>이슈의 열애 스타 박민지의 화보 현장!
</span>
                            <em>조회수 719</em>
                        </span>
                    </a>
                </li>

                <li>
                    <a href="/style/common/live/ucc_view.asp?grpcode=6&regcode=6397&cat=0">
                        <span class="thumb" style="background-image:url(https://i.ytimg.com/vi/HfmOD5jImOs/maxresdefault.jpg)"></span>
                        <span class="info">
                            <span>케이블 타이에 묶였을 때 탈출하는 방법
</span>
                            <em>조회수 239</em>
                        </span>
                    </a>
                </li>

                    </ul>
                </div>
				<!-- 인기 UCC 종료 //-->
                <div class="side-bn">
                    <a href="/style/common/magazine/magazine.asp"><img src="/style/type1/images/tmp_side_bn.png" alt="magazine" /></a>
                </div>
            </div>
		</article>
	</section>
	<!-- 본문 종료 //-->
    <!-- 공지사항 / footer 시작 -->

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


    <!-- 공지사항 / footer 종료 //-->
</div>

	<div style="display:none">
		<div class="popup_adult" id="js-adult">
			<!--a class="btn_close_adult"><img src="/images/icon/btn_popAdult_close.png" alt="창닫기" /></a-->
			<h3>팝콘위드코인 청소년보호정책</h3>
			<div class="cont">
				<p class="box_yellow">팝콘위드코인는 청소년들이 유해 정보에 접근할 수 없도록 방지하는 인증 장치 및 관리 조치를<br/> 취하고 있으며, 청소년이 건전한 인격체로 성장할 수 있도록 청소년 보호 정책 수립 및  <br/>시행에 최선을 다하고 있습니다.</p>
				<p class="box_blue">
					<span>1.팝콘위드코인는 <strong class="clffde00">만19세 이상의 성인</strong>만 방송이 가능합니다.</span>
					<span>2.팝콘위드코인는 아주 작은 <strong class="clffde00">욕설이나 음주 흡연도 성인 컨텐츠로 분류되어 청소년의 <br/>접근을 차단</strong>합니다.</span>
					<span>3.팝콘위드코인의 모든 회원은 <strong class="clffde00">본인 인증된 회원이며 청소년의 경우 성인컨텐츠를 <br/>엄격하게 차단</strong>하여 절대 접근을 할 수 없습니다.</span>
					<span>4.팝콘위드코인는 방송통신심의위원회의 <strong class="cl00f6ff">'원스트라이크아웃제도'</strong>를 시행 및 준수하고 있으며,<br/>청소년의 불법유해정보 유통 근절을 위하여<strong class="clffde00">24시간 실시간 모니터링</strong>을 진행하고 있습니다.</span>
				</p>
				<div class="mT20 mB10 tar">
					<input type="checkbox" id="chk_day7_adult" class="basic-checkbox" checked="checked">
					<label for="chk_day7_adult" class="basic-label red-check">1주일간 보지않기</label>
				</div>
				<!-- <p class="mT20 mB20 clb">
					<label for="chk_day7_adult" class="right fs13"><input type="checkbox" id="chk_day7_adult" class="mR5">1주일간 보지않기</label>
				</p> -->
				<p class="tac"><span class="btn_close" style="cursor:pointer;">확  인</span></p>
			</div>
		</div>
	</div>

	<div style="display:none">
		<div class="popup_adult" id="js-kids">
			<!--a class="btn_close_adult"><img src="/images/icon/btn_popAdult_close.png" alt="창닫기" /></a-->
			<h3>팝콘위드코인 청소년보호정책</h3>
			<div class="cont">
				<p class="box_yellow">팝콘위드코인는 청소년들이 유해 정보에 접근할 수 없도록 방지하는 인증 장치 및 관리 조치를<br/> 취하고 있으며, 청소년이 건전한 인격체로 성장할 수 있도록 청소년 보호 정책 수립 및  <br/>시행에 최선을 다하고 있습니다.</p>
				<p class="box_blue">
					<span>1.팝콘위드코인는 <strong class="clffde00">만19세 이상의 성인</strong>만 방송이 가능합니다.</span>
					<span>2.팝콘위드코인는 아주 작은 <strong class="clffde00">욕설이나 음주 흡연도 성인 컨텐츠로 분류되어 청소년의 <br/>접근을 차단</strong>합니다.</span>
					<span>3.팝콘위드코인의 모든 회원은 <strong class="clffde00">본인 인증된 회원이며 청소년의 경우 성인컨텐츠를 <br/>엄격하게 차단</strong>하여 절대 접근을 할 수 없습니다.</span>
					<span>4.팝콘위드코인는 방송통신심의위원회의 <strong class="cl00f6ff">'원스트라이크아웃제도'</strong>를 시행 및 준수하고 있으며,<br/>청소년의 불법유해정보 유통 근절을 위하여<strong class="clffde00">24시간 실시간 모니터링</strong>을 진행하고 있습니다.</span>
				</p>
				<!-- <p class="mT20 mB20 clb">
					<label for="chk_day7_kids" class="fs13"><input type="checkbox" id="chk_day7_kids" class="mR5">1주일간 보지않기</label>
				</p> -->
				<div class="mT20 mB10 tar">
					<input type="checkbox" id="chk_day7_kids" class="basic-checkbox" checked="checked">
					<label for="chk_day7_kids" class="basic-label red-check">1주일간 보지않기</label>
				</div>
				<p class="tac"><span class="btn_close" style="cursor:pointer;">확  인</span></p>
			</div>
		</div>
	</div>
	<!-- s: 회원정지 안내 팝업 -->
    <div class="layerPopup prompt_pop">
        <div class="inner">
            <div class="pop_header">
                <h3 class="mB10 tit">폴리스 안내</h3>
                <p class="mB10 hd_summary">
                    회원님은 운영 정책 위반으로 서비스 이용이 정지되었습니다.<br>
                    정지 기간 중 개인 정보 도용 등을 통한 허위 아이디 생성으로 서비스 이용을 하실 경우, 제재 조치와는 별도로 관련 법에 의거 법적인 처벌을 받을 수 있습니다.
                </p>
            </div>
            <div class="pop_container">
                <div class="mB10 gray_box pop_tbl">
                    <table>
                        <tr>
                            <th>일시</th>
                            <td class="colon">:</td>
                            <td class="js_txt_blockRegDate">2018-10-10 22:22:22</td>
                        </tr>
                        <tr>
                            <th>기간</th>
                            <td class="colon">:</td>
                            <td class="js_txt_blockDate">영구 정지</td>
                        </tr>
                        <tr>
                            <th>사유</th>
                            <td class="colon">:</td>
                            <td class="js_txt_blockMemo">과도한 하의 노출로 영구정지 처리합니다.</td>
                        </tr>
                    </table>
                </div>
                <p class="mB10 txt_center cont_summary js_loginblock">
                    이용정지 관련 문의가 있으시면 아래 1:1 문의하기 통해<br>
                    고객센터로 문의해 주시기 바랍니다.
                </p>
            </div>
            <div class="pop_footer">
                <a href="/style/common/customer/counsel_form.asp" class="mB7 btn btn_link js_loginblock">1:1 문의하기</a>
                <button class="mB0 btn btn_apply pop-close js_btn_blockclose">확인</button>
            </div>
        </div>
    </div>
    <!-- e: 회원정지 안내 팝업 -->

<script type="text/javascript">
$(document).ready(function(){
	function setCookie(name,value,days) {
		if (days) {
			var date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			var expires = "; expires="+date.toGMTString();
		}
		else var expires = "";
		document.cookie = name+"="+value+expires+"; path=/";
	}

	function getCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for(var i=0;i < ca.length;i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1,c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
		}
		return null;
	}

	function delCookie(name) {
		setCookie(name,"",-1);
	}

	//* exp
	var regExp_signId = /^[A-Za-z0-9]{4,25}$/;
	//var regExp_signPw = /^[`~!@#$%^&*|A-Za-z0-9]{4,20}$/;
	var regExp_signPw = /^[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"|A-Za-z0-9]{4,20}$/;

	//* signCheck
	signCheck = function(){
		if($('#txt_id').val()==''){
			alert('로그인 아이디를 입력하세요.');
			$('#txt_id').focus();
		}else if( $('#txt_pw').val()=='' ){
			alert('로그인 비밀번호를 입력하세요.');
			$('#txt_pw').focus();
		}else if( !regExp_signId.test($('#txt_id').val()) ){
			alert('로그인할 수 없는 아이디 입니다.');
			$('#txt_id').focus();
		}else if( !regExp_signPw.test($('#txt_pw').val()) ){
			alert('로그인이 실패 하였습니다.');
			$('#txt_pw').focus();
		}else{
			signExe();
		}
	};

	//* btn_sign
	$('#btn_sign').bind('click',function(evt){
		evt.preventDefault();
		signCheck();
	});

	//* txt_pw
	$('#txt_pw').bind('keyup',function(evt){
		var keyCode = evt.which;
		if( keyCode == 13){
			signCheck();
		}
	});

	//* signExe
	signExe = function(){
		$.ajax({
			type : 'post',
			url : '/style/common/sign/sign_on.asp',
			dataType : 'JSON',
			data : $('#frmLogin').serialize(),
			success : function(result,textStatus){
				var objReturn = result;
				switch(objReturn.sign_on.rstCode){
					case '0':
						fnblockCheck(objReturn, function(){

							var isAdult = getCookie("isAdultCheck").toLowerCase();

							var heights, hrefs;


							if (isAdult) {
								heights = 443;
								hrefs = '#js-adult';
							} else {
								heights = 443;
								hrefs = '#js-kids';
							}
							if (!getCookie("saveChk")) {
								callColorBox(heights, isAdult, hrefs);
								$(document).bind('cbox_closed', function() {
									location.replace('https://stageaspw.popkontv.com/default.asp');
								});
							} else {
								location.replace('https://stageaspw.popkontv.com/default.asp');
							}
						});
						break;
					case '2':
							//alert('장기미접속자');
							location.replace('https://stageaspw.popkontv.com/sign/Certify/clear_quiescence.asp');
							break;
					case '3':
						fnblockCheck(objReturn, function(){
							var isAdult = getCookie("isAdultCheck").toLowerCase();
							var heights, hrefs;


							if (isAdult) {
								heights = 443;
								hrefs = '#js-adult';
							} else {
								heights = 443;
								hrefs = '#js-kids';
							}

							if (!getCookie("saveChk")) {
								callColorBox(heights, isAdult, hrefs);
								$(document).bind('cbox_closed', function() {
										location.replace('https://stageaspw.popkontv.com/style/common/mypage/mypage_change_pw.asp');
									});
							} else {
								location.replace('https://stageaspw.popkontv.com/style/common/mypage/mypage_change_pw.asp');
							}
						});
						break;
					default:
						if(objReturn.memberBlockCheck.isBlock == "1"){
							blockPop(objReturn);
						}else{
							alert(objReturn.sign_on.rstMsg);
							location.reload();
						}
						break;
				}
			},
			error : function(xhr, textStatus, errorThrown){
				alert('서버점점으로 로그인 처리를 할 수 없습니다.');
			}
		});
	}
	//* end
	function fnblockCheck(objReturn, callback){
			if(objReturn.memberBlockCheck.isBlock == "1"){
				blockPop(objReturn);
				$(".js_btn_blockclose,.bg-mask").on("click", callback);
				return;
			}
			callback();
		}

		//* end
		var blockPop = function(objReturn){
			$(".js_txt_blockRegDate").html(objReturn.memberBlockCheck.blockRegDate);
			$(".js_txt_blockDate").html(objReturn.memberBlockCheck.blockDate);
			$(".js_txt_blockMemo").html(objReturn.memberBlockCheck.blockMemo);
			if(objReturn.memberBlockCheck.isLoginBlock == "1")
				$(".js_loginblock").hide();
			else
				$(".js_loginblock").show();

			popStopMem();

		}

	var callColorBox = function (heights, isAdult, hrefs) {
		var cbOption = {
			href: hrefs,
			inline:true,
			opacity: 0.85,
			scroling: false,
			escKey: false,
			overlayClose: false,
			closeButton:false,
			width: 530,
			height: heights
		};

		$.colorbox(cbOption);

		$('.btn_close').on('click', function() {
			if (isAdult) {//성인인 경우
				if ($('#chk_day7_adult').prop('checked')) {
					setCookie("saveChk", true, 7);
				} else {
					delCookie("saveChk");
				}
			} else {
				if ($('#chk_day7_kids').prop('checked')) {
					setCookie("saveChk", true, 7);
				} else {
					delCookie("saveChk");
				}
			}
			$.colorbox.close();
		});
	}

	/* 회원정지 안내 팝업 */
        function layerMask() {
            $('html').prepend('<div class="bg-mask"></div>');
            $('body').css({'overflow': 'hidden', 'height': '100%'});
            $('body').bind('scroll mousewheel', function(e){e.preventDefault()});
            //마스크 클릭시 팝업 전체 닫기
            $('.bg-mask').click(function(){
                closePop();
            });
            $('.layerPopup .pop-close').click(function(){
                closePop();
            });
            //ESC키로 팝업 전체 닫기
            $(document).keydown(function (e) {
                if(e.keyCode == 27) {
                    closePop();
                }
            });
            //리사이징
            $(window).resize(function () {
                popupCenter($('.layerPopup'));
            });
        };

        function popupCenter(target) {
            var popupContent = target; //팝업컨텐츠
            popupContent.css({
                "top": ($(window).height() - popupContent.outerHeight()) / 2 + "px",
                "left": ($(window).width() - popupContent.outerWidth()) / 2 + "px"
            });
        };

        function closePop(){
            $('.layerPopup').hide();
            $('.bg-mask').detach();
            $('body').css({'overflow': 'auto', 'height': '100%'});
            $('body').unbind('scroll mousewheel');
        }

        function popStopMem(){
            $('.prompt_pop').show();
            layerMask();
            popupCenter($('.prompt_pop'));

            $(window).resize(function() {
                popupCenter($('.prompt_pop'));
            });
        };
});
</script>

</body>
</html>

<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript">
	reloadToHttps();
</script>
