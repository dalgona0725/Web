//* sign alert
function signAlert(){
	alert('로그인 후 이용할 수 있습니다.');
	location.replace('/sign/sign_form.asp');
}
function signAlertCh(){
	alert('로그인 후 이용할 수 있습니다.');
}
function signAlertReturn(url){
	// if (confirm('로그인 후 이용할 수 있습니다.')) {
	// 	if (url == '' || typeof url == 'undefine') {
	// 		location.replace('/sign/sign_form.asp');
	// 	}

	// 	if (url != '') {
	// 		location.replace('/sign/sign_form.asp?returnUrl='+url);
	// 	}
	// }
	alert('로그인 후 이용할 수 있습니다.');
	if (url == '' || typeof url == 'undefine') {
		location.replace('/sign/sign_form.asp');
	}
	if (url != '') {
		location.replace('/sign/sign_form.asp?returnUrl='+url);
	}
}

$.QueryString = function(name){
	var regex;
	var results;
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	regex = new RegExp("[\\?&]" + name + "=([^&#]*)");
	results = regex.exec(location.search);

	return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
};

function wordFilter(word) {
	var dic = filterWord;
	var filterdMSG = word;
	var isFilter = false;

	if(filterWord.indexOf(word.toLowerCase()) != -1){
		isFilter = true;
	}
	return isFilter;
}

function wordFilter_blank(word) {
	var dic = filterWord;
	var filterdMSG = word;

	dic.forEach(function (word) {
		filterdMSG = filterdMSG.replace(RegExp(word, 'gi'), '_');
	});
	return filterdMSG;
}
function uploadJson(fileobj,  prefilename, isdelfilepre, isimage, upfolder, maxsize, fnsuccess, fnerror, fncomplete, fname){
	if (fileobj.files[0]){
		fileobj = fileobj.files[0]
	}else{
		fileobj = ""
	}
	var formData = new FormData();
	formData.append("gFileName", fileobj);
	formData.append("fileobjname", "gFileName");
	formData.append("pFileNamePre", prefilename);
	formData.append("isDelFilePre", isdelfilepre);
	formData.append("isImage", isimage);
	formData.append("upfolder", upfolder);
	formData.append("maxFilesize", maxsize);
	if (fname)
		formData.append("fname", fname);
	return $.ajax({
		url:"/pic/uploadjson.asp",
		type:"POST",
		data:formData,
		async:false,
		cache:false,
		contentType:false,
		processData:false,
		success: fnsuccess, //{"result":{"rtncode":"0", "filename":"pFileName", "filesize":"123546","registdatecode":"20180101010101"}}
		error: fnerror,
		complete : fncomplete
	});
}

/* s: 팝콘 알림용 팝업 */
function popOn(target) {
    var win = $(window);
    var body = $('body');
    var docuHeight = win.height();

    $('html,body').css({
        height : docuHeight,
        overflow : 'hidden',
    });

    target.fadeIn(300);
}

function popOff(target) {
    $('html,body').css({
        height : 'auto',
        overflow : 'visible',
    });

    target.fadeOut(200);
}

function popModal(poptitle, poptext, popuse) {// poptitle = 팝업 타이틀, poptext = 팝업 컨텐츠, popuse = 팝업사용여부( 1이면 사용 )

    if(popuse == 1){// 1이면 팝업 사용

        if(poptitle !== ''){// 팝업 타이틀에 내용이 있을 때,
            $('.pop_header .title').html(poptitle);//타이틀 출력
        }else{// 팝업 타이틀에 내용이 없을 때,
            $('.pop_header').css({//팝업의 header를 숨김
                display: 'none',
            });
        }
        $('.pop_content .txt').html(poptext);//팝업내용 출력

        // 팝업 실행
        popOn($('.pop_wrapper'));
    }
}
/* e: 팝콘 알림용 팝업 */

$(document).ready(function(){
    //selectbox
    var select = $("select.select_option");
    select.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
    });

});

// 레벨 프로그레스바
function levelProgressBar(el) {
    var lvProgressEl = el; // 레벨 엘리먼트
    // console.log('lvProgressEl: ', lvProgressEl);

    // 레벨 이벤트
    lvProgressEl.each(function(){
        var getPercent = $(this).data('lv-percent');
        var lvProgressBar = $(this).find('.lv_progress_bar');
        var lvPercent = $(this).next('.lv_percent');
        // console.log('getPercent: ', getPercent);
        lvProgressBar.css('width',getPercent+'%');
        lvPercent.text(getPercent+'%');
    });
}

window.onload = function(){
    var el = $('.lv_progress'); // 레벨 프로그레스바 엘리먼트
    var elCheck = el.length; // 레벨 프로그레스바 엘리먼트 길이
    elCheck > 0 && levelProgressBar(el); // 레벨 프로그레스바
}

// 토스트 메세지
function toastMessage(msg,time){
    // 토스트 메세지 태그
    var toastElement = "";
    toastElement += "<div class='toast_wrap'>";
    toastElement += "   <p class='toast_msg'>" + msg + "</p>";
    toastElement += "</div>";

    // 토스트 메세지 추가
    $('body').append(toastElement);

    // 토스트 페이드 인
    $('.toast_wrap').fadeIn(300);

    // 토스트 페이드 아웃
    setTimeout(function(){
        $('.toast_wrap').fadeOut(450,function(){
            $('.toast_wrap').remove();
        });
    },time);
}

/**
<function>
	<name>isEmptyInit</name>
	<summary>값 없음 체크</summary>
	<param name="val">체크 값</param>
	<param name="defaultVal">기본 값</param>
	<create>2020/12/30</create>
	<remark>2020/12/30 양희성</remark>
</function>
*/
function isEmptyInit(val, defaultVal) {
	var ret;
	ret = val;

	if (typeof val == 'undefined' || val == null || val == '') {
		ret = defaultVal;
	}

	return ret;
}
