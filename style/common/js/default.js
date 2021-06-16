//* sign alert
function signAlert(retUrl){
	var hname = document.location.hostname;
	alert('로그인 후 이용할 수 있습니다.');

	if (retUrl === '') {
		location.replace('https://'+hname+'/style/common/sign/login.asp');
	} else {
		location.replace('https://'+hname+'/style/common/sign/login.asp?retUrl='+retUrl);
	}

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

// js에서 querystring parameter를 호출한다. asp에서 request.querystring("foo")와 같은 역할
// usage var foo = $.QueryString('bar');
$.QueryString = function(name){
	var regex;
	var results;
	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	regex = new RegExp("[\\?&]" + name + "=([^&#]*)");
	results = regex.exec(location.search);

	return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
};

//js 파일 동적 호출 함수...
function loadJS(file) {
	var jsElement = document.createElement('script');
	jsElement.type = "text/javascript";
	jsElement.src = file;
	document.body.appendChild(jsElement);
}

$(document).ready(function () {
	$.fn.banner = function (config) {
		config = $.extend({
			terms: 3000
		}, config);

		var bCount = 0;
		var bCount = this.find('div.item').length;

		var $self = $(this),
			//$data = $self.find('div.item'),
			$arDt = [],
			$data = $.each($self, function (i) {
				$arDt.push($($self[i]).text());
			}),
			$ins = 0;
		var ttt = setInterval(function ($ins) {
			if ($ins === $arDt.length) {
				$ins = 0;
			} else {
				$ins++;
			}
		}, config.terms);
	};
		//jQuery 뉴스티커 확장
	$.fn.liScroll = function (settings) {
		settings = $.extend({
			travelocity: 0.07
		}, settings);

		return this.each(function() {
			var $strip = $(this);
			$strip.addClass("newsticker");
			var stripWidth = 1;

			$strip.find("li").each(function (i){
				stripWidth += $(this, i).outerWidth(true);
			});

			var $mask = $strip.wrap("<div class='mask'></div>");
			var $tickercontainer = $strip.parent().wrap("<div class='tickercontainer'></div>");
			var containerWidth = $strip.parent().parent().width();
			$strip.width(stripWidth);

			var totalTravel = stripWidth + containerWidth;
			var defTiming = totalTravel / settings.travelocity;

			function scrollnews(diffs, tempo) {
				$strip.animate({left: '-=' + diffs}, tempo, "linear", function () {
					$strip.css("left", containerWidth);
					scrollnews(totalTravel, defTiming);
				});
			}

			scrollnews(totalTravel, defTiming);
			/*
			$strip.hover(function (){
					$(this).stop();
				},
				function () {
					var offset = $(this).offset();
					var residualSpace = offset.left + stripWidth;
					var residualTime = residualSpace / settings.travelocity;
					scrollnews(residualSpace, residualTime);
				}
			);
			*/
		});
	};

	//$.get('/customer/newscroll/newsScrollMain.asp', function(dt) {
	//	$.when($('ul#ticker01').append(dt)).then($('ul#ticker01').liScroll());
	//}, "html");

	$('#frm_schMem').on('submit', function() {
		if ($.trim($('#schString').val()) === ''|| $.trim($('#schString').val()).length < 2) {
			alert('검색어를 2자이상 입력하세요');
			$('#schString').focus();
			return false;
		}
		if(wordFilter($.trim($('#schString').val()))){
			//alert('허용되지 않은 검색어 입니다.');
			$('#schString').val('');
			$('#schString').focus();
			return false;
		}

		this.submit();
	});

	$('#btn_schMem').on('click', function () {
		if ($.trim($('#schString').val()) === '' || $.trim($('#schString').val()).length < 2) {
			alert('검색어를 2자이상 입력하세요');
			$('#schString').focus();
			return false;
		}

		$('#frm_schMem').submit();
	});

	$('#schString').on('keyup', function () {
		var value = $(this).val(),
			$this = $(this),
			pattern = /[\[\]\{\}\(\)\<\>\?\|\'\`\~\!\@\#\$\%\^\&\*\-\_\=\+\,\.\;\:\"\\]/g;
			//pattern = /[a-zA-Z0-9가-힣]/gi;

		if (pattern.test(value)) {
			$this.val('');
			alert('특수문자는 입력할 수 없습니다.');
		}
		return false;
	});


});
filterWord = ['javascript','eval','onabort','oncontrolselect','onfocusin','onpaste','vbscript','innerHTML','onactivate','oncopy','onfocusout','onpropertychange','expression','charset','onafterprint','oncut','onhelp','onreadystatechange','applet','document','onafterupdate','ondataavailable','onkeydown','onreset','meta','string','onbefore','ondatasetchanged','onkeypress','onresize','xml','create','onbeforeactivate','ondatasetcomplete','onkeyup','onresizeend','blink','append','onbeforecopy','ondblclick','onlayoutcomplete','onresizestart','link','binding','onbeforecut','ondeactivate','onload','onrowenter','style','alert','onbeforedeactivate','ondrag','onlosecapture','onrowexit','script','msgbox','onbeforeeditfocus','ondragend','onmousedown','onrowsdelete','embed','refresh','onbeforepaste','ondragenter','onmouseenter','onrowsinserted','object','embed','onbeforeprint','ondragleave','onmouseleave','onscroll','iframe','ilayer','onbeforeunload','ondragover','onmousemove','onselect','frame','applet','onbeforeupdate','ondragstart','onmouseout','onselectionchange','frameset','cookie','onblur','ondrop','onmouseover','onselectstart','ilayer','javascript','onbounce','onerror','onmouseup','onstart','layer','void','oncellchange','onerrorupdate','onmousewheel','onstop','bgsound','href','onchange','onfilterchange','onmove','onsubmit','title','onclick','onfinish','onmoveend','onunload','base','oncontextmenu','onfocus','onmovestart']
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
		filterdMSG = filterdMSG.replace(RegExp(word, 'gi'), '');
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


$(document).ready(function(){
    //selectbox
    var select = $("select.select_option");
    select.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
    });

});

//공통 숫자콤마
function cmm_numCommas(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

//북마크(즐겨찾기)
function cmm_booMarkOn (bmId, bmPartner) {
	$.ajax({
		type : 'POST',
		url : '/json/bookMark_exe.asp',
		dataType : 'JSON',
		data : {
			bookMarkId : bmId,
			bookMarkPartner : bmPartner,
			dataType : '0'
		},
		success : function(result,textStatus){
			var objReturn = result;
			alert(objReturn.bookMark_exe.rstMsg);
		},
		error : function(xhr, textStatus, errorThrown){
			alert('즐겨찾기가 실패하였습니다. [ERROR]');
		}
	});
}

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
