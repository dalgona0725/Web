
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:53:35">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:53:35">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:53:35"></script>
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
	<section class="content snb_content">
		<div class="content-type02">
			<h3 class="sub-title mB25">리스트업 아이템<span class="sub">방송 리스트에서 항상 최상단 9개의 리스트에 위치하여 내가 하는 방송을 모든 회원들이 먼저 볼 수 있도록 해주는 아이템 입니다.</span></h3>
			<p class="tit02">리스트 업 아이템이란?</p>
			<p class="txt01 mT5">방송 리스트에서 항상 최상단 9개의 리스트에 위치하여 내가 하는 방송을 모든 회원들이
			먼저 볼 수 있도록 해주는  아이템 입니다. 리스트 업 아이템은 골드(상단 1~3번째), 실버(중간 4~9번째) 위치 합니다.</p>
			<div class="gray-box mT15">
				<p class="title">아이템 환불/결제 유의사항</p>
				<ul class="num-list">
				    <li>리스트업 아이템 이용시간은 <span class="point">골드 리스트 업 2시간, 실버 리스트 업 1시간</span> 입니다.</li>
				    <li>개인 UCC 를 제외한 타 카테고리(영화, 스포츠, 음악, 게임 등)은 리스트 업 아이템 공간에 3개 이상 중복 방송을 하실 수 없습니다.</li>
				    <li>리스트 업 아이템 이용 시간은 자동 연장되지 않습니다. (방송 종료 후 새 리스트업 아이템을 사용하셔야 합니다.)</li>
				    <li>아이템의 결제 내역은 마이페이지 > 아이템 이용내역 에서 확인 가능합니다.</li>
				    <li>
				        리스트 업 아이템 사용 방법은(PC 및 모바일 모두 방송 시작 전에만 사용 가능합니다.)<br>
                        PC : 방송하기 > 라이브방송 탭 > 하단의 아이템 설정<br>
                        모바일 : 방송하기 탭 > 하단의 아이템 설정 에서 사용 가능하며 라이브 방송시에만 이용이 가능합니다.
                    </li>
				    <li>결제 한 아이템은 이용 시간이 지나면 자동으로 소멸되고, 상단 리스트에서 일반 리스트로 위치가 이동됩니다.</li>
				    <li>리스트 업 아이템의 순위는 구매 후 사용한 순서대로 적용됩니다.</li>
				    <li>리스트 업 아이템은 <span class="point">1~9번째 까지의 리스트만 노출되며 비어있는 리스트가 있을시에만 사용 가능</span> 합니다.</li>
				    <li>유료아이템은 구매일 기준 7일 이내에 청약철회가 가능합니다.<br>단, 사용하지 않은 아이템에 대해서만 가능합니다.</li>
				    <li>유료아이템의 내용이 표시ㆍ광고의 내용과 다르거나 계약내용과 다르게 이행된 경우에는 해당 유료아이템을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회가 가능합니다.</li>
				    <li>미성년자 가입자는 팝콘 및 유료아이템을 구매할 수 없습니다.</li>
				    <li>법정대리인의 동의 없이 미성년자명의 결제한 아이템은 환불이 가능합니다.</li>
				</ul>
			</div>
			<p class="tit02 mT20">리스트업 아이템 구매하기</p>
			<ul class="item-list2 item_Listupe clfix">
			    <li class="gold">
                    <a href="#" name="lnk_signAlert" alt="buy" data="AC-0007">
                        <div class="item_detail">
                            <p class="item-title">골드이용권</p>
                            <p class="item-title2">유효기간: 없음</p>
                            <p class="price">99,000원 (VAT포함)</p>
                        </div>
                    </a>
				</li>
				<li class="silver">
                    <a href="#" name="lnk_signAlert" alt="buy" data="AC-0008">
                        <div class="item_detail">
                            <p class="item-title">실버이용권</p>
                            <p class="item-title2">유효기간: 없음</p>
                            <p class="price">66,000원 (VAT포함)</p>
                        </div>
                    </a>
				</li>
			</ul>
		</div>
		<div class="snb">
			<h3 class="snb-title">LIVE 아이템</h3>
			<ul>
								<li ><a href="/style/common/item/item_fullView.asp">풀방 입장권</a></li>
				<li class="on"><a href="/style/common/item/item_listUpGrade.asp">리스트업 아이템</a></li>
				<li ><a href="/style/common/item/item_watchUp.asp">시청인원 업</a></li>
				<li ><a href="/style/common/item/item_saveUp.asp">방송저장용량추가</a></li>
				<li ><a href="/style/common/item/item_changeNickname.asp">프리미엄 닉네임 이용권</a></li>
				<li ><a href="/style/common/item/item_manager.asp">매니저 추가</a></li>
				<li ><a href="/style/common/item/item_enter.asp">방송 입장효과</a></li>
				<li ><a href="/style/common/item/item_decoration.asp">리스트 꾸미기</a></li>

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
	<input type="hidden" name="itemCode" id="itemCode" value="">
	<input type="hidden" name="listBuyerId" id="listBuyerId" value="">
	<input type="hidden" name="listBuyType" id="listBuyType" value="">
	<input type="hidden" name="itemCount" id="itemCount" value="1">
