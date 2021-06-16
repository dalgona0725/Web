
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오전 11:55:53">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오전 11:55:53">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오전 11:55:53"></script>
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
			<h3 class="sub-title mB20">자주묻는 질문<span class="sub">팝콘위드코인 자주묻는 질문 게시판입니다.</span></h3>
			<div class="qna">
				<ul>
					<li>
						<p class="question"><span class="category">[ 회원정보 ]</span>비밀번호 변경은 어떻게 하나요?</p>
						<div class="answer">
							(1) 팝콘위드코인 홈에 존재하는 마이페이지를 클릭합니다.<br>
							(2) 내 정보 수정에서 변경하고자 하는 자신의 정보를 수정하실 수 있습니다. 단, 아이디는 변경이 불가능 합니다.<br>
							(3) 변경하고자 하는 비밀번호를 입력하고 변경하기 버튼을 누르면 비밀번호 변경이 완료됩니다.<br>
							비밀번호 변경을 원하시면 새 비밀번호 입력란에 앞으로 이용하고자 하는 비밀번호를 입력하고 변경을 원치 않으시면 기존에 이용하시던 비밀번호를 입력하시면 됩니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 회원정보 ]</span>닉네임 변경은 어떻게 하나요?</p>
						<div class="answer">
							(1) 팝콘위드코인 홈페이지 &gt; 마이페이지 &gt; 닉네임 설정으로 이동합니다.<br />
							(2) 변경할 닉네임을 입력하고 조회 후 적용하기 버튼을 누르면 닉네임 변경이 완료됩니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 회원정보 ]</span>휴대폰 인증(변경)은 어떻게 하나요?</p>
						<div class="answer">
							(1) PC에서 인증(변경)하실 경우 팝콘위드코인 홈페이지 &gt; 마이페이지 &gt; 내 정보수정에서 휴대폰 번호 인증(변경)이 가능합니다.<br />
							(2) 모바일에서 인증(변경)하실 경우 팝콘위드코인 홈페이지 &gt; 메뉴 &gt; 마이페이지 &gt; 휴대폰 본인인증에서 인증(변경)이 가능합니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 회원정보 ]</span>로그인 오류</p>
						<div class="answer">
						“존재하지 않는 아이디 입니다.” “비밀번호가 일치하지 않습니다.” 와 같은 메시지는<br>
						(1) 아이디를 잘못 입력 하셨는지 확인해 보시고, CAPS LOCK키가 켜져 있지는 않은지 확인을 해주세요.
						팝콘위드코인는 아이디와 비밀번호에서 대 소문자를 구분합니다.<br>
						(2) 혹시 회원탈퇴를 하시지 않으셨는지 생각해 보세요. 팝콘위드코인는 회원 탈퇴 시에 가입 시 입력하신 모든 개인정보를
						즉시 파기 합니다. 그렇기 때문에 정보 복구는 불가능합니다.<br>
						(3) 아이디와 비밀번호가 기억나지 않으신다면 “아이디 비밀번호 찾기”를 이용하신 후 다시 로그인을 진행해주세요.</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 회원정보 ]</span>회원 탈퇴하면 남아있는 팝콘과 아이템 등은 어떻게 되나요?</p>
						<div class="answer">
						회원탈퇴( 팝콘위드코인 홈> 마이페이지> 회원탈퇴)를 할 경우 개인정보를 포함한 모든 내역(팝콘, 아이템 등)은 즉시 삭제 처리되어
						복구 및 이용이 불가능합니다. 그러므로 회원탈퇴 여부를 신중하게 결정해 주시기 바랍니다. <br>
						또한, 재가입은 1개월후에 가능하며, 탈퇴하신 ID는 사용하실 수 없습니다.</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 프로그램 ]</span>애플리케이션 실행이 정상적으로 이루어지지 않아요.</p>
						<div class="answer">
						애플리케이션 실행이 정상적으로 이루어지지 않을 경우에는, 기존에 설치된 프로그램을 삭제하신 후 새로운 버전의 프로그램 설치를
						진행해 주세요. 기능 추가 및 성능 개선에 따른 업데이트를 진행하면서 기존 버전의 애플리케이션이 정상적으로 실행되지 않을 수
						있습니다. <br><br>
						이 점 참고하시고, 꼭 최신 버전으로 업데이트를 진행하여 주시기 바랍니다. <br>
						팝콘위드코인는 모바일 APP은 안드로이드 OS 2.3 이상에서 최적화 되어있습니다.<br>
						팝콘위드코인는 PC APPLICATION은 윈도우7, MAC OS X Leopard이상에서 최적화 되어있습니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 결제관련 ]</span>신용카드일 경우</p>
						<div class="answer">
						결제하신 금액은 익월 결제 진행하신 신용카드 요금에 청구됩니다. 신용카드 결제내역에는 결제대행사인 로 표기됩니다.<br>
						타인의 카드를 허락 없이 이용하여 결제를 시도하는 것은 형사처벌의 대상이 되오니 이점 유의하시기 바랍니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 결제관련 ]</span>휴대폰일 경우</p>
						<div class="answer">
						결제하신 금액은 익월 결제 진행하신 휴대폰 요금에 포함되어 청구됩니다.<br>
						타인의 휴대폰 허락 없이 이용하여 결제를 시도하는 것은 형사처벌의 대상이 되오니 이점 유의하시기 바랍니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 결제관련 ]</span>계좌이체의 경우</p>
						<div class="answer">
						결제하신 금액은 인증 절차를 거친 은행계좌에서 자동이체 됩니다. <br>
						인증 절차를 거친 은행계좌 내역에는 ㈜빌게이트로 표기됩니다. 타인의 정보를 무단, 이용하여 결제를 진행하는 것은 형사처벌의
						대상이 되오니 이점 유의하시기 바랍니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 결제관련 ]</span>무통장 입금의 경우</p>
						<div class="answer">무통장 입금으로 결제를 원하는 고객은 입금 은행과 예금주 명을 확인하신 후 입금을 진행하시면 됩니다.
						입금자명은 기재하신 사항과 동일하여야 입금확인이 완료됩니다.<br>
						정확한 결제 금액을 입금해 주시고 결제선택 후 48시간 이내에 입금확인이 되지 않는 경우, 자동취소가 되오니 이점 유의해 주세요.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 결제관련 ]</span>가상계좌의 경우</p>
						<div class="answer">가상계좌 결제 신청 후 1시간 내로 입금 확인이 되지 않는 경우, 자동취소 되니 이점 유의해 주시기 바랍니다.</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 결제관련  ]</span>환불을 원할 경우엔 어떻게 해야 하나요?</p>
						<div class="answer">회원이 자신의 ID를 통해 결제한 유료 서비스 및 충전한 팝콘 잔여액에 대한 환불을 요청하면 적법한 절차에
						따라 7일 이내 환불 받을 수 있습니다. <br><br>
						단 수납확인이 필요한 결제수단의 경우에는 수납확인일로부터 영업일 7일 이내에 이를 환불내용을 확인할 수 있습니다.<br>
						단, 환불 받으려고 하는 ID에 남은 팝콘(가)이 10개 이하인 경우 혹은 회사의 서비스에서 탈퇴한 경우에는 환불이 불가능합니다.
						또한, 유료 서비스의 경우 이미 사용한 부분에 대한 환불은 불가능합니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 환전관련  ]</span>팝콘 환전은 어떻게 해야 하나요?</p>
						<div class="answer">
						① 환전 금액이 20,000원 이상 인 경우부터 현금으로 지급 신청이 가능합니다.<br>
						② 환전 신청한 금액과 관계없이 소득세 3%, 주민세 0.3%가 적용됩니다.<br>
						환전 금액의 계산<br>
						※ 일반 MC의 경우<br>
						-팝콘 1개 = 60원<br>
						-팝콘 환전 환산액 : 환전 신청한 팝콘 개수 * 60 원<br>
						-원천징수 세액 : 팝콘 환전 환산액 * 3.3%(소득세 3%, 주민세 0.3%)<br>
						-실수령액 : 팝콘 환전 환산액 - 원천징수 세액<br>
						* 단, 개인별로 환전 지급률은 다를 수 있습니다. 최대 개당 80원 까지<br>
						③ 현금으로 지급 받기 위해서는 본인 확인 절차를 거쳐야 합니다. 가입자 명의의 신분증 사본과 입금 받으실 통장 사본을 보내주시면
						본인 확인 절차를 거친 후 환전 신청금액을 지급해드리겠습니다. 본인 확인이 이뤄지지 않으면 지급 신청이 거절될 수 있습니다.<br>
						④ 본인확인을 위한 개인정보는 본인확인용으로만 사용되며, 담당자 확인 후 즉시 폐기 처리됩니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 아이템관련 ]</span>팝콘은 무엇인가요?</p>
						<div class="answer">팝콘은 팝콘위드코인의 모든 아이템을 구매할 수 있고 방송 시청자가 MC에게 선물할 수 있는 유료 아이템 중
						하나입니다. 방송을 즐겁게 시청하시고 MC에게 팝콘을 선물하시면 해당 MC의 팬이 되실 수 있습니다. 팬이 되시면 팬 만이 누릴
						수 있는 특권을 즐기실 수 있습니다.<br>
						또한, 팝콘으로 VOD다시보기 서비스등 다양한 컨텐츠를 이용하실 수 있으며, 선물 받은 팝콘은 현금으로 환전이 가능합니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 아이템관련 ]</span>팝콘 충전은 어떻게 하나요?</p>
						<div class="answer">
						팝콘위드코인 의 팝콘 페이지에서 팝콘을 구매하실 수 있습니다.<br>
						구매하기 버튼을 클릭하여 결제 방법을 선택하고 구매하시면 구매완료. 구매하신 팝콘의 유효기간은 구매일로부터 5년이며,
						유효기간이 지난 팝콘은 사용 및 환불이 불가합니다.
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 기 타 ]</span>팝콘위드코인 시청기준 안내입니다.</p>
						<div class="answer">
						즐겁고, 건전한 방송문화 정착을 위한 팝콘위드코인의 시청기준을 알려드립니다.<br>
						1. 음란물 조장<br>
						- 방송자로 하여금 음란물을 방송 하도록 조장하거나 압력을 행사하는 시청자<br>
						2. 욕설 또는 비방<br>
						- 욕설 또는 비방으로 방송에 지장을 주는 시청자<br>
						3. 무단 파일 생성 및 유포<br>
						- 방송자의 동의 없이 녹화 파일 생성 및 유포하는 시청자<br>
						4. 방송 방해<br>
						- 방송자의 방송을 이유 없이 방해 하는 시청자<br>
						5. 비(非)매너 행위<br>
						- 게시글 작성 시 예의를 지키지 않거나 욕설을 하는 시청자<br>
						6. 팝콘위드코인 비방<br>
						- 팝콘위드코인를 악의적으로 비방하는 시청자<br>
						7. 기타<br>
						- 팝콘위드코인 서비스에 중대한 지장을 준다고 판단되는 시청자<br>
						위의 시청기준을 반드시 지켜 주시기 바라며, 위반 시 경고 없이 차단 및 강제 탈퇴 처리 합니다. 이 경우 이미 구매한 팝콘, 풀방
						입장권 등의 아이템은 환불되지 않습니다. 또한 사안에 따라 개별 방송자 및 팝콘위드코인에 의해 고소, 고발 될 수 있음을 인지 하시기
						바랍니다.<br>
						8. 이용제한 및 정지<br>
						-회원이 위의 시청기준 안내 사항을 위반하고 팝콘위드코인의 건전한 시청 환경 조성을 방해할 시에는 다움과 같은 제재가 이루어집니다.<br>
						▶시청자 위반 시 제재<br>
						경고는 방송자의 강제퇴장을 포함하며 이와 같은 경고가 누적이 되면 저희는 회원님들께 다음과 같은 제재를 가하겠습니다.<br>
						- 차단, 경고 누적(블랙리스트 등록) 7회: 30일간 이용정지
						(단, 위반 사실이 중 할 경우 이용 정지, 회원자격박탈이 이루어 질 수 있습니다.)
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 기 타 ]</span>팝콘위드코인 방송기준 안내입니다.</p>
						<div class="answer">
						팝콘위드코인는 방송통신 심의위원회의 심의기준을 준수합니다.<br>
						즐겁고, 건전한 방송문화 정착을 위해 팝콘위드코인의 방송기준을 알려드립니다.<br><br>

						1. 저작권 침해 방송<br>
						① 저작권이 해결되지 않는 스포츠 중계, 영화, 드라마와 같은 방송중계<br>
						② 회사 또는 개인이 명백한 저작권을 가지고 있는 컨텐츠<br>
						③ 타 방송자의 동의 없는 도방(도둑방송) 및 녹화방송, 캠 방송(국내, 국외 모두 허용하지 않음)을 방송<br><br>
						2. 음란물 및 노출방송<br>
						① 음란(포느로,야동)물 동영상이나 혐오스러운 행위나 사진, 동영상 등을 방송<br>
						② 방송 중에 과도한 신체 노출을 하는 경우 (과도한 신체 노출의 범위는 아래에 표기된 정보통신 윤리위원회의 심의세칙 7조 1항 1의 신체 노출 범위를 참조)<br>
						③ 과도한 노출을 하지 않더라도 신음소리 등으로 자위행위 등의 성행위를 묘사하거나 표현할 경우<br>
						④ 허용되는 범위 이상의 노출을 할 경우(노출범위란? 19세금 설정 후 과도하지 않은 란제리나 비키니 의상 착용 등)<br>
						⑤ 미성년자를 연상케 하는 의상 착용시(예:교복)에는 노출범위가 더욱 엄격하게 제한<br>
						(미성년자를 성적대상으로 연상케 하는 행위는 법과 사회규범에 의해 엄격히 금지되어 있기 때문에 더욱 엄격하게 제한)
						⑥ 위의 규정되어 있지 아니하더라도 아래에 명기된 정보통신 윤리위원회의 심의세칙 제 7조 (음란성에 관한 기준)에서 정한 바에 따라 음란물로 정의되는 경우<br><br>
						3. 사기,욕설 방송<br>
						① 계좌 입금 요구 등의 사기 행위<br>
						② 심한 욕설이나 남을 비방하는 방송<br>
						③ 타인(팝콘위드코인, 타 시청자 또는 타 방송자)를 비방하기 위한 목적에서 만들어진 방송<br>
						④ 기타 팝콘위드코인의 사업 목적에 저촉되거나 팝콘위드코인의 영업을 방해하는 방송 등은 혀용 되지 않으니 위의 방송기준을 반드시 지켜 주시기 바라며, 위반할 시에는 다음과 같은 팝콘위드코인 규정에 따라 조치되며 이에 따른 불이익을 감수하여야 함을 반드시 인지하기 바랍니다.<br>

						■ 1회 적발 시<br>
						1. 원칙: 경고 및 이용정지(로그인 불가) 최소 1일 (위반 사실이 중할 경우 정지기간이 늘어날 수 있음)<br>
						예외: {위반 사실이 중 할 경우 예: 저작권 침해방송(도방 등)}정지 기간 동안 방송 및 시청 자격 박탈뿐 아니라 영구정지 및 회원자격 박탈<br>
						2. 기존에 환전 신청한 팝콘의 경우 기존 지급예정일에 지급하지 않고 15일간 추가 지급유예<br>
						3. 환전신청을 하지 않은 팝콘이 있는 경우에 방송정지 기간 중에 환전신청 할 수 없음<br>
						4. 방송기준을 위배하여 적발된 당일에 후원 받은 팝콘의 경우 환전신청 불가함<br>

						■ 2회 적발 시 (누적)<br>
						1. 원칙: 경고 및 이용정지 최소 3일 (위반 사실이 중할 경우 정지기간이 늘어날 수 있음)<br>
						예외: (위반 사실이 중 할 경우)정지 기간 동안 방송 및 시청 자격 박탈뿐 아니라 영구정지 및 회원자격 박탈<br>
						2. 기존에 환전 신청한 팝콘의 경우 기존 지급예정일에 지급하지 아니하고 30일간 추가 지급유예 함<br>
						3. 환전신청을 하지 않은 팝콘이 있는 경우에 방송정지일로부터 30일간 환전신청 할 수 없음<br>
						4. 방송기준을 위배하여 적발된 당일에 후원 받은 팝콘의 경우 환전신청 불가함<br>
						5. 위의 내용에 따라 1회 적발 시에도 경고 및 한시적인 방송정지 등 유예조치를 취하는 대신에, 2회 적발 시에 적용되는 중징계 조치 (영구정지, 방송국폐쇄, 회원자격 박탈 포함)가 취해질 수 있으며, 또한 사안에 따라 팝콘위드코인에 의해 고소, 고발 당할 수 있음<br>

						■ 3회 적발 시 (누적)<br>
						1. 원칙: 경고 및 이용정지 최소 7일 (위반 사실이 중할 경우 정지기간이 늘어날 수 있음)<br>
						예외: (위반 사실이 중 할 경우)정지 기간 동안 방송 및 시청 자격 박탈뿐 아니라 영구정지 및 회원자격 박탈<br>
						2. 기존에 환전 신청한 팝콘의 경우 기존 지급예정일에 지급하지 아니하고 60일간 추가 지급유예 함<br>
						3. 환전신청을 하지 않은 팝콘이 있는 경우에 방송정지일로부터 60일간 환전신청 할 수 없음<br>
						4. 방송기준을 위배하여 적발된 당일에 후원 받은 팝콘의 경우 환전신청 불가함<br>
						5. 위의 내용에 따라 1회 적발 시에도 경고 및 한시적인 방송정지 등 유예조치를 취하는 대신에, 2회 적발 시에 적용되는 중징계 조치를(영구정지, 방송국폐쇄, 회원자격 박탈 포함) 포함하여 취해질 수 있으며, 또한 사안에 따라 팝콘위드코인에 의해 고소, 고발 당할 수 있음<br>

						▶ 팝콘위드코인는 방송을 수시로 모니터 하며 방송 심의기준을 지키기 위해 노력하고 있습니다. 직접 모니터 하지 못하는 경우를 대비하여 방송 캡쳐를 진행하여 건전하고 즐거운 방송 문화 정착을 위해 노력합니다. 방송 캡쳐화면의 경우 방송심의 기준 준수 확인 목적을 위하여만 사용합니다.<br>

						아래는 법률에서 정의하는 음란물의 정의 입니다.<br>
						아래 내용을 숙지하셔서 각종 불이익을 당하시지 않도록 주의해 주시기 바랍니다.<br><br>

						[ 음란물의 정의 ]<br>
						정보통신 윤리위원회에서 심의세칙<br>
						제7조(음란성에 관한 기준)<br>
						① 심의규정 제15조 제1호에 해당하는 내용은 다음 각 호와 같다.<br>
					　1. 신체노출<br>
					　　가. 남녀의 성기, 국부, 음모 또는 항문(이하 '남녀의 성기 등'이라 한다)이 노출되거나 투명한 의상 등을 통해 비치는 내용<br>
					　　나. 착의상태라도 남녀의 성기 등이 지나치게 강조되거나 근접 촬영되어 윤곽 또는 굴곡이 드러난 내용<br>
					　2. 성행위<br>
					　　가. 이성 또는 동성간의 정사, 구강성교, 성기애무 등 성행위를 직접적으로 묘사한 내용<br>
					　　나. 신체의 일부 또는 성 기구를 이용한 자위행위 묘사 내용<br>
					　　다. 성행위시 기성을 수반한 신음소리를 묘사한 내용<br>
					　　라. 수간, 혼음, 성고문 등 변태성욕을 묘사한 내용<br>
					　　마. 성폭력, 강간, 윤간 등 성범죄를 구체적•사실적으로 묘사하거나 미화한 내용<br>
					　3. 기타<br>
					　　가. 어린이 또는 청소년을 성 유희의 대상으로 묘사한 내용<br>
					　　나. 남녀의 성기를 저속하게 표현한 내용<br>
					　　다. 불륜관계, 근친상간 등 패륜적•반인륜적 성행위를 자세하게 소개하거나 흥미위주로 묘사한 내용<br>
					　　라. 매춘 등 불법 성행위를 정당하게 묘사한 내용<br>
					　　마. 신체부위에 과도한 문신•낙인, 변태적 복장•장신구 등을 부착하여 혐오감을 주는 내용<br>
					　　바. 방뇨•배설시의 오물, 인체에 부착된 오물, 정액 및 여성생리 등을 묘사하여 혐오감을 주는 내용<br>
					　　사. 출산상황을 저속•흥미위주로 묘사하여 혐오감을 주는 내용<br>
					　　아. 매춘, 사이버섹스, 노골적인 성적대화 등 성적유희 대상을 찾거나 매개하는 내용<br>
					　　자. 음란정보 또는 퇴폐업소가 있는 장소를 안내 또는 매개하는 내용<br><br>

						[ 19세 이상의 자료 ]<br>
						국내 영상물등급위원회 또는 이에 준하는 기관으로부터 19세 또는 18세 이상 자료로 판정 받은 자료를 의미 합니다.<br>
						즉 국내 기관의 심의를 거쳐 합법적으로 19세 이상 성인에게 유통 혹은 배포 할 수 있는 자료를 의미합니다.<br>
						※ 저작권 자료를 공유하실 경우에는 저작권 관련 법률에 따라 처벌 받으실 수 있습니다.<br>
						[ 음란물 및 19세 이상 자료의 무분별한 공유 시 처벌 사항 ]<br>
						- 전기통신 기본법: 음란물의 규제와 관련해서는 "전기통신 역무를 이용하여 음란한 부호 . 문헌 . 음향 또는 영상을 반포 . 판매 또는 임대하거나 공연히 전시한 자는 1년 이하의 징역 또는 1천만원 이하의 벌금에 처한다고 규정<br>
						- 형법 : "음란한 문서 . 도화 . 필름 기타 물건을 반포 . 판매 또는 임대하거나 공연히 전시 또는 상영한자" 및 이러한 "행위에 공할 목적으로 음란한 물건을 제조 . 소지 . 수입 또는 수출한 자"는 각각 1년 이하의 징역 또는 500만원 이하의 벌금에 처한다고 규정<br>
						- 청소년 보호법 : 청소년 유해 매체물을 청소년을 대상으로 판매, 대여, 배포하거나 시청 . 관람 . 이용에 제공하는 행위를 3년 이하의 징역 또는 2천 만원 이하의 벌금에 처하도록 규정
						</div>
					</li>
					<li>
						<p class="question"><span class="category">[ 기 타 ]</span>불건전한 방송, 욕설 등을 신고하고 싶은데 어떻게 하면 되나요?</p>
						<div class="answer">
						팝콘위드코인 홈 > 고객센터 > 신고하기<br>
						제목과 신고하고자 하는 회원의 아이디를 입력하시고, 신고의 종류를 선택하시고 내용을 입력하여 신고 하실 수 있습니다.
						더욱 정확하고 신속한 처리를 원하시면 신고하시는 내용과 관련된 파일을 첨부해 주시면 더욱 신속하게 처리해 드리겠습니다.
						</div>
					</li>
				</ul>
			</div>
		</div>

	<div class="snb">
		<h3 class="snb-title">고객센터</h3>
		<ul>

			<li class=""><a href="/style/common/customer/customer_list.asp">공지사항</a></li>
			<li class="on"><a href="/style/common/customer/qna.asp">자주묻는 질문</a></li>
			<li class=""><a href="javascript:signAlert()">일대일 문의하기</a></li>
			<li class=""><a href="javascript:signAlertReturn('/style/common/customer/castCoinBack_list.asp');">방송 민원</a></li>
			<li class=""><a href="/style/common/customer/cancel_withdrawal.asp">탈퇴 아이디 복구</a></li>
			<li class=""><a href="javascript:signAlert()">제안하기</a></li>
			<li class=""><a href="javascript:signAlert();">방송 및 장애신고</a></li>

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
