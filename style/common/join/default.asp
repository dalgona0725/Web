
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>팝콘위드코인</title>
<link rel="shortcut icon" href="https://pic.popkontv.com/images/aspw/favi/P-00139.ico">



<!-- css -->
<link rel="stylesheet" href="/style/common/css/all.css?2021-06-15 오후 12:03:09">
<link rel="stylesheet" type="text/css" href="/style/type1/assets/css/content.css?2021-06-15 오후 12:03:09">

<link rel="stylesheet" href="/style/common/css/jquery.bxslider.css">

<link rel="stylesheet" href="/css/common/swiper.min.css">
<!-- 레벨 css -->
<link rel="stylesheet" href="/css/common/level.css">

<!-- js -->
<script src="/style/common/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugin/plugin.min.js"></script>
<script src="/style/type1/assets/js/common.js"></script>
<script type="text/javascript" src="/style/common/js/default.js?2021-06-15 오후 12:03:09"></script>
<script src="/style/common/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="/js/plugin/swiper.min.js"></script>
<!-- 레벨 팝업 -->
<script src="/js/levelupPopup.js" type="text/javascript"></script>
<script type="text/javascript" src="https://code.popkontv.com/enm-1.0.0.js"></script>

<script src="https://www.google.com/recaptcha/api.js"></script>
<script>
function onKeyDown() {
	var pressedKey = String.fromCharCode(event.keyCode).toLowerCase();
	if (event.ctrlKey && (pressedKey == "c" || pressedKey == "v")) {
		event.returnValue = false;
	}
}
$(document).ready(function(){
//selectbox
	var select = $("select.select_option");
		select.change(function(){
		 var select_name = $(this).children("option:selected").text();
		 $(this).siblings("label").text(select_name);
	 });
//약관레이어팝업
   $('a.usage-popup').click(function() {
		var policyPop = $(this).attr('href');

		$(policyPop).fadeIn(300);

		var popMargTop = ($(policyPop).height() + 24) / 2;
		var popMargLeft = ($(policyPop).width() + 24) / 2;

		$(policyPop).css({
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});

		$('body').append('<div id="joinMask"></div>');
		$('#joinMask').fadeIn(300);
		$('body').css({overflow:'hidden'});

		return false;
	});
	$('a.privacy-popup').click(function() {
		var policyPop = $(this).attr('href');

		$(policyPop).fadeIn(300);

		var popMargTop = ($(policyPop).height() + 24) / 2;
		var popMargLeft = ($(policyPop).width() + 24) / 2;

		$(policyPop).css({
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});

		$('body').append('<div id="joinMask"></div>');
		$('#joinMask').fadeIn(300);
		$('body').css({overflow:'hidden'});

		return false;
	});
	$(document).on("click", '.popCancel, #joinMask', function() {
		$('#joinMask , .l-popup').fadeOut(300 , function() {
		$('#joinMask').remove();
		$('body').css({overflow:'visible'});
	});
		return false;
	});

});
</script>
</head>
<body ondragstart="return false;" ondrop="return false;">
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
		<h3 class="sub-title mB20">무료 회원가입<span class="sub">팝콘위드코인 무료 회원가입입니다.</span></h3>
		<div class="join">
		    <p class="title"><strong>무료</strong> 회원가입</p>
		    <table class="tbl-join mT20">
		        <caption>회원가입 테이블</caption>
		        <colgroup>
		            <col style="width:170px">
		            <col>
                </colgroup>
		        <tbody>
		            <tr>
		                <th scope="row"><label for="join-id">아이디</label></th>
		                <td style="font-size:0;">
		                    <input type="text" class="basic user"name="signId" id="signId" placeholder="아이디를 입력해주세요." style="width:240px;" onkeydown="onKeyDown();" onpaste="return false;" oncopy="return false;">
		                    <button type="button" id="btn_idUseCheck" class="btn-basic enter" style="width:130px;margin-left:5px;">확 인</button>
		                    <div id="btn_idUseCheck_ok" class="join-message correct"></div>
		                </td>
		            </tr>
		            <tr>
		                <th scope="row"><label for="join-pw">비밀번호</label></th>
                        <td>
                            <input type="password" class="basic pw" id="signPwd" name="signPwd" title="비밀번호는 6~20자 영문, 숫자, 특수문자만 사용 가능합니다." placeholder="6~20자 영문, 숫자, 특수문자만 사용 가능합니다." maxlength="20" onkeydown="onKeyDown();" onpaste="return false;" oncopy="return false;">
                        </td>
                    </tr>
		            <tr>
		                <th scope="row"><label for="join-pw2">비밀번호확인</label></th>
                        <td>
		                    <input type="password" class="basic pw" id="signPwdChk" name="signPwdChk" title="비밀번호를 한번 더 입력해주세요." placeholder="비밀번호를 한번 더 입력해주세요." maxlength="20" onkeydown="onKeyDown();" onpaste="return false;" oncopy="return false;">
                        </td>
                    </tr>
		            <tr>
		                <th scope="row"><label for="join-nick">닉네임</label></th>
                        <td style="font-size:0;">
		                    <input type="text" class="basic user" id="nickName" name="nickName" placeholder="사용할 닉네임을 입력해주세요." style="width:240px;" onkeydown="onKeyDown();" onpaste="return false;" oncopy="return false;">
		                    <button type="button" class="btn-basic enter" id="btn_nickUseCheck" style="width:130px;margin-left:5px">조회</button>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"></th>
                        <td>
                            <div id="nickName_chk" name="nickName_chk" class="join-message correct">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="join-phone">휴대폰 번호</label></th>
                        <td style="font-size:0;">
                            <input type="text" id="cell_number" maxlength="11" class="basic" title="휴대전화번호 입력" placeholder="휴대전화번호를 입력해주세요." style="width:240px">
                            <button type="button" class="btn-certify btn-basic enter btn_smsSend" id="btnSendSms" style="width:130px;margin-left:5px">인증번호 발송</button>
                        </td>
                    </tr>
                    <tr class="js_smscert" style="display:none">
                        <th scope="row"><label for="join-phone">인증번호</label></th>
                        <td>
                            <input type="text" id="cert_number" placeholder="인증번호 4자리를 입력해주세요." class="basic" style="width:250px">
                            <button type="button" id="cert_verify" class="btn-certify btn-basic enter">확 인</button>
                            <div class="highlight"><a class="tdu btn_smsSend">인증번호 재발송</a> <span class="js_smsTime">05:00</span></div>
                        </td>
                    </tr>

                </tbody>
		    </table>
            <div id="certifyView">

                <div class="agree-box mT20" style="display:block">
                    <table class="tbl-join-policy">
                        <caption>약관동의 테이블</caption>
                        <colgroup>
                            <col style="width:400px">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <td colspan="2">
                                    <input type="checkbox" id="agree1" name="agree1" class="check-type01">
                                    <label for="agree1"><span></span>전체약관에 동의합니다.</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="agree2" name="agree2" class="check-type01">
                                    <label for="agree2"><span></span>이용약관을 모두 읽었으며 동의합니다. <em class="point">(필수)</em></label>
                                </td>
                                <td>
                                    <a href="#usage-popup" class="usage-popup" title="이용약관보기">[이용약관보기]</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" id="agree3" name="agree3" class="check-type01">
                                    <label for="agree3"><span></span>개인정보 취급방침을 모두 읽었으며 동의합니다. <em class="point">(필수)</em></label>
                                </td>
                                <td>
                                    <a href="#privacy-popup" class="privacy-popup" title="개인정보 취급방침보기">[개인정보 취급방침보기]</a>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="checkbox" id="agree4" name="agree4" class="check-type01">
                                    <label for="agree4"><span></span>고객문의 및 아이디/비번찾기,유료상품결제 고객대응 한정 전화번호 활용에 동의합니다.<em class="point">(필수)</em></label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="checkbox" id="agree5" name="agree5" class="check-type01">
                                    <label for="agree5"><span></span>이벤트 / 마케팅 SMS 수신동의 <em>(선택)</em></label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="mT60 txt-center">
                    <button type="button" id="btn_submit" class="btn-basic sizeL" style="width:550px">회원가입하기</button>
                </div>
            </div>
            <ul class="hyphen-list mT25">
                <li>정보통신망 이용촉진 및 정보보호 등에 관한 법률 제23조의 2(주민등록번호의 사용제한)에 따라 어떠한 경우라도 주민등록번호를 수집하지 않습니다.</li>
                <li>휴대폰 실제 소유자와 명의인이 다를 경우 인증 받을 수 없으며 타인의 개인정보를 도용할 경우 관계법에 의해 처벌될 수 있습니다.</li>
                <li>본인 명의의 휴대폰만 사용가능하며 약관 외 다른 용도로 사용되지 않습니다.</li>
            </ul>
		</div>
        <div class="clear"></div>
	</section>
    <script type="text/javascript">
                isCaptchaSite = '0';
                partnerCode = 'P-00139';

                //* isIdUseChk
                var $isIdUseChk = false;
                var $isNickUseChk = false; // 2018-01-09 add
                var $isSmsSendChk = false;
                var $certiSmsChk = false;
                var $certPhoneChk = false;
                var $certIpinChk = false;
				var pgCheck = 'danal';
                var $certCheckNo;

                function recaptchaCallback() {
                    alert('자동가입방지 인증 후 시간이 지연되었습니다.\n처음부터 다시 진행해 주세요');
                    location.reload();
                };

                $(document).ready(function(){

                    //* exp
                    var regExp_cellNumber = /^\d{10,11}/;
                    var regExp_smsConfrim = /^\d{4,6}/;
                    var regExp_signId = /^[A-Za-z0-9]{4,25}$/;
                    //var regExp_signPw = /^[A-Za-z0-9]{4,20}$/;
                    //var regExp_signPw = /^[`~!@#$%^&*|A-Za-z0-9]{6,20}$/;
                    var regExp_signPw = /^[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"|A-Za-z0-9]{6,20}$/;
                    var regExp_pattern = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
                    var regExp_pattern_pol = /(GREENPOL|POPKONMC|POLICE)/i;
                    var regExp_pattern2 = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
					//var regExp_nick = /^[A-Za-z0-9ㄱ-ㅎ가-힣]{2,8}$/;
					var regExp_nick = /^[A-Za-z0-9ㄱ-ㅎ가-힣×÷<>♡♥☆★)(*@!_♤♧{}\[\]¥£€$◇■□●○•※《》＃＆*±%^◎◇◆△▲▽▼→←↑↓↔◁◀▷▶♠♣☜☞♨☏☎♩♪♬㉿㈜™/-]{2,8}$/;

                    //ipinCheck
                    function fnPopup(){
                        window.open('/ipinCheck/join/ipin_gate.asp', 'popupIPIN2', 'width=450, height=550, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
                    }

                    //아이디 입력시 한글, 특수문자 체크
                    function h_check(Objectname) {
                        var intErr
                        var strValue = Objectname
                        var retCode = 0
                        var re = /[~!@\#$%<>^&*\()\-=+_\']/gi; //특수문자 정규식 변수 선언

                        for (i = 0; i < strValue.length; i++) {
                            var retCode = strValue.charCodeAt(i)
                            var retChar = strValue.substr(i,1).toUpperCase()
                            retCode = parseInt(retCode)

                            //입력받은 값중에 한글이 있으면 에러
                            if ( (retChar < "0" || retChar > "9") && (retChar < "A" || retChar > "Z") && ((retCode > 255) || (retCode < 0)) ) {
                                intErr = -1;
                                break;
                                //입력받은 값중에 특수문자가 있으면 에러
                            } else if(re.test(strValue)) {
                                intErr = -1;
                                break;
                            }
                        }
                        return (intErr);
                    }

                    //* signId key
                    $('#signId').bind('change',function(){
                        $isIdUseChk = false;
                    });

                    //* btn_idUseCheck
                    $('#btn_idUseCheck').bind('click',function(evt){
                        evt.preventDefault();
                        if( $('#signId').val()=='' ){
                            alert( "아이디를 입력해주세요." );
                            $('#signId').focus();
                        }else if(h_check($('#signId').val()) === -1 ){
                            alert('아이디는 한글/특수문자를 사용할 수 없습니다.');
                            $('#signId').val('');
                            $('#signId').focus();
                        }else if($('#signId').val().length < 4){
                            alert('ID를 4글자 이상 입력해 주세요');
                            $('#signId').focus();
                        }else{

                            //console.log($('#signId').val());

                            $.ajax({
                                type : 'POST',
                                url : 'idUseCheck.asp',
                                dataType : 'JSON',
                                data : {
                                    signId : $('#signId').val()
                                },
                                success : function(result,textStatus){
                                    var objJson = result;
                                    if(objJson.idUseCheck.rstCode=='0'){
                                        $isIdUseChk = true;

                                        //alert(objJson.idUseCheck.rstMsg);
                                        $("#btn_idUseCheck_ok").text("사용 가능한 아이디 입니다.").removeClass("error").addClass("correct");
                                    }else{
                                        $isIdUseChk = false;
                                        $("#btn_idUseCheck_ok").text("중복된 아이디입니다.").removeClass("correct").addClass("error");
                                        //alert(objJson.idUseCheck.rstMsg);
                                    }
                                },
                                error : function(xhr, textStatus, errorThrown){
                                    alert('아이디 중복확인을 할 수 없습니다.');
                                }
                            });
                        }
                    });
/*
                    // 한글 자음모음 깨지는 문제로 인한 미사용
                    $('#nickName').bind('keydown keyup',function(evt){
                        var keyCode = evt.which;
                        var noKeyCode = ',9,10,13,16,17,18,19,20,27,32,33,34,35,36,37,38,39,40,45,46,144,145,';
                        if(noKeyCode.indexOf(',' + keyCode + ',') > -1){
                            evt.preventDefault();
                        }

                        this.value = reverseCharRemove($(this).val());
                    });
*/
                    $('#nickName').bind('paste',function(evt){
                        evt.preventDefault();
                        this.value = reverseCharRemove($(this).val());
                    });

                    $('#nickName').bind('change',function(){
                        this.value = reverseCharRemove($(this).val());
                    });

                    function reverseCharRemove(v){
                        if (v.indexOf('&#8238') !== -1) {
                            return v.replace('&#8238', '');
                        }
                        return v;
                    }

                    //btn_nickUseCheck 2018-01-04 add
                    $('#btn_nickUseCheck').bind('click',function(evt){
						var chkNickName = $('#nickName').val();

						// 공백 특수문자 체크 좌/우 다른 특수문자
						if (chkNickName.indexOf('ㅤ') > -1 || chkNickName.indexOf('ᅠ') > -1) {
							$("#nickName_chk").text("닉네임은 한글,영문,숫자,일부 특수문자 2~8자 이내로 입력하세요.").removeClass("correct").addClass("error");
							$('#nickName').focus();
						}

                        if( $('#nickName').val()=='' ){
                            alert( "닉네임을 입력해주세요." );
                            $('#nickName').focus();
                        }else if(!regExp_nick.test($('#nickName').val())){
                            $("#nickName_chk").text("닉네임은 한글,영문,숫자,일부 특수문자 2~8자 이내로 입력하세요.").removeClass("correct").addClass("error");
                            $('#nickName').val('').focus();
                        }else{
                            //console.log($('#nickName').val());

                            $.ajax({
                                type : 'POST',
                                url : 'nickUseCheck.asp',
                                dataType : 'JSON',
                                data : {
                                    nickName : $('#nickName').val(),
                                    txt:'txt',
                                    emptyValue: '1234567890'
                                },
                                success : function(result,textStatus){
                                    var objJson = result;
                                    if(objJson.nickUseCheck.rstCode=='0'){
                                        $isNickUseChk = true;
                                        $("#nickName_chk").text("사용 가능 합니다.").removeClass("error").addClass("correct");
                                        //alert(objJson.nickUseCheck.rstMsg);
                                    }else{
                                        $isNickUseChk = false;
                                        $("#nickName_chk").text("사용 불가능 합니다.").removeClass("correct").addClass("error");
                                        //alert(objJson.nickUseCheck.rstMsg);
                                    }
                                },
                                error : function(xhr, textStatus, errorThrown){
                                    alert('닉네임 중복확인을 할 수 없습니다.');
                                }
                            });
                        }
                    });

                    $('#agree1').bind('click',function(evt){
                        var checkagree1 = $("input[name=agree1]");
                        var checkagree2 = $("input[name=agree2]");
                        var checkagree3 = $("input[name=agree3]");
                        var checkagree4 = $("input[name=agree4]");
                        var checkagree5 = $("input[name=agree5]");
                        if (checkagree1.prop("checked"))
                        {
                            checkagree2.prop("checked", true);
                            checkagree3.prop("checked", true);
                            checkagree4.prop("checked", true);
                            checkagree5.prop("checked", true);
                        } else {
                            checkagree2.prop("checked", false);
                            checkagree3.prop("checked", false);
                            checkagree4.prop("checked", false);
                            checkagree5.prop("checked", false);
                        }
                    });

                    var smsSec=0;
                    //* sms exe
                    smsExecute = function(){
                        if(smsSec > (4*60)){
                            alert("1분 이후에 재발송 가능합니다.");
                            return;
                        }
                        $.ajax({
                            type : 'POST',
                            url : '/sendSms/sms_confirm.asp',
                            dataType : 'JSON',
                            data : {
                                cell_number : $('#cell_number').val()
                            },
                            success : function(result,textStatus){
                                var objJson = result;
                                alert(objJson.sms_confirm.rstMsg);
                                $isSmsSendChk = true;
                                $(".js_smscert").show();
                                clearTimeout(smsTimer);
                                smsTimeCheck(5*60);

                                $certCheckNo = $('#cell_number').val();
                                $('#cert_number').val('');
                                $('#cert_verify').removeClass('btn_no_active');
                                $('#cert_verify').attr('disabled',false);
                                $("#btnSendSms").attr('disabled',true);
                                $("#btnSendSms").addClass('btn_no_active');
                            },
                            error : function(xhr, textStatus, errorThrown){
                                $isSmsSendChk = false;
                                alert('인증번호를 발송할 수 없습니다.');
                            }
                        });
                    }

                    var smsTimer;
                    function smsTimeCheck(restSec){
                        if(restSec==0){
                            alert("인증번호 유효시간이 초과 되었습니다.");
                            location.reload();
                            return;
                        }
                        var txtMin, txtSec;
                        txtMin = Math.floor(restSec/60);
                        if (txtMin < 10){
                            txtMin = "0"+txtMin;
                        }
                        txtSec = Math.round(restSec % 60);
                        if (txtSec < 10){
                            txtSec = "0"+txtSec;
                        }
                        $(".js_smsTime").text(txtMin+":"+txtSec);
                        smsSec = restSec;
                        smsTimer = setTimeout(function(){
                            smsTimeCheck(restSec-1)
                        }, 1000);
                    }

                    /*
                    $('#btn_capcha').on('click', function () {
                        var objImage = $("#imgCaptcha");
                        var now = new Date();
                        objImage.attr("src",  objImage.attr("src").split('?')[0] + '?x=' + now.toUTCString());
                    });
                    */

                    $('.btn_smsSend').bind('click',function(evt){
                        evt.preventDefault();

                        if( $('#signId').val()=='' ){
                            alert('ID를 입력해주세요');
                            $('#signId').focus();
                        }else if( !$isIdUseChk ){
                            alert('사용할 아이디의 중복 확인을 하세요.');
                            $('#signId').focus();
                        }else if( $('#signId').val().length < 4 ){
                            alert('ID를 4글자 이상 입력해 주세요');
                            $('#signId').focus();
                        }else if( !regExp_signId.test($('#signId').val()) ){
                            alert( $('#signId').attr('title') );
                            $('#signId').focus();
                        }else if( $('#signPwd').val()=='' ){
                            alert('비밀번호는 6~20자 영문, 숫자, 특수문자만 사용 가능합니다.');
                            $('#signPwd').focus();
                        }else if( $('#signPwd').val().length < 6 ){
                            alert('비밀번호는 6~20자 영문, 숫자, 특수문자만 사용 가능합니다.');
                            $('#signPwd').focus();
                        }else if( !regExp_signPw.test($('#signPwd').val()) ){
                            alert( $('#signPwd').attr('title') );
                            $('#signPwd').focus();
                        }else if($('#signPwdChk').val() == ''){
                            alert('비밀번호를 한번 더 입력해주세요.');
                            $('#signPwdChk').focus();
                        }else if( $('#signPwd').val() != $('#signPwdChk').val() ){
                            alert('비밀번호 확인이 일치하지 않습니다.');
                            $('#signPwdChk').focus();
                        }else if( $('#nickName').val()=='' ){
                            alert('닉네임을 입력해주세요');
                            $('#nickName').focus();
						/*
                        }else if( regExp_pattern2.test($('#nickName').val()) ){
                            alert('닉네임에 특수문자는 사용할 수 없습니다.');
                            $('#nickName').focus();
						*/
                        }else if( regExp_pattern_pol.test($('#nickName').val()) ){
                            alert('사용할 수 없는 닉네임 입니다');
                            $('#nickName').focus();
                        //}else if ($.trim($('#txtCaptcha').val()) === '') {
                        //	alert('보안 코드를 입력해 주세요');
                        //	$('#txtCaptcha').focus();
                        }else if( !regExp_cellNumber.test($('#cell_number').val()) ){
                            alert('휴대폰 번호를 확인해주세요.');
                            $('#cell_number').focus();
                        }else{

                            if(isCaptchaSite === '0'){
                                $("#signId").attr('disabled','disabled');
                                $("#signPwd").attr('disabled','disabled');
                                $("#signPwdChk").attr('disabled','disabled');
                                $("#nickName").attr('disabled','disabled');
                                $("#btn_idUseCheck").attr('disabled','disabled');
                                //$('#certifyView').show();
                                //$('#cell_number').attr('disabled','disabled');
                                smsExecute();
                            }else{
                                if(typeof(grecaptcha) != 'undefined'){
                                    if(grecaptcha.getResponse() == ''){
                                        alert('자동가입방지를 확인해 주세요');
                                        return false;
                                    } else {
                                        $.ajax({
                                            type: "POST",
                                            url: "recaptcha.asp",
                                            async: false,
                                            data: {
                                                response: grecaptcha.getResponse()
                                            },
                                            success: function(data) {
                                                var success = data.success;
                                                if(success === true) {
                                                    alert('자동가입방지 인증을 성공하였습니다.');
                                                    $("#signId").attr('disabled','disabled');
                                                    $("#signPwd").attr('disabled','disabled');
                                                    $("#signPwdChk").attr('disabled','disabled');
                                                    $("#nickName").attr('disabled','disabled');
                                                    $("#btn_idUseCheck").attr('disabled','disabled');
                                                    $('#cell_number').attr('disabled','disabled');
                                                    smsExecute();
                                                    //$('#certifyView').show();
                                                }else{
                                                    alert('자동가입방지 인증을 실패하였습니다.');
                                                }
                                            },
                                            error : function(xhr, textStatus, errorThrown){
                                                console.log('error');
                                            }
                                        });
                                    }
                                } else {
                                    return false;
                                }
                            }
                        }
                    });

                    $('#cell_number').bind('propertychange change keyup paste input',function(e){
                        event = e || window.event;
                        var keyID = (event.which) ? event.which : event.keyCode;
                        if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ){
                            return;
                        }else{
                            event.target.value = event.target.value.replace(/[^0-9]/g, "");
                        }
                        if($isSmsSendChk){
                            if($certCheckNo !== $('#cell_number').val()){
                                $("#cert_verify").attr('disabled',true);
                                $("#cert_verify").addClass('btn_no_active');
                            }else{
                                $("#cert_verify").attr('disabled',false);
                                $("#cert_verify").removeClass('btn_no_active');
                            }
                        }
                    })

                    $('#cert_verify').bind('click',function(evt){
                        evt.preventDefault();

                        if( !regExp_cellNumber.test($('#cell_number').val()) ){
                            alert('휴대전화번호를 입력해 주세요');
                            $('#cell_number').focus();
                        }else if( !$isSmsSendChk ){
                            alert('입력한 휴대폰으로 인증번호를 발송하세요.');
                            $('#cell_number').focus();
                        }else if(!regExp_smsConfrim.test($('#cert_number').val()) ){
                            alert('인증번호를 입력해주세요.');
                            $('#cert_number').focus();
                        }else{
                            $.ajax({
                                type : 'POST',
                                url : 'smsCheck.asp',
                                dataType : 'JSON',
                                data : {
                                    smsValue : $('#cert_number').val()
                                },
                                success : function(result,textStatus){
                                    var objJson = result;
                                    if(objJson.smsCheck.rstCode=='0'){
                                        $certiSmsChk = true;
                                        alert(objJson.smsCheck.rstMsg);
                                        $("#cell_number").attr('disabled','disabled');
                                        $(".btn_smsSend").attr('disabled','disabled');
                                        $("#cert_number").attr('disabled','disabled');
                                        $("#cert_verify").attr('disabled','disabled');
                                        $(".js_smscert").hide();
                                        //$('#certIpinPhone').hide();
                                    }else{
                                        $certiSmsChk = false;
                                        alert(objJson.smsCheck.rstMsg);
                                    }
                                },
                                error : function(xhr, textStatus, errorThrown){
                                    alert('인증번호를 확인할 수 없습니다.');
                                }
                            });
                        }
                    });

                    $('#btn_submit').bind('click',function(evt){
                        evt.preventDefault();
                        if( !$('#agree2').is(':checked') ){
                            alert('이용약관에 동의하지 않았습니다.');
                        }else if( !$('#agree3').is(':checked') ){
                            alert('개인정보취급방침에 동의하지 않았습니다.');
                        }else if( !$('#agree4').is(':checked') ){
                            alert('고객문의 및 아이디 비번찾기에 동의하지 않았습니다.');
                        }else if ($certiSmsChk){
                            join_exe();
                        }else{
                            alert("휴대폰인증을 받으신 후 가입해주시기 바랍니다.");
                        }
                    });

                    //* join_exe
                    join_exe  = function(){
                        var agree5;
                        if($('#agree5').is(':checked')){
                            agree5 = "1";
                        }else{
                            agree5 = "0";
                        }
                        $.ajax({
                            type : 'POST',
                            url : 'join_exe.asp',
                            dataType : 'JSON',
                            data : {
                                signId : $('#signId').val(),
                                signPwd : $('#signPwd').val(),
                                nickName : $('#nickName').val(),
                                //recId : $('#recId').val(),
                                cell_number : $('#cell_number').val(),
                                smsValue : $('#cert_number').val(),
                                agree5 : agree5
                            },
                            success : function(result,textStatus){
                                var objJson = result;
                                if(objJson.join_exe.rstCode=='0'){
                                	if(partnerCode === 'P-00038'){
                                        googleAnal();
                                    } else if (partnerCode == 'P-00054') {
                                        naverScript();
                                    } else if (partnerCode == 'P-00102') { //물티비
										var tenpingID =  $('#signId').val();
										var tenpingCode = "P-00139";
										var tenpingIDX = tenpingCode + "_" + tenpingID;

										TenpingScript.SendConversion(tenpingIDX);
									}

									// 인스타티비
									if (partnerCode == 'P-00008') {
										/* Event snippet for Website traffic conversion page */
										gtag('event', 'conversion', {'send_to': 'AW-590078206/bh7UCPfpguUBEP7Br5kC'});
									}

									alert('회원가입이 완료되었습니다.');

									location.href = '/join/join_complete.asp';
/*
                                    if(partnerCode === 'P-00053'){
                                        location.href='/userGuide/download.asp';
                                    }else if(partnerCode === 'P-00046' || partnerCode === 'P-00054' || partnerCode === 'P-00102' || partnerCode === "P-00075" || partnerCode === "P-00071"){
                                        location.href='/join/join_complete.asp';
                                    }else{
                                        location.href='/';
                                    }
*/
                                }else{
                                    alert(objJson.join_exe.rstMsg);
                                }
                            },
                            error : function(xhr, textStatus, errorThrown){
                                alert('회원가입 처리를 할 수 없습니다.[error]');
                            }
                        });
                    }

                    googleAnal = function(){
                        ga('send','event','member','signup',null,null);
                    }

                    naverScript = function(){
                        var _nasa={};_nasa["cnv"] = wcs.cnv("2","10");
                    }
                });
            </script>



    </script>
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
<!-- 이용약관 레이어팝업 -->

<div id="usage-popup" class="l-popup">
	<div class="join-pop-content">
		<div class="join_popup">
			<div class="policy_content">
				<h2>이용약관</h2>
				<p class="fwn">팝콘위드코인의 이용약관은 다음과 같은 내용을 담고 있습니다.</p>
				<h3>제 1 조 (목적)</h3>
				<ul>
					<li>이 약관은 더이앤엠(주)(이하 "회사"라 합니다)이 제공하는 서비스(이용고객 또는 회원이 PC, 멀티미디어 등의 각종 디지털기기-휴대형단말기 등의 각종 유무선 장치를 포함, 또는 프로그램을 통하여 이용할 수 있도록 회사가 제공하는 모든 인터넷서비스를 의미합니다. 이하 같습니다.)와 관련하여, 회사와 이용고객(또는 회원)간에 서비스 이용조건 및 절차, 회사와 이용고객간의 권리ㆍ의무 및 책임사항 기타 필요한 사항을 규정함을 목적으로 합니다.</li>
				</ul>
				<h3>제 2 조 (정의)</h3>
				<ol>
					<li>① "서비스"라 함은 접속 가능한 유 무선 단말기의 종류와는 상관 없이 이용고객(또는 회원)이 이용 할 수 있는 제반 “서비스”를 의미합니다.</li>
					<li>② "이용고객"이라 함은 회사의 "서비스"에 접속하여 이 약관에 따라"회사"가 제공하는 "서비스"를 이용하는 회원, 비회원 고객을 말합니다.</li>
					<li>③ "회원”이라 함은 회원등록을 한 자로서, 회사의 정보를 지속적으로 제공받으며, 서비스를 계속적으로 이용할 수 있는 자를 말합니다. 방송을 진행하는 회원 중에는 회사의 지원을 받아 서비스를 이용하는 회원도 있습니다.</li>
					<li>④ “비회원”이란 회원으로 가입하지 않고 회사가 제공하는 서비스를 이용하는 자를 말합니다.</li>
					<li>⑤ "아이디(ID)"라 함은 "이용고객"의 식별과 "서비스" 이용을 위하여 "이용고객"이 정하고 "회사"가 승인하는 문자와 숫자의 조합을 의미합니다.</li>
					<li>⑥ "비밀번호"라 함은 "이용고객"이 부여 받은 "아이디”와 일치되는 "이용고객"임을 확인하고 비밀보호를 위해 "이용고객" 자신이 정한 문자 또는 숫자의 조합을 의미합니다.</li>
					<li>⑦ "유료서비스"라 함은 "회사" 또는 "회원"이 유료로 제공하는 각종 온라인 디지털 컨텐츠(각종 정보 컨텐츠, VOD, 팝콘, 아이템 기타 유료 컨텐츠를 포함) 및 제반 서비스를 의미합니다.</li>
					<li>⑧ "게시물"이라 함은 이용고객이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.</li>
				</ol>
				<h3>제 3 조 (약관의 효력과 변경)</h3>
				<ol>
					<li>① 본 약관의 내용은 홈페이지 및 서비스 화면에 이를 공시함으로써 효력을 발생합니다.</li>
					<li>② "회사"는 "약관의규제에관한법률", "정보통신망이용촉진및정보보호등에관한법률" 등 관련법에 위배하지 않는 범위에서 이 약관을 변경할 수 있으며, 약관을 변경할 경우에는 "이용고객"이 쉽게 알 수 있도록 서비스 초기화면에 최소 15일 전부터 공시합니다. 다만, 이용고객에게 불리한 약관의 개정의 경우에는 그 적용일자 30일전부터 적용일 이후 상당기간 동안 각각 이를 서비스 홈페이지에 공지하여 그 내용을 확인할 수 있게 합니다.</li>
					<li>③ "회사”가 전항에 따라 개정약관을 공지 또는 통지하면서 이용고객에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 이용고객이 명시적으로 거부의 의사표시를 하지 아니한 경우에는 이용고객이 개정약관에 동의한 것으로 봅니다.</li>
					<li>④ 이용고객은 변경된 약관에 동의하지 않으면, 언제나 "서비스" 이용을 중단하고, 이용계약을 해지할 수 있습니다. 약관의 효력발생일 이후의 계속적인 "서비스" 이용은 약관의 변경사항에 대한 이용고객의 동의로 간주됩니다.</li>
				</ol>
				<h3>제 4 조 (약관의 적용 및 해석)</h3>
				<ol>
					<li>① "회사"는 "유료서비스" 및 개별 서비스에 대해서는 별도의 이용약관 및 정책(이하 "유료서비스약관 등")을 둘 수 있으며, 해당 내용이 이 약관과 상충할 경우에는 "유료서비스약관 등"이 우선하여 적용됩 니다.</li>
					<li>②이 약관에 명시되지 아니한 사항이나 해석에 대해서는 별도의 세부 약관, 상관행, 회사의 공지, 이용안내, 관계법령에서 정한 바에 따릅니다.</li>
				</ol>
				<h3>제 5 조 (서비스의 구분)</h3>
				<ol>
					<li>① "회사"가 이용고객에게 제공하는 "서비스"는 무료서비스, 유료서비스 등으로 구분합니다.</li>
					<li>② 무료서비스, 유료서비스 등의 종류와 이용방법 등은 이 약관 및 유료서비스 약관, "회사"가 공지 또는 이용안내에서 별도로 정하는 바에 의합니다.</li>
				</ol>
				<h3>제 6 조 (이용고객에 대한 통지)</h3>
				<ol>
					<li>① "회사"가 이용고객(회원에 한함)에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 서비스 내 전자쪽지 등으로 할 수 있습니다.</li>
					<li>② "회사"는 이용고객 전체에 대한 통지의 경우 7일 이상 "회사"의 공지사항에 게시함으로써 제1항의 통지에 갈음할 수 있습니다.</li>
				</ol>
				<h3>제 7 조 (이용계약의 성립 및 체결단위)</h3>
				<ol>
					<li>① 이용계약은 이용고객의 이용신청에 대한 "회사"의 이용승낙으로 성립합니다.</li>
					<li>② 이용계약은 아이디 단위로 체결합니다.</li>
					<li>③ "서비스"의 대량이용 등 특별한 "서비스" 이용에 관한 계약은 별도의 계약으로 합니다.</li>
				</ol>
				<h3>제 8 조 (이용신청)</h3>
				<ol>
					<li>① 서비스 이용자가 본 약관을 읽고 “동의” 버튼을 누르거나 “확인” 등에 체크하는 방법을 취한 경우 본 약관에 동의한 것으로 간주합니다.</li>
					<li>② 회사의 서비스 이용을 위한 회원가입은 서비스 이용자가 제1항과 같이 동의한 후 회사가 정한 온라인 회원가입 신청서에 회원아이디를 포함한 필수 입력사항을 입력하고 “등록하기” 내지 “확인” 버튼을 누르는 방법으로 합니다. 다만, 회사가 필요하다고 인정하는 경우 회원에게 별도의 서류를 제출하게 할 수 있습니다.</li>
					<li>③ "회사"는 이 약관의 주요 내용을 "이용신청고객"에게 고지하여야 합니다.</li>
					<li>④ 회원가입은 "이용신청고객" 자신의 실명으로 하여야 합니다.</li>
					<li>⑤ "이용신청고객"이 미성년자(만 14세 미만) 또는 한정치산자인 경우는 법정대리인(부모등)의 동의를 받아 이용신청을 할 수 있습니다.</li>
					<li>⑥ 전항의 경우는 동의서를 첨부하여 이용신청을 하여야 합니다.</li>
				</ol>
				<h3>제 9 조 (이용계약의 체결)</h3>
				<ol>
					<li>① "회사"는 전조의 규정에 의한 이용신청에 대하여 업무수행상 또는 기술상 지장이 없는 경우에는 원칙적으로 지체 없이 이용신청을 승낙합니다.</li>
					<li>② "회사"는 이용신청을 승낙하는 때에는 다음 각호의 사항을 이용고객에게 "서비스"를 통하거나, 전자우편(쪽지)등의 방법으로 통지합니다.
						<ol class="mL15 mB0">
							<li>1. 아이디</li>
							<li>2. 이용고객의 권익보호 및 의무 등에 관한 사항</li>
							<li>3. 기타 이용고객이 "서비스" 이용 時 알아야 할 사항</li>
						</ol>
					</li>
					<li>③"회사"는 다음 각호의 1에 해당하는 이용신청에 대하여는 승낙을 하지 않거나, 사후에 이용계약을 해지할 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 실명이 아니거나 타인의 명의를 이용한 경우</li>
							<li>2. 기존에 사용되고 있는 아이디 또는 공서양속을 해하는 표시의 아이디를 사용하고자 하는 신청을 한 경우</li>
							<li>3. 허위의 신청이거나 허위서류를 첨부한 경우</li>
							<li>4. "이용신청고객"이 회사에 납부하여야 할 요금등을 납부하지 않은 경우</li>
							<li>5. 14세 미만 아동이 법정대리인의 동의를 얻지 못한 경우</li>
							<li>6. 가입신청자가 이 약관에 의하여 이전에 이용고객자격을 상실한 적이 있는 경우, 단 "회사"의 이용고객 재가입 승낙을 얻은 경우에는 예외로 한다.</li>
							<li>7. 기타 "이용신청고객"의 귀책사유로 이용승낙이 곤란하거나, 기타 규정한 제반 사항을 위반하여 신청하는 경우</li>
						</ol>
					</li>
					<li>④"회사"는 다음 각호의 1에 해당하는 사유가 있는 경우에는 그 사유가 해소될 때까지는 승낙을 보류할 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 회사의 설비에 여유가 없는 경우</li>
							<li>2. "서비스"에 장애가 있는 경우</li>
						</ol>
					</li>
					<li>⑤ "회사"는 "이용신청고객"이 미성년자, 한정치산자인 경우에 법정대리인(부모등)의 동의 없는 이용신청에 대하여 승낙을 보류할 수 있습니다.</li>
					<li>⑥ "회사"는 "이용고객"에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.</li>
					<li>⑦ "회사"는 "이용고객"에 대하여 "영화및비디오물의진흥에관한법률" 및 "청소년보호법"등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다.</li>
				</ol>
				<h3>제 10 조 (아이디 부여등)</h3>
				<ol>
					<li>① "회사"는 원칙적으로 "이용신청고객"이 신청한대로 아이디를 부여합니다.</li>
					<li>② 아이디는 변경할 수 없는 것을 원칙으로 합니다.</li>
					<li>③ 아이디가 다음 각호에 해당하는 경우에는 "회사"는 해당 이용고객에 대한 "서비스" 제공을 중단하고, 새로운 아이디로 이용신청 할 것을 권할 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 아이디가 이용고객의 전화번호 또는 주민등록번호 등으로 등록되어 사생활 침해의 우려가 있는 경우</li>
							<li>2. 타인에게 혐오감을 주거나 공서양속을 해치는 경우</li>
							<li>3. 기타 이용고객의 보호를 위한 합리적인 사유가 있는 경우</li>
						</ol>
					</li>
				</ol>
				<h3>제 11 조 (서비스 이용)</h3>
				<ol>
					<li>① “서비스” 이용은 회사의 서비스 사용승낙 직후부터 가능합니다. 다만, 유료 서비스의 경우 회사가 요금납입을 확인한 직후부터 가능하게 할 수 있습니다.</li>
					<li>② 민법상 미성년자인 회원이 유료 서비스를 이용할 경우 미성년자인 회원은 결제 전 법정대리인의 동의를 얻어야 합니다.</li>
					<li>③ 서비스 이용시간은 회사의 업무상 또는 기술상 불가능한 경우를 제외하고는 연중무휴 1일 24시간(00:00-24:00)으로 함을 원칙으로 합니다. 다만, 서비스설비의 정기점검 등의 사유로 회사가 서비스를 특정범위로 분할하여 별도로 날짜와 시간을 정할 수 있습니다.</li>
				</ol>
				<h3>제 12 조 (회사의 의무)</h3>
				<ol>
					<li>① "회사"는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 "서비스"를 제공하기 위하여 최선을 다하여 노력합니다.</li>
					<li>② "회사"는 "이용고객"이 안전하게 "서비스"를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수합니다.</li>
					<li>③ "회사"는 이용고객으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우에는 이용고객에게 그 사유와 처리일정을 전자 우편등(전자 쪽지)의 방법으로 통보하여야 합니다.</li>
					<li>④ "회사"는 계속적이고 안정적인 "서비스"의 제공을 위하여 설비에 장애가 생기거나 멸실된 때에는 이를 지체 없이 수리 또는 복구합니다. 다만, 천재지변 또는 "회사"에 부득이한 사유가 있는 경 우, 무료서비스의 경우에는 "서비스" 제공을 일시 정지할 수 있습니다.</li>
					<li>⑤"회사"는 이용계약의 체결, 계약사항의 변경 및 해지 등 이용고객과의 계약관련 절차 및 내용 등에 있어 이용고객에게 편의를 제공하도록 노력합니다.</li>
					<li>⑥ 회사는 회원이 수신 동의를 하지 않은 영리 목적의 광고성 전자우편, SMS문자메시지등을 발송하지 아니합니다.</li>
				</ol>
				<h3>제 13 조 (이용고객의 의무)</h3>
				<ol>
					<li>① 이용고객은 유료서비스에 대한 요금등을 지정된 방식으로, 지정된 기일까지 납입하여야 합니다.</li>
					<li>② 이용고객은 연락처 등 이용계약사항이 변경된 경우에는 이를 "회사"에 즉시 알려야 합니다. 이를 통보하지 않음으로써 발생한 손해나 불이익에 대하여 이용고객은 "회사”에 항변하거나 권리를 주장할 수 없습니다.</li>
					<li>③ 이용고객은 다음 각호의 통신을 하여서는 아니 됩니다.
						<ol class="mL15 mB0">
							<li>1. 범죄행위를 목적으로 하거나 범죄행위를 교사하는 내용</li>
							<li>2. 반국가적 행위의 수행을 목적으로 하는 내용</li>
							<li>3. 선량한 풍속 기타 사회질서를 해하는 내용</li>
							<li>4. "회사”와 기타 제3자의 저작권 등 지적재산권을 침해하는 내용</li>
							<li>5. "회사”와 기타 제3자의 명예를 손상시키거나 업무를 방해하는 내용</li>
						</ol>
					</li>
					<li>④ 이용신청고객은 아이디 및 비밀번호 관리에 상당한 주의를 기울여야 하며, "회사"의 동의 없이 제3자에게 아이디를 제공하여 이용하게 할 수 없습니다.</li>
					<li>⑤ 이용고객은 본 약관에서 규정하는 사항과 기타 회사가 정한 제반 규정, 공지사항 등 회사가 공지하는 사항 및 관계법령을 준수하여야 하며, 기타 회사의 업무에 방해가 되는 행위, 회사의 명예를 손상시키는 일체의 행위를 해서는 안됩니다.</li>
					<li>⑥ 이용고객은 회원가입 신청 또는 회원가입정보 변경 시 실명으로 모든 사항을 사실에 근거하여 작성하여야 하며, 허위 또는 타인의 정보를 등록할 경우 일체의 권리를 주장할 수 없습니다.</li>
					<li>⑦ 회사가 관계법령 및 개인정보 보호정책에 의거하여 그 책임을 지는 경우를 제외하고 이용고객에게 부여된 아이디의 비밀번호 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 이용고객에게 있습니다.</li>
					<li>⑧ 이용고객은 회사의 사전 승낙 없이 서비스를 이용하여 어떠한 형태의 영업활동을 할 수 없으며, 그 영업활동의 결과에 대해 회사는 책임을 지지 않습니다. 또한 이용고객은 이와 같은 영업활동으로 회사가 손해를 입은 경우, 이용고객은 회사에 대해 손해배상의무를 지며, 회사는 해당 이용고객에 대해 서비스 이용제한 및 적법한 절차를 거쳐 손해배상 등을 청구할 수 있습니다..</li>
					<li>⑨ 이용고객은 회사의 명시적 동의가 없는 한 서비스의 이용약관, 기타 이용계약상의 지위를 타인에게 양도, 증여할수 없으며 이를 담보로 제공할 수 없습니다.</li>
					<li>⑩ 이용고객은 회사 및 제3자의 지적 재산권을 침해 해서는 안됩니다.</li>
					<li>⑪ 이용고객은 다음 각호에 해당하는 행위를 하여서는 아니 되며, 해당 행위를 하는 경우에 회사는 이용고객의 팝콘티비 및 연동티비(팝콘티비와 연동되어 팝콘티비를 시청할 수 있는 개인 인터넷방송 플랫폼 일체) 를 포함한 서비스 이용제한 및 가능한 모든 제재를 가할 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 이용고객가입 신청 또는 이용고객정보 변경 시 허위내용을 등록하는 행위</li>
							<li>2. 다른 이용고객의 아이디,비밀번호,주민등록번호를 포함한 일체의 개인정보를 도용하는 행위</li>
							<li>3. 아이디를 타인과 거래하는 행위</li>
							<li>4. 회사의 운영진,직원 또는 관계자를 사칭하거나 이들로 오해 할 수 있도록 하는 여타의 행위</li>
							<li>5. 회사로부터 특별한 권리를 부여 받지 않고 회사의 클라이언트 프로그램을 변경하거나,회사의 서버를 해킹하거나, 웹사이트 또는 게시된 정보의 일부분 또는 전체를 임의로 변경하거나 삭제하는 행위</li>
							<li>6. 서비스에 위해를 가하거나 고의로 방해하는 행위</li>
							<li>7. 본 서비스를 통해 얻은 정보를 회사의 사전 승낙 없이 서비스 이용 외의 목적으로 이용하기 위해 복제하거나, 출판 및 방송 등에 사용하거나, 제3자에게 제공하는 행위</li>
							<li>8. 공공질서 및 미풍양속에 위반되는 저속,음란한 내용의 정보,문장,도형, 음향 동영상을 전송, 게시, 전자우편 또는 기타의 방법으로 타인에게 유포하는 행위</li>
							<li>9. 모욕적이거나 개인신상에 대한 내용이어서 타인의 명예나 프라이버시를 침해할 수 있는 내용을 전송, 게시, 전자우편 또는 기타의 방법으로 타인에게 유포하는 행위</li>
							<li>10. 다른 이용고객을 희롱 또는 위협하거나, 특정 이용고객에게 지속적으로 고통 또는 불편을 주는 행위</li>
							<li>11. 타인의 계좌번호 및 신용카드 번호 등 타인의 허락 없이 타인의 결제정보를 이용하여 회사의 유료서비스를 이용하는 행위</li>
							<li>12. 청소년 보호법에서 규정하는 청소년 유해 매체물을 게시하는 행위</li>
							<li>13. 회사의 승인을 받지 않고 다른 이용고객의 개인정보를 수집 또는 저장하는 행위</li>
							<li>14. 선거관리 위원회의 유권해석에 의한 불법선거운동을 하는 행위</li>
							<li>15. 범죄와 결부된다고 객관적으로 판단되는 행위</li>
							<li>16. 본 약관을 포함하여 기타 회사가 정한 제반 규정위반 또는 사회 통념상 적절하지 못한 서비스 이용으로 공공의 안녕을 해칠 수 있다고 판단되는 행위</li>
							<li>17. 기타 관계법령에 위배되는 행위</li>
						</ol>
					</li>
				</ol>
				<h3>제 14 조 (서비스의 제한, 정지, 변경등)</h3>
				<ol>
					<li>① 회사는 아래 각 호의 1에 해당하는 사유가 발생한 경우에는 회원의 서비스 이용을 제한하거나 중지시킬 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 회원이 회사 서비스의 운영을 고의∙과실로 방해하는 경우</li>
							<li>2. 회원이 제13조(이용고객의 의무)의 의무를 위반한 경우</li>
							<li>3. 서비스용 설비 점검, 보수 또는 공사로 인하여 부득이한 경우</li>
							<li>4. 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우</li>
							<li>5. 전시, 사변, 국가비상사태, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우</li>
							<li>6. 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 경우</li>
							<li>7. 기타 중대한 사유로 인하여 회사가 서비스 제공을 지속하는 것이 부적당하다고 인정하는 경우</li>
						</ol>
					</li>
					<li>② 회사는 전항의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한 기간 등을 이용고객에게 알려야 합니다 다만, "회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.</li>
					<li>③ 무료서비스는 "회사"의 경영정책 등을 이유로 서비스의 전부 또는 일부가 제한되거나 중지될 수 있으며, 유료로 전환될 수 있습니다.</li>
					<li>④ "회사"는 "서비스"의 이용을 제한하거나 정지하는 때와 무료서비스를 유료로 전환하는 때에는 그 사유 및 제한기간, 예정 일시 등을 지체 없이 이용고객에게 알려야 합니다.</li>
				</ol>
				<h3>제 15 조 (서비스의 제공 중단, 이용 제한 등)</h3>
				<ol>
					<li>①"회사"는 이용고객이 유료서비스의 요금등을 지정한 기일로부터 1개월 이상 납부하지 않을 경우에는 전부 또는 일부의 서비스제공을 중단할 수 있습니다.</li>
					<li>②"회사"는 이용고객이 다음 각호의 1에 해당하는 경우에는 이용고객의 서비스 이용을 일부 또는 전부 제한할 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 제13조 3항, 4항, 5항의 규정에 의한 각 의무를 이행하지 않는 경우</li>
							<li>2. 다량의 정보를 전송하여 서비스의 안정적 운영을 방해하는 경우</li>
							<li>3. 수신자의 의사에 반하는 광고성 정보, 전자우편을 지속적으로 전송하는 경우</li>
							<li>4. 정보통신설비의 오작동이나 정보를 파괴를 유발하는 컴퓨터 바이러스 프로그램등을 유포하는 경우</li>
							<li>5. 정보통신윤리위원회로부터 이용제한 요구 대상인 경우</li>
							<li>6. 선거관리위원회의 유권해석 상의 불법선거운동을 하는 경우</li>
							<li>7. 전기통신관련법령등을 위반하는 행위를 하는 경우</li>
							<li>8. 다른 이용고객의 아이디를 부정하게 사용하는 경우</li>
						</ol>
					</li>
					<li>③전항의 규정에 의하여 이용고객의 이용을 제한하는 때의 제한의 종류 및 기간 등 구체적인 기준은 "회사"의 공지, 이용안내 등에서 별도로 정하는 바에 따릅니다.</li>
				</ol>
				<h3>제 16 조 (서비스의 변경)</h3>
				<ol>
					<li>① "회사"는 상당한 이유가 있는 경우에 운영상, 기술상의 필요에 따라 제공하고 있는 전부 또는 일부 "서비스"를 변경할 수 있습니다.</li>
					<li>② "서비스"의 내용, 이용방법, 이용시간에 대하여 변경이 있는 경우에는 변경사유, 변경될 서비스의 내용 및 제공일자 등은 그 변경 전에 해당 서비스 초기화면에 게시하여야 합니다.</li>
					<li>③ "회사"는 무료로 제공되는 서비스의 일부 또는 전부를 회사의 정책 및 운영의 필요상 수정, 중단, 변경할 수 있으며, 이에 대하여 관련법에 특별한 규정이 없는 한 "이용고객"에게 별도의 보상을 하지 않습니다.</li>
				</ol>
				<h3>제 17 조 (이용제한 및 해제절차)</h3>
				<ol>
					<li>① "회사"가 전조의 제2항 및 3항의 규정에 의하여 이용제한을 하고자 하는 때에는 그 사유, 일시 및 기간을 정하여 이용제한 7일전까지 전화 또는 전자우편이나 쪽지등의 방법으로 해당 이용고객 또는 대리인에게 통지합니다. 다만, 긴급하게 이용을 제한할 필요가 있을 경우에는 그러하지 않습니다.</li>
					<li>② 전항의 규정에 의하여 이용정지의 통지를 받은 이용고객 또는 대리인은 그 이용정지의 통지에 대하여 이의가 있을 때에는 이의신청을 할 수 있습니다.</li>
					<li>③ "회사"는 전항의 규정에 의한 이의신청에 대하여 그 확인을 위한 기간까지 이용정지를 일시 연기할 수 있으며, 그 결과를 이용고객 또는 그 대리인에게 통지합니다.</li>
					<li>④ "회사"는 이용정지 기간 중에 그 이용정지 사유가 해소된 것이 확인된 경우에는 이용정지조치를 즉시 해제합니다.</li>
				</ol>
				<h3>제 18 조 (이용계약 해지)</h3>
				<ol>
					<li>① 이용고객이 이용계약을 해지하고자 하는 때에는 본인이 직접 "서비스"를 통하거나(서비스내의 회원탈퇴 메뉴를 이용) 서면 또는 전화의 방법으로 회사에 신청하여야 합니다. 해지할 경우 회원이 보유하고 있는 팝콘에 대해서는 환불되지 않습니다.</li>
					<li>② "회사"는 전항의 규정에 의하여 해지신청이 접수되면 지체 없이 서비스의 이용을 제한합니다.</li>
					<li>③ "회사"는 이용계약을 해지하고자 할 경우에는 해지조치 7일전까지 그 뜻을 이용고객에게 통지하여 의견을 진술할 기회를 주어야 합니다. 다만, 다음 각호의 1에 해당하는 경우에는 즉시 해지를 할 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 이용고객이 이용제한 규정을 위반하거나, 그 이용제한 기간 내에 제한 사유를 해소하지 않은 경우</li>
							<li>2. 타인명의 이용신청 또는 허위의 이용신청, 허위서류를 첨부한 이용신청임이 확인된 경우</li>
							<li>3. 미성년자 또는 한정치산자가 법정대리인(부모등)의 동의서를 첨부하지 않고 이용신청을 한 경우</li>
							<li>4. 이용고객이 정당한 사유없이 의견진술에 응하지 않는 경우</li>
							<li>5. 이용고객이 기타 법령을 위반한 경우(저작권법 및 정보통신망 이용촉진 및 정보보호에 관한 법률 등의 위반 및 음란물 유포 등)</li>
						</ol>
					</li>
					<li>④ "회사"는 전항의 규정에 의하여 해지된 이용신청고객의 이용신청에 대하여 해지 후 1개월 이내에는 승낙을 하지 않을 수 있습니다.</li>
					<li>⑤ "이용고객"이 계약을 해지할 경우, 관련법 및 개인정보취급방침에 따라 "회사"가 이용고객정보를 보유하는 경우를 제외하고는 해지 즉시 "회원"의 모든 데이터(서비스에 제공하거나 보관중인 자료 및 개인정보)를 삭제합니다.</li>
				</ol>
				<h3>제 19 조 (유료서비스 청약철회 및 계약해제)</h3>
				<ol>
					<li>① "회사”와“유료서비스”에 관한 계약을 체결한“이용고객”은 계약을 체결한 날로부터 7일 이내에 청약을 철회 할 수 있습니다. 다만,“회사”가 다음 각호중 하나의 조치를 취한 경우에는 “이용고객”의 청약철회가 제한될 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 청약의 철회가 불가능한 콘텐츠에 대한 사실을 해당 콘텐츠에 포함한 경우</li>
							<li>2. 시용상품을 제공한 경우</li>
							<li>3. 한시적 또는 일부이용 등의 방법으로 제공한 경우</li>
						</ol>
					</li>
					<li>②"이용고객”은 다음 각 호의 사유가 있을 때에는 당해“유료서비스”를 공급받은 날로부터 3일 이내에 이용계약을 해제, 해지할 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 계약을 체결한 “유료서비스”가 제공되지 않은 경우</li>
							<li>2. 제공되는 “유료서비스”가 표시와 상이하거나, 현저한 차이가 있는 경우</li>
							<li>3. 기타 “유료서비스”의 결함으로 정상적인 이용이 현저히 불가능한 경우</li>
						</ol>
					</li>
					<li>③ 제1항의 청약철회와 제2항의 계약해제, 해지는 본인이 직접 "서비스"를 통하거나 서면 또는 전화의 방법으로 회사에 신청하여야 합니다.</li>
					<li>④ "회사"는 전항의 규정에 의하여 청약철회 또는 계약해제, 해지의 의사표시를 수신한 후 지체 없이 이러한 사실을 본인에게 회신 합니다.</li>
				</ol>
				<h3>제 20 조 (양도금지)</h3>
				<ul>
					<li>이용고객의 약관 상의 권리는 이를 양도하거나 증여할 수 없으며, 질권의 목적으로 사용할 수 없습니다.</li>
				</ul>
				<h3>제 21 조 (요금등의 납입방법, 종류등)</h3>
				<ol>
					<li>① 이용고객이 회사에 대하여 유료서비스 이용 신청을 하고, 회사가 이에 대해 승낙함으로써 이용고객간 회사간의 유료서비스 이용계약이 성립됩니다.</li>
					<li>② 유료서비스 요금 등은 선납을 원칙으로 하며(일부 후불제 제공 서비스는 예외) 일정 금액을 회사가 제공하는 결제 수단을 통하여 이용고객이 선 입금한 후 구매, 사용에 따라 차감하는 형식으로 요금을 청구, 납입합니다.</li>
					<li>③ 회사는 각호와 같은 유료서비스를 제공합니다.
						<ol class="mL15 mB0">
							<li>1. 팝콘 : 회사에서 서비스하는 유료 서비스를 이용하기 위해 구매하는 인터넷상의 현금등가의 결제수단을 말하며, 상사소멸시효에 따라 구입일로부터 5년 경과 시 소멸됩니다.</li>
							<li>2. 정액제 상품 : 일정기간을 기준으로 하여 회사가 미리 책정한 요금을 지불하고, 해당 요금에 해당하는 기간만큼 서비스를 이용하는 기간 정액제와 일정 용량을 기준으로 하여 회사가 미리 책정한 요금을 지불하고, 해당 요금에 해당하는 용량만큼 서비스를 이용하되, 회사가 미리 책정한 일정기간 내에 사용해야 하는 용량 정액제가 있습니다.</li>
							<li>3. 정기결제 상품: 매월 정기적인 결제가 이루어지는 서비스의 경우 회원이 해당 서비스의 이용을 중단하고 정기 결제의 취소를 요청하지 않는 한 매월 결제가 이루어집니다.</li>
							<li>4. 건별과금 상품: 건별과금상품으로 회사에서 책정한 요금을 지불하고, 해당컨텐츠 및 서비스를 이용할 수 있는 상품입니다.</li>
							<li>5. 부가서비스: 회사에서 책정한 요금을 지불하고, 해당 아이템 등을 이용할 수 있는 상품입니다.</li>
						</ol>
					</li>
					<li>④ 회사는 결제의 이행을 위하여 반드시 필요한 회원의 개인정보를 추가적으로 요구할 수 있으며, 회원은 회사가 요구하는 개인정보를 정확하게 제공하여야 합니다. 회사는 회원이 허위로 또는 부정확하게 제공한 개인정보로 인하여 회원에게 발생하는 손해에 대하여 회사의 고의∙과실이 없는 한 회원의 손해를 배상할 책임을 부담하지 않습니다.</li>
					<li>⑤ 유료서비스 요금 등의 종류는 이 약관과 각 해당서비스에서 정한 바에 따릅니다.</li>
					<li>⑥ 이용고객이 미성년자(만 20세 미만) 또는 한정치산자인 경우는, 유료 서비스 이용을 위해 결제하기 전에, 민법 제5조 1항에 따라 법정대리인(부모 등)의 동의를 받아야 합니다. 회사가 정한 절차에 따른 법정대리인의 동의를 받지 않은 경우는 유료 서비스를 이용할 수 없습니다. 단, 법정대리인(부모 등)의 동의에 대하여 미성년자의 사술이 사용된 경우에는 회사는 그 사항에 대하여 책임을 지지 않습니다.</li>
				</ol>
				<h3>제 22 조 (요금등의 이의신청)</h3>
				<ol>
					<li>① 이용고객은 선납한 요금등에 이의가 있을 경우에는 유료서비스 사용일로부터 1개월 이내에 이의신청을 할 수 있습니다.</li>
					<li>② "회사"는 전항의 이의신청 접수 후 10일 이내에 타당성 여부를 조사하고, 그 결과를 이용고객에게 통지합니다.</li>
					<li>③ 부득이한 사유로 전항의 기간 내에 이의신청결과를 통지할 수 없을 경우에는 그 사유와 재지정된 처리기한을 명시하여 이를 이용고객에게 통지합니다.</li>
				</ol>
				<h3>제 23 조 (요금등의 환불)</h3>
				<ol>
					<li>① "회사"는 요금 등의 과오금이 발생한 경우 이용대금의 결제와 동일한 방법으로 과오금 전액을 환불하여야 합니다.</li>
					<li>② 전액 환불의 경우 회원이 해당 서비스의 이용을 위하여 이용한 결제수단으로 환불하는 것을 원칙으로 하나 이것이 불가능 하거나 서비스의 중도해지로 인한 부분 환불 등의 경우에는 회사가 정하는 별도의 방법으로 환불합니다.</li>
					<li>③ 회원의 귀책사유로 이용요금을 환불하는 경우 일반적인 방법은 아래와 같습니다.
						<ul class="mL15 mB0">
							<li>회사가 제공하는 유료서비스가 결제 후 1회의 이용만으로 서비스의 이용이나 구매가 완료되는 서비스인 경우 해당 서비스를 이용한 후에는 환불이 불가능합니다.</li>
						</ul>
					</li>
					<li>④ 제3항의 규정에도 불구하고 아래 각 호의 경우에는 회원이 결제한 전액을 환불합니다.
						<ol class="mL15 mB0">
							<li>1. 서비스 장애 또는 회사가 제시한 최소한의 기술사양을 충족하였음에도 불구하고 회사의 귀책사유로 서비스를 이용하지 못한 경우</li>
							<li>2. 회원이 구매한 서비스가 제공되지 않은 경우</li>
							<li>3. 제공되는 서비스가 표시∙광고 등과 상이하거나 현저한 차이가 있는 경우</li>
							<li>4. 제공되는 서비스의 결함으로 서비스의 정상적인 이용이 현저히 불가능한 경우</li>
							<li>5. 회원이 제13조의 규정을 위반하여 회사가 회원의 서비스 이용을 제한하거나 일방적으로 본 계약을 해지하는 경우 회사는 회원에게 대하여 일체의 환불을 하지 않습니다.</li>
						</ol>
					</li>
					<li>⑤ 본 조의 규정에 의한 환불은 환불 의무가 발생한 날로부터 3영업일 이내에 하는 것으로 하며 회사는 결제 수수료 등 입금에 따라 발생한 비용을 공제하고 반환할 수 있습니다. 환불이 지연되는 경우 지연이자율은 연리 11%로 합니다. 단, 환불에 회원의 협조가 필요한 경우에 회원의 귀책사유로 인한 환불 지연에 대해서는 지연이자를 지급하지 않습니다.</li>
					<li>⑥ 환불에 소요되는 비용은 이용고객의 귀책사유로 인한 환불의 경우에는 이용고객이, 회사의 귀책사유로 인한 환불의 경우에는 회사가 각각 부담합니다.</li>
					<li>⑦ "회사"는 요금 등을 반환하여야 할 이용고객이 요금 등을 미납하고 있을 경우에는 반환하여야 할 요금 등에서 이를 우선 변제충당하고 반환할 수 있습니다.</li>
					<li>⑧ 제15조 제2항에 따른 이용제한의 경우 이와 관련된 요금 등은 반환하지 않습니다.</li>
				</ol>
				<h3>제 24 조 (손해배상)</h3>
				<ol>
					<li>① "회사"는 무료서비스의 장애, 제공 중단, 보관된 자료 멸실 또는 삭제, 변조 등으로 인한 손해에 대하여는 배상하지 않습니다.</li>
					<li>② "회사"는 "회사"의 귀책사유로 인하여 이용고객에게 서비스를 제공하지 못하는 경우 유료 서비스 이용자에게는 지식경제부가 고시한 소비자피해보상규정에 따라 보상합니다.</li>
					<li>③ 기타 손해배상의 방법, 절차 등은 관계법령에 따릅니다.</li>
				</ol>
				<h3>제 25 조 (면책)</h3>
				<ol>
					<li>① "회사"는 이용고객이 "회사"의 "서비스" 제공으로부터 기대되는 이익을 얻지 못한 데 대하여 책임이 없습니다.</li>
					<li>② "회사"는 제3자가 게시 또는 전송한 자료로 인한 이용고객의 손해에 대하여는 책임이 없습니다.</li>
					<li>③ "회사"는 이용고객 상호간 또는 이용고객과 제3자 간에 "서비스"를 매개로 발생한 분쟁에 대하여는 개입할 의무도 이로 인한 손해를 배상할 책임도 없습니다.</li>
					<li>④ "회사"는 이용고객이 서비스를 이용하면서 서비스에 관련된 저작권법 위반을 포함한 모든 민 형사상의 책임을 지지 않습니다. 관련법 위반의 모든 책임은 해당 게시물의 게재자에게 있음을 명확히 합니다.</li>
					<li>⑤ 회사는 CP, 파트너가 제공하거나 회원이 작성하는 등의 방법으로 서비스에 게재된 광고, 정보, 자료, 사실의 신뢰도, 정확성 등에 대해서는 보증을 하지 않으며 이로 인해 발생한 회원의 손해에 대하여는 책임을 부담하지 아니합니다.</li>
				</ol>
				<h3>제 26 조 (자료의 저장)</h3>
				<ul>
					<li>"회사"는 이용고객이 제공하는 정보, 자료 회사의 공지, 서비스 이용안내에서 정한 바에 따라 일정한 게재기한 및 용량을 정할 수 있습니다.</li>
				</ul>
				<h3>제 27 조 (공개 게시물 등의 관리)</h3>
				<ol>
					<li>① "회사"는 건전한 통신문화정착과 효율적 서비스 운영을 위하여 다음 각호의 1에 해당하는 공개 게시물, 자료를 삭제, 이동, 등록거부 하는 등의 필요조치를 취할 수 있습니다.
						<ol class="mL15 mB0">
							<li>1. 다른 회원 또는 제 3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우</li>
							<li>2. 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우</li>
							<li>3. 불법복제 또는 해킹을 조장하는 내용인 경우</li>
							<li>4. 영리를 목적으로 하는 광고일 경우</li>
							<li>5. 범죄와 결부된다고 객관적으로 인정되는 내용일 경우</li>
							<li>6. 다른 이용고객 또는 제 3자의 저작권 등 기타 권리를 침해하는 내용인 경우</li>
							<li>7. 회사에서 규정한 게시물 원칙에 어긋나거나, 게시판 성격에 부합하지 않는 경우</li>
							<li>8. 타인의 법률상 이익을 침해하는 행위와 관련된 것으로 추정되는 게시물, 자료로, 이해당사자의 삭제 등의 요청이 있거나 , 회사가 피소/ 고발될 수 있는 사유를 제공하는 경우</li>
							<li>9. 서비스에 위해를 가할 소지가 있는 바이러스 등이 포함된 경우</li>
							<li>10. 게재기한을 초과한 경우</li>
							<li>11. 전기통신 관계법령 및 형사 관계법령에 따른 국가기관 등의 삭제 등 요구가 있는 경우</li>
							<li>12. 기타 관계법령에 위배된다고 판단되는 경우</li>
						</ol>
					</li>
					<li>② "회사"는 게시물 등에 대하여 제3자로부터 명예훼손, 지적재산권 등의 권리 침해를 이유로 게시중단 요청을 받은 경우 이를 임시로 게시중단(전송중단)할 수 있으며, 게시중단 요청자와 게시물 등록자 간에 소송, 합의 기타 이에 준하는 관련기관의 결정 등이 이루어져 회사에 접수된 경우 이에 따릅니다.</li>
					<li>③ 해당 게시물 등에 대해 임시게시 중단이 된 경우, 게시물을 등록한 이용고객은 재게 시(전송재개)를 회사에 요청할 수 있으며, 게시 중단일로부터 30일 이내에 재게시를 요청하지 아니한 경우 회사는 이를 삭제할 수 있습니다.</li>
				</ol>
				<h3>제 28 조 (정보의 제공 및 광고의 게재)</h3>
				<ol>
					<li>① "회사"는 이용고객이 서비스 이용 중 필요하다고 인정되는 각종 정보 및 광고를 배너 게재, 전자우편(E-Mail), 휴대폰 단문 메세지(SMS), 전화, 우편 등의 방법으로 이용고객에게 제공(또는 전송)할 수 있습니다. 이용고객은 이를 원하지 않을 경우에 회사가 제공하는 방법에 따라 수신을 거부할 수 있습니다.</li>
					<li>② 전항 단서에 따른, 수신 거부 이용고객의 경우에도 이용약관, 개인정보보호정책, 기타 이용고객의 이익에 영향을 미칠 수 있는 중요한 사항의 변경 등 이용고객이 반드시 알고 있어야 하는 사항에 대해서는 전자 우편 등의 방법으로 정보의 제공 등을 할 수 있습니다.</li>
					<li>③ 회사는 광고주의 판촉 활동에 이용고객이 참여하거나, 거래의 결과로써 발생하는 손실 또는 손해에 대해서는 책임을 지지 않습니다.</li>
				</ol>
				<h3>제 29 조 (서비스와 게시물에 대한 권리 및 지적재산권)</h3>
				<ol>
					<li>① “회원”은 “서비스” 에 제공한 “회원”의 컨텐츠 및 컨텐츠(영상파일, 라이브 캠 촬영, 모바일 녹화영상, 채널이나 게시판 등에 게시한 글, 방송시청 중 채팅자료 등 “회원”이 서비스에 제공하거나 서비스를 이용하면서 업로드한 자료 일체 - 이하 “컨테츠”)와 관련하여 저작권, 인격권 등 제 3자와의 분쟁 발생시 그 법적 대응 및 결과에 대한 책임을 지며, “회사”는 해당 “컨텐츠”와 관련된 일체의 책임을 명시적으로 부인합니다.</li>
					<li>② “회사”는 “서비스”를 통한 저작권 침해행위나 지적재산권 침해를 허용하지 아니하며, “회원”의 “컨텐츠”가 타인의 지적재산권을 침해한다는 사실을 적절하게 고지받거나 인지하게 되는 경우 저작권법 기타 관련 법령에서 정한 절차에 따라 그 “컨텐츠”의 일체의 서비스를 중지하거나 제거할 수 있습니다. 또한 “회사”는 “회원”의 “컨텐츠”가 “서비스" 운영 상의 문제가 있다고 판단하는 경우 사전통지 없이 삭제하거나 이동 또는 등록 거부할 수 있는 권리를 보유합니다.</li>
					<li>③ "서비스”에 대한 저작권 및 지적재산권은 “회사”에 귀속됩니다. 단, 이용고객의 컨텐츠 및 제휴계약에 따라 제공된 저작물 등은 제외합니다.</li>
					<li>④ 이용고객이 컨텐츠 게시, 자료 전송 등의 방법으로 컨텐츠, 자료를 제공하는 행위는 명시적 반대의사 표시가 없는 한, "회사"에 완전한 공중 전달권(Right of Communication to the Public)을 부여하는 것으로 간주됩니다.</li>
					<li>⑤ "회원"의 “컨텐츠”에 대한 저작권은 원래의 저작자가 보유하되, 본 약관이 정하는 바에 따라 "회사" 혹은 "회사가 지정한 자”에게 “컨텐츠”에 대한 사용 권한을 부여합니다. "회사"가 "회원"의 “컨텐츠”을 사용하는 용도와 방법은 각호와 같습니다.
						<ol class="mL15 mB0">
							<li>1. "회원"이 "서비스"에 제공한 “컨텐츠”을 "회사"가 녹화/편집/변경하여 새로운 컨텐츠로 제작한 다음 이를 "서비스"의 회원 기타 이용자들이 시청하게 하거나, 또는 "회사"의 제휴사에 제공하여 그 이용자들이 이를 시청할 수 있도록 할 수 있습니다. 단 새로운 컨텐츠로 제작할 경우 원저작자에게 미리 허락을 구합니다.</li>
							<li>2. "회원"이 "서비스"에 제공한 “컨텐츠”를 "회사"가 저장한 후 이를 VOD등의 다시 보기 서비스로 “서비스” 회원 기타 이용자들이 시청할 수 있게 하거나, "회사"의 제휴사에 제공함으로써 제휴사가 그 이용자들에게 스트리밍 또는 VOD 등의 다시보기 서비스로 시청할 수 있게끔 할 수 있습니다.</li>
						</ol>
					</li>
					<li>⑥ 본 조 제③항에 규정한 "회사" 및 "회사의 제휴사"가 "회원"의 “컨텐츠”을 이용할 수 있는 조건은 아래와 같습니다.
						<ol class="mL15 mB0">
							<li>1. 컨텐츠 이용 매체/플랫폼 - 현재 알려져 있거나 앞으로 개발된 모든 형태의 매체, 장비, 기술을 포함함(강냉이티비,밍키티비,야야티비,라이브스타,티비놀이,오렌지티비,인스타티비,힐링티비,파자마티비,풀빵티비,도토리티비,쪼아티비,달티비,톡톡티비,야하나티비,플레이채널,보고티비,비라이브,핫독티비,볼래티비,나비티비,소라티비,쿨티비,핫스팟티비,바나나티비).</li>
							<li>2. 컨텐츠 이용 용도 - 상업적 또는 비상업적 이용을 구분하지 않음.</li>
							<li>3. 컨텐츠 이용 범위 - 국내 및 국외에서의 복제, 수정, 각색, 공연, 전시, 방송, 배포, 대여, 공중송신, 2차적 저작물 작성, 기타 이용</li>
							<li>4. 컨텐츠 이용 조건 - 비독점적, 지속적인 무상의 권리로서 양도 가능하며, 취소 불가하고 서브 라이센스가 가능함.</li>
						</ol>
					</li>
				</ol>
				<h3>제 30 조 (준거법 및 재판관할)</h3>
				<ol>
					<li>① "서비스"와 관련하여 분쟁이 발생한 경우, 대한민국 민사소송법상의 관할 법원에 소를 제기할 수 있습니다.</li>
					<li>② 전항의 경우 준거법은 대한민국법을 적용합니다.</li>
				</ol>
				<h3>부칙</h3>
				<ul>
					<li>제1조 (시행일) 이 약관은 2012년 10월 09일 부터 시행합니다.</li>
					<li>제2조 관리 책임자 및 담당자는 2012년 10월 09일을 기준으로 다음과 같이 지정합니다.
						<ul class="mL15 mB0">
							<li class="mT5">개인정보/청소년보호 관리 책임자</li>
							<li>이름 : 신종성</li>
							<li>소속 : 플랫폼사업부</li>
							<li>E-mail: nabi0152@redburn.co.kr</li>
							<li class="mT5">개인정보/청소년보호 관리 담당자</li>
							<li>이름 : 지태홍</li>
							<li>소속 : 서비스전략사업부</li>
							<li>E-mail: jdclub11@redburn.co.kr</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mT15 mB15 tac">
		<input type="button" value="닫기" class="btn-basic enter popCancel">
	</div>
</div>
<!-- /이용약관 레이어팝업 -->
<!-- 개인정보취급방침 레이어팝업 -->
<div id="privacy-popup" class="l-popup">
	<div class="join-pop-content">
		<div class="join_popup">
			<div class="policy_content">
				<h2>개인정보취급방침</h2>
				<p>1. 수집하는 개인정보의 항목 및 수집방법</p>
				<p>가. 수집하는 개인정보의 항목</p>
				<ul>
					<li>회사는 원활한 서비스 제공을 위하여 다음과 같은 정보를 수집하고 있습니다.</li>
					<li>첫째, 회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.</li>
					<li>&lt; 회원 가입 시 : 휴대폰인증, 아이핀인증 가입&gt;</li>
					<li>- 아이디, 비밀번호, 성명, 닉네임, 연락처(휴대폰번호) 정보, 생년월일, 성별, 본인확인 정보 (CI, DI)</li>
					<li>&lt; 환전 인증 시&gt;</li>
					<li>- 주민등록번호, 계좌주명, 계좌번호</li>
					<li>둘째, 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.</li>
					<li>- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록</li>
					<li>셋째, 팝콘위드코인 아이디를 이용한 부가 서비스 및 맞춤식 서비스 이용시 또는 이벤트 응모 과정에서 회원 가입시 수집하지 않았던 개인정보를 추가 수집할 때에 이용자들에게 고지하고 동의를 받는 경우에 다음과 같은 정보들을 수집 할 수 있습니다.</li>
					<li>- 이벤트 응모로 인한 개인정보 수집 시에는 추가 수집에 동의를 하는 경우에만 수집하며 이벤트 별로 수집하는 정보가 달라질 수 있습니다.</li>
					<li>- 수집하는 정보에 대해서는 이벤트 별로 별도로 공지합니다.</li>
					<li>넷째, 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.</li>
					<li>- 신용카드 결제시: 카드사명, 카드번호 등</li>
					<li>- 휴대전화 결제시: 이동전화번호, 이동 통신사, 결제승인번호 등</li>
					<li>- 계좌이체시: 은행명, 계좌번호 등</li>
					<li>- 상품권 이용시: 상품권 번호</li>
					<li>다섯째, 종량제 결제 서비스를 이용하는 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.</li>
					<li>- 결제 등을 위해 불가피하게 필요한 경우 주민등록번호, 휴대폰 번호, 통신사 정보 등</li>
				</ul>
				<p>나. 개인정보 수집방법</p>
				<ul>
					<li>회사는 다음과 같은 방법으로 개인정보를 수집합니다.</li>
					<li>- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 환불 요청</li>
					<li>- 협력회사로부터의 제공</li>
					<li>- 생성정보 수집 툴을 통한 수집</li>
				</ul>
				<h3>2. 개인정보의 수집 및 이용목적</h3>
				<p>가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산</p>
				<ul>
					<li>컨텐츠 제공, 특정 맞춤 서비스 제공, 물품배송 또는 청구서 등 발송, 본인인증</li>
				</ul>
				<p>나. 회원관리</p>
				<ul>
					<li>회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 이용약관 위반 회원의 부정 이용 및 연동티비(팝콘티비와 연동되어 팝콘티비를 시청할 수 있는 개인 인터넷방송 플랫폼 일체)를 이용한 우회적인 이용방지와 비인가 사용방지, 가입의사 확인, 가입 및 가입횟수 제한, 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달, 회원탈퇴 의사의 확인</li>
				</ul>
				<p>다. 신규 서비스 개발 및 마케팅•광고에의 활용</p>
				<ul>
					<li>신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성 확인, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 접속빈도 파악, 회원의 서비스이용에 대한 통계</li>
				</ul>
				<h3>3. 개인정보의 공유 및 제공</h3>
				<ul>
					<li>회사는 이용자들의 개인정보를 "2. 개인정보의 수집목적 및 이용목적"에서 고지한 범위내에서 사용하며, 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.</li>
					<li>- 이용자들이 사전에 공개에 동의한 경우</li>
					<li>- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우</li>
				</ul>
				<h3>4. 개인정보의 취급위탁</h3>
				<ul>
					<li>회사는 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다.</li>
					<li>- 개인정보를 제공받는 자 : ㈜한국신용평가정보</li>
					<li>- 이용 목적 : 실명인증 및 본인확인</li>
					<li>- 제공하는 개인정보 항목 : 이름, 주민등록번호</li>
					<li>- 보유 및 이용 기간 : 회원가입 시 실명확인 및 본인확인, 중복가입 확인용으로 제공하는 것으로 별도로 저장 및 보유하지 않음</li>
					<li>- 개인정보를 제공받는 자 : 가입한 이동통신사</li>
					<li>- 이용 목적 : 본인 확인 및 인증</li>
					<li>- 제공하는 개인정보 항목 : 이름, 주민등록번호</li>
					<li>- 보유 및 이용 기간 : 본인 확인용으로 제공하는 것으로 별도로 저장 및 보유하지 않음</li>
				</ul>
				<h3>5. 개인정보의 보유 및 이용기간</h3>
				<ul>
					<li>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</li>
				</ul>
				<p>가. 회사 내부 방침에 의한 정보보유 사유</p>
				<ul>
					<li>- 부정이용기록 보존 이유 : 부정 이용 방지</li>
					<li>보존기간 : 1년</li>
				</ul>
				<p>나. 관련법령에 의한 정보보유 사유</p>
				<ul>
					<li>상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.</li>
					<li>- 계약 또는 청약철회 등에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
					<li>보존기간 : 5년</li>
					<li>- 대금결제 및 재화 등의 공급에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
					<li>보존기간 : 5년</li>
					<li>- 소비자의 불만 또는 분쟁처리에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률</li>
					<li>보존기간 : 3년</li>
					<li>- 본인확인에 관한 기록 보존 이유 : 정보통신망 이용촉진 및 정보보호 등에 관한 법률</li>
					<li>보존기간 : 6개월</li>
					<li>- 웹사이트 방문기록 보존 이유 : 통신비밀보호법</li>
					<li>보존기간 : 3개월</li>
				</ul>
				<h3>6. 개인정보 파기절차 및 방법</h3>
				<ul>
					<li>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다.회사의 개인정보 파기절차 및 방법은 다음과 같습니다.</li>
				</ul>
				<p>가. 파기절차</p>
				<ul>
					<li>- 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조)일정 기간 저장된 후 파기됩니다.</li>
					<li>- 동 개인정보는 법률에 의한 경우가 아니고서는 보유되는 이외의 다른 목적으로 이용되지 않습니다.</li>
				</ul>
				<p>나. 파기방법</p>
				<ul>
					<li>- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</li>
					<li>- 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</li>
				</ul>
				<h3>7. 이용자 및 법정대리인의 권리와 그 행사방법</h3>
				<ul>
					<li>- 이용자 및 법정 대리인은 언제든지 등록되어 있는 자신 혹은 당해 만 14세 미만 아동의 개인정보를 조회하거나 수정할 수 있으며, 회사의 개인정보의 처리에 동의하지 않는 경우 동의를 거부하거나 가입해지(회원탈퇴)를 요청하실 수 있습니다. 다만, 그러한 경우 서비스의 일부 또는 전부 이용이 어려울 수 있습니다.</li>
					<li>- 이용자 혹은 만 14세 미만 아동의 개인정보 조회, 수정을 위해서는 '개인정보변경'(또는 '회원정보수정' 등)을, 가입해지(동의철회)를 위해서는 "회원탈퇴"를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정 또는 탈퇴가 가능합니다.</li>
					<li>- 혹은 개인정보관리책임자에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.</li>
					<li>- 이용자가 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3 자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.</li>
					<li>- 회사는 이용자 혹은 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 "5. 개인정보의 보유 및 이용기간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</li>
				</ul>
				<h3>8. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</h3>
				<p>가. 쿠키란?</p>
				<ul>
					<li>- 회사는 개인화되고 맞춤화된 서비스를 제공하기 위해서 이용자의 정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용합니다.</li>
					<li>- 쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에게 보내는 아주 작은 텍스트 파일로 이용자 컴퓨터의 하드디스크에 저장됩니다. 이후 이용자가 웹 사이트에 방문할 경우 웹 사이트 서버는 이용자의 하드 디스크에 저장되어 있는 쿠키의 내용을 읽어 이용자의 환경설정을 유지하고 맞춤화된 서비스를 제공하기 위해 이용됩니다.</li>
					<li>-  쿠키는 개인을 식별하는 정보를 자동적/능동적으로 수집하지 않으며, 이용자는 언제든지 이러한 쿠키의 저장을 거부하거나 삭제할 수 있습니다.</li>
				</ul>
				<p>나. 회사의 쿠키 사용 목적</p>
				<ul>
					<li>이용자들이 방문한 팝콘위드코인 의 각 서비스와 개인 방송 서비스에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 편집, 이용자 규모 등을 파악하여 이용자에게 광고를 포함한 최적화된 맞춤형 정보를 제공하기 위해 사용합니다.</li>
				</ul>
				<p>다. 쿠키의 설치/운영 및 거부</p>
				<ul>
					<li>- 이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.</li>
					<li>- 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 팝콘위드코인 일부 서비스는 이용에 어려움이 있을 수 있습니다.</li>
					<li>- 쿠키 설치 허용 여부를 지정하는 방법(Internet Explorer의 경우)은 다음과 같습니다.
						<ol class="mL10 mB0">
							<li>① [도구] 메뉴에서 [인터넷 옵션]을 선택합니다.</li>
							<li>② [개인정보 탭]을 클릭합니다.</li>
							<li>③ [개인정보취급 수준]을 설정하시면 됩니다.</li>
						</ol>
					</li>
				</ul>
				<h3>9. 개인정보의 기술적/관리적 보호 대책</h3>
				<ul>
					<li>회사는 이용자들의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적/관리적 대책을 강구하고 있습니다.</li>
				</ul>
				<p>가. 비밀번호 암호화</p>
				<ul>
					<li>팝콘위드코인 회원 아이디(ID)의 비밀번호는 암호화되어 저장 및 관리되고 있어 본인만이 알고 있으며, 개인정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 한해서만 가능합니다.</li>
				</ul>
				<p>나. 해킹 등에 대비한 대책</p>
				<ul>
					<li>팝콘위드코인는 해킹이나 컴퓨터 바이러스 등에 의해 회원의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다. 개인정보의 훼손에 대비해서 자료를 수시로 백업하고 있고, 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있으며, 암호화통신 등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하고 있습니다. 그리고 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있으며, 기타 시스템적으로 보안성을 확보하기 위한 가능한 모든 기술적 장치를 갖추려 노력하고 있습니다.</li>
				</ul>
				<p>다. 취급 직원의 최소화 및 교육</p>
				<ul>
					<li>회사의 개인정보관련 취급 직원은 담당자에 한정시키고 있고 이를 위한 별도의 비밀번호를 부여하여 정기적으로 갱신하고 있으며, 담당자에 대한 수시 교육을 통하여 팝콘위드코인개인정보취급방침의 준수를 항상 강조하고 있습니다.</li>
				</ul>
				<p>라. 개인정보보호전담기구의 운영</p>
				<ul>
					<li>그리고 사내 개인정보보호전담기구 등을 통하여 팝콘위드코인 개인정보취급방침의 이행사항 및 담당자의 준수여부를 확인하여 문제가 발견될 경우 즉시 수정하고 바로 잡을 수 있도록 노력하고 있습니다.</li>
					<li>단, 이용자 본인의 부주의나 인터넷상의 문제로 ID, 비밀번호, 주민등록번호 등 개인정보가 유출되어 발생한 문제에 대해 회사는 일체의 책임을 지지 않습니다.</li>
				</ul>
				<h3>10. 개인정보관리책임자 및 담당자의 연락처</h3>
				<ul>
					<li>귀하께서는 회사의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자 혹은 담당부서로 신고하실 수 있습니다. 회사는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
						<ul class="mL15 mB0">
							<li class="mT5">개인정보/청소년보호 관리 책임자</li>
							<li>이름 : 신종성</li>
							<li>소속 : 플랫폼사업부</li>
							<li>E-mail: nabi0152@redburn.co.kr</li>
							<li class="mT5">개인정보/청소년보호 관리 담당자</li>
							<li>이름 : 지태홍</li>
							<li>소속 : 서비스전략사업부</li>
							<li>E-mail: jdclub11@redburn.co.kr</li>
						</ul>
					</li>
					<li>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</li>
					<li>- 개인정보침해신고센터 (www.118.or.kr / 118)</li>
					<li>- 정보보호마크인증위원회 (www.eprivacy.or.kr / 02-580-0533~4)</li>
					<li>- 대검찰청 첨단범죄수사과 (www.spo.go.kr / 02-3480-2000)</li>
					<li>- 경찰청 사이버테러대응센터 (www.ctrc.go.kr / 02-392-0330)</li>
				</ul>
				<h3>11. 기타</h3>
				<ul>
					<li>팝콘위드코인에 링크되어 있는 웹사이트들이 개인정보를 수집하는 행위에 대해서는 본 "팝콘위드코인 개인정보취급방침"이 적용되지 않음을 알려 드립니다. 또한 팝콘위드코인모바일서비스에서의 개인정보 보호에 대한 상세한 내용은 "팝콘위드코인모바일 개인정보보호 정책"에서 확인하실 수 있습니다.</li>
				</ul>
				<h3>12. 고지의 의무</h3>
				<ul>
					<li>현 개인정보취급방침 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일전부터 홈페이지의 '공지사항'을 통해 고지할 것입니다. 다만, 개인정보의 수집 및 활용, 제3자 제공 등과 같이 이용자 권리의 중요한 변경이 있을 경우에는 최소 30일 전에 고지합니다.</li>
					<li>- 공고일자 : 2012년 10월 09일</li>
					<li>- 시행일자 : 2012년 10월 09일</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mT15 mB15 tac">
		<input type="button" value="닫기" class="btn-basic enter popCancel">
	</div>
</div>
<!-- /개인정보취급방침 레이어팝업 -->


<form name="vnoform" method="post">

	<input type="hidden" id="enc_data" name="enc_data">

	<input type="hidden" name="param_r1" value="">
	<input type="hidden" name="param_r2" value="">
	<input type="hidden" name="param_r3" value="">
</form>


<form name="danalResultForm" method="post">

	<input type="hidden" name="dTID" id="dTID" value="" />
	<input type="hidden" name="dCI" id="dCI" value="" />
	<input type="hidden" name="dDI" id="dDI" value="" />
	<input type="hidden" name="dNAME" id="dNAME" value="" />
	<input type="hidden" name="dIDEN" id="dIDEN" value="" />

	<input type="hidden" name="danalCheck" value="" />
	<input type="hidden" name="dPCom" id="dPCom" value="" />
	<input type="hidden" name="dPNum" id="dPNum" value="" />
</form>

<!-- 모빌리언스 본인인증 처리폼 -->
<form name="mobilResultForm" method="post">
	<input type="hidden" name="Name" id="Name" value="" />
	<input type="hidden" name="No" id="No" value="" />
	<input type="hidden" name="Commid" id="Commid" value="" />
	<input type="hidden" name="Socialno" id="Socialno" value="" />
	<input type="hidden" name="Sex" id="Sex" value="" />
	<input type="hidden" name="Foreigner" id="Foreigner" value="" />
	<input type="hidden" name="Ci" id="Ci" value="" />
	<input type="hidden" name="Di" id="Di" value="" />
	<input type="hidden" name="Mobilid" id="Mobilid" value="" />
	<input type="hidden" name="mobilCheck" id="mobilCheck" value="1" />
</form>
<!-- 모빌리언스 본인인증 처리폼 //-->

</body>
</html>