</form>
<script type="text/javascript">
	$(document).ready(function(){
		//* lnk_signAlert
		$('a[name="lnk_signAlert"]').bind('click',function(evt){
			evt.preventDefault();
			signAlert();
		});

		//$("#itemCount").keyup(function(){$(this).val( $(this).val().replace(/[^0-9]/g,"") );} );

		//* exp
		var regExp_coin = /^\d{1,5}/;

		//* txt_giftCoin key
		/*
		$('#itemCount').bind('keydown keyup',function(evt){
			var keyCode = evt.which;
			var noKeyCode = ',9,13,16,17,18,19,20,27,32,33,34,35,36,37,38,39,40,45,46,144,145,';
			if(noKeyCode.indexOf(',' + keyCode + ',') > -1){
				evt.preventDefault();
			}
		});
		*/

		$('a[name="lnk_item"]').bind('click',function(evt){
			evt.preventDefault();
			var buyType = $(this).attr('alt');
			var buyCode = $(this).attr('data');
			var usersid = "";

			//pop_ListOn(buyType,buyCode);

			$("#itemCode").val(buyCode);
			$("#listBuyType").val(buyType);
			$('#listBuyerId').val(usersid);

			btn_submitList();
		});

		//* pop_giftCoinOn
		pop_ListOn = function(buyType,buyCode){
			var buyCd = buyCode;
			switch(buyCd){
				case 'AC-0007':
					$("#listUpDivision").text("리스트 업 골드");
					$("#pop_btn_listUp > h1").text("LISTUP GOLD");
					$("#pop_btn_listUp").attr("class","pop_btn_listUpGold")
					break;
				case 'AC-0008':
					$("#listUpDivision").text("리스트 업 실버");
					$("#pop_btn_listUp > h1").text("LISTUP SILVER");
					$("#pop_btn_listUp").attr("class","pop_btn_listUpSilver")
					break;
			}

			$('#box_listUp').bPopup({
				opacity:0.5,
				modalClose: false
			});

			$('#itemCount').focus();
			$('#itemCount').val('1');
		}

		//* fuc_clearBoxData
		fuc_clearBoxData = function(){
			$('#itemCount').val('');
			$('#listUpDivision').text('');
		}

		//* fuc_clearCoinAlt
		fuc_clearListAlt = function(){
			$('#lbl_listAlt').text('').hide();
		}

		//* pop_giftCoinOff
		pop_ListOff = function(){
			fuc_clearBoxData();
			fuc_clearListAlt();
			$('#box_listUp').bPopup().close();
		}

		//* btn_submitCoin
		btn_submitList = function(){
			fuc_clearListAlt();
			if( !regExp_coin.test($('#itemCount').val()) || $('#itemCount').val() < 1 ){
				$('#itemCount').val('');
				$('#lbl_listAlt').text('구매 수량을 입력하세요.').show();
				$('#itemCount').focus();
			} else {
				if($("#listBuyType").val() == "buy"){
					$.ajax({
						type : 'POST',
						url : '/item/chk_buyList.asp',
						dataType : 'JSON',
						data : {
							order_signId : '',
							order_itemCode : $('#itemCode').val(),
							order_partnerCode : ''
						},
						success : function(result){
							var objReturn_Code = result;
							var objReturn_Value = objReturn_Code.chk_buyList.rstMsg;

							listUp_exe();

							/*
							switch(objReturn_Code.chk_buyList.rstCode){
								case '0':
									if ($('#itemCount').val() > 5)
									{
										$('#lbl_listAlt').text('구매 가능 수량은 최대 5매 입니다.').show();
										$('#itemCount').val('');
										$('#itemCount').focus();
										break;
									}
									else
									{
										listUp_exe();
										break;
									}
								default :
									alert('동일한 아이템을 소유하고 계십니다.');
									//$('#lbl_listAlt').text('동일한 아이템을 소유하고 계십니다.').show();
									//$('#itemCount').val('');
									//$('#itemCount').focus();
									break;

							}
							*/
						},
						error : function(xhr, textStatus, errorThrown){
							alert('현재 서버점검으로 결제를 할 수 없습니다.\n불편을 드려 죄송합니다.');
						}
					});
				}
				else
				{
					if ($('#itemCount').val() > 5)
					{
						$('#lbl_listAlt').text('최대 구매수량은 5장 입니다.').show();
						$('#itemCount').val('');
						$('#itemCount').focus();
					}
					else
					{
						listUp_exe();
					}
				}
			}
		}

		listUp_exe = function(){
			$('#frm_listUp').attr('action','/style/common/item/item_payment.asp');
			$('#frm_listUp').submit();
		}
	});
</script>
</body>
</html>
