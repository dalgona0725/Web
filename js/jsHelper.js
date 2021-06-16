var clsJsHelper = function(){
	var obj;
	var obj2;
	this.returns = true;
	this.checkSpace = function(val){
		for (var i = 0 ; i < val.length ;i++ ){
			if (val.charAt(i) == ' '){
				alert('공백은 입력할 수 없습니다.');
				return false;
			}
		}
		return true;
	}

	this.checkNull = function(val, msg){
		if (val.indexOf(" ") == 0)
		{
			alert('공백으로 시작할수 없습니다.');
			return false;
		}

		var tmp_val = val.replace( /^\s+|\s+$/g, "" )
		if (tmp_val == ""){
			alert(msg);
			return false;
		}
		return true;
	}

	this.checkLen = function(objName, nlen, mlen){
		obj = document.getElementById(objName);
		var this_length = 0;

		for (var i = 0;i < obj.value.length; i++){
			var tmp = obj.value.charAt(i);
			if (escape(tmp).length > 4){
				this_length = this_length + 2;
			}else{
				this_length++;
			}

		}
		if (this_length < nlen){
			alert('영문 '+nlen + '자 이상 입력해 주세요.');
			obj.focus();
			return false;
		}

		if (this_length > mlen){
			alert('영문 '+mlen + '자 이하로 입력해 주세요.');
			obj.focus();
			return false;
		}
		return true;
	}

	this.checkVal = function(objName, msg, space){
		obj = document.getElementById(objName);

		// 공백으로 시작 불가
		if (!this.checkNull(obj.value, msg)){
			obj.focus();
			return;
		}

		// 공백입력 불가
		if (space =="Y"){
			if (!this.checkSpace(obj.value)){
				obj.value = "";
				obj.focus();
				return;
			}
		}

		return true;
	}

	this.checkBox = function(objName, msg) {
		if ($('#'+objName).is(":checked") == false) {
			alert(msg);
			return false;
		}

		return true;
	}

	this.compare = function(objName, objName2, msg){
		obj = document.getElementById(objName);
		obj2 = document.getElementById(objName2);

		if (obj.value != obj2.value){
			alert(msg);
			obj.value = "";
			obj2.value = "";
			obj.focus();
			return false;
		}

		return true;
	}

	this.compare2 = function(objName, val, msg){
		obj = document.getElementById(objName);

		if (obj.value != val){
			alert(msg);
			return false;
		}

		return true;
	}

	this.compare3 = function(objName, val, msg){
		obj = document.getElementById(objName);
		if (obj.value == val){
			alert(msg);
			return false;
		}
		return true;
	}

	this.bigerThan = function(objName, val, msg){
		obj = document.getElementById(objName);
		if (obj.value > val){
			alert(msg);
			obj.value = "";
			obj.focus();
			return false;
		}
		return true;
	}

	this.checkIndexOf = function(objName, sChar, msg){
		obj = document.getElementById(objName);
		if (obj.value.indexOf(sChar) >= 0)
		{
			alert(msg);
			obj.focus();
			return false;
		}
		return true;
	}

	this.checkNotIndexOf = function(objName, sChar, msg){
		obj = document.getElementById(objName);
		if (obj.value.indexOf(sChar) == -1)
		{
			alert(msg);
			obj.focus();
			return false;
		}
		return true;
	}

	this.checkValNLen = function(objName, nlen, mlen, msg, space){
		obj = document.getElementById(objName);

		// 공백으로 시작 불가
		if (!this.checkNull(obj.value, msg)){
			obj.focus();
			return false;
		}

		// 공백입력 불가
		if (space == "Y"){
			if (!this.checkSpace(obj.value)){
				obj.value = "";
				obj.focus();
				return false;
			}
		}

		// 문자길이 체크
		if (!this.checkLen(objName, nlen, mlen)){
			obj.focus();
			return false;
		}

		return true;
	}

	this.checkNumber = function(objName, msg){
		obj = document.getElementById(objName);

		if (obj.value.match(/^[0-9]+$/gi) == null) {
			alert(msg);
			obj.value = "";
			obj.focus();
			return false;
		}

		return true;
	}

	this.mailExp = /[a-z0-9]{1,}@[a-z0-9-]{1,}\.[a-z0-9]{2,}/i;
	this.checkEmail = function(objName){
		obj = document.getElementById(objName);
		if (!this.mailExp.test(obj.value)){
			alert('정확한 메일주소가 아닙니다. 다시 입력해 주세요');
			obj.value= "";
			obj.focus();
			return false;
		}

		var alt_chk = 0;
		var j_chk = 0;

		for (var i = 0 ;i < obj.value.length; i++){
			if (obj.value.charAt(i) == '@')	{
				alt_chk ++;
			}
			if (obj.value.charAt(i) == "."){
				j_chk ++;
			}
		}
		if (alt_chk > 1 || j_chk > 1){
			alert('잘못된 이메일 형식입니다.');
			obj.value = "";
			obj.focus();
			return false;
		}

		if (obj.value.toLowerCase().indexOf("hanmail.net") > 0 || obj.value.toLowerCase().indexOf("daum.net") > 0){
			alert('한메일은 사용하실 수 없습니다.');
			obj.value = "";
			obj.focus();
			return false;
		}



		return true;
	}

	this.checkHttps = function(objName, msg) {
		obj = document.getElementById(objName);
		var httpsCheck;
		httpsCheck = obj.value.indexOf('https://');

		if (httpsCheck == -1) {
			httpsCheck = obj.value.indexOf('http://');
		}
		
		if (httpsCheck != 0) {
			alert(msg);
			obj.value = "";
			obj.focus();
			return false;
		}

		return true;
	}

	this.checkSpecialWord = function(objName, msg){

		obj = document.getElementById(objName)
		for (var i=0; i < obj.value.length; i++) {
			var chk = obj.value.substring(i,i+1);
			if(!chk.match(/[0-9|a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힝|\s]/)) {
				alert(msg);
				obj.value = "";
				obj.focus();
				return false;
			}
		}

		return true;
	}

	this.checkEss = function(objName, flag){
		if (document.getElementById(objName))
		{
			obj = document.getElementById(objName);
			if ((obj.value != "" && "Y" != flag) || "Y" == flag)
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		return false;
	}

}


//영문(소),숫자만 가능하게
function onlyEngNum(obj)
{
	var e1 = document.getElementById(obj);
	var num ="abcdefghijklmnopqrstuvwxyz0123456789";
	event.returnValue = true;

	for (var i=0;i<e1.value.length;i++)
	{
		//alert(num.indexOf(e1.value.charAt(i)))
		if(-1 == num.indexOf(e1.value.charAt(i)))
			event.returnValue = false;
	}

	if (!event.returnValue)
	{
		e1.value="";
		e1.focus();
		alert('영문(소문자) 및 숫자만 적어주세요');
	}
}

//숫자만 가능하게
function onlyNumber(obj)
{
	var e1 = document.getElementById(obj);
	var num ="0123456789";
	event.returnValue = true;

	for (var i=0;i<e1.value.length;i++)
	{
		//alert(num.indexOf(e1.value.charAt(i)))
		if(-1 == num.indexOf(e1.value.charAt(i)))
			event.returnValue = false;
	}

	if (!event.returnValue)
	{
		e1.value="";
		e1.focus();
		alert('숫자만 입력해 주세요.');
	}
}

//숫자와 - 만 가능하게 ex)010-1234-124
function onlyNumber2(obj)
{
	var e1 = document.getElementById(obj);
	var num ="0123456789-";
	event.returnValue = true;

	for (var i=0;i<e1.value.length;i++)
	{
		//alert(num.indexOf(e1.value.charAt(i)))
	if(-1 == num.indexOf(e1.value.charAt(i)))
	event.returnValue = false;
	}

	if (!event.returnValue)
	{
		e1.value="";
		e1.focus();
		alert('숫자와 - 만 입력해 주세요.');
	}
}

function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      oldonload();
      func();
    }
  }
}


function returnThisTextLength(objName, targetName, max){
	var obj = document.getElementById(objName);
	var target = document.getElementById(targetName);
	var this_length;
	var cutChar = '';
	var tmpChar =  '';
	var es = '';
	this_length = 0;

	if (obj.value !='')
	{
		for (var i = 0; i < obj.value.length ; i++)
		{
			cutChar = obj.value.charAt(i);
			es = escape(cutChar);
			if (escape(cutChar).length > 4) this_length += 2;
			else this_length+=1;

		}
	}
	else
	{
		target.innerHTML = '<span class="total2">' + 0 + '</span>/'+max+' bytes';
	}


	if (this_length > max) {
		this_length = 0 ;
		for (var i = 0; i < obj.value.length ; i++)
		{
			cutChar = obj.value.charAt(i);
			es = escape(cutChar);
			if (escape(cutChar).length > 4) this_length += 2;
			else this_length+=1;

			if (this_length > max)
			{
				if (escape(cutChar).length > 4) this_length -= 2;
				else this_length -= 1;
				break;
			}
			else tmpChar += cutChar;
		}

		alert('영문 '+ max + '자 / 한글 '+ parseInt(max/2) +' 자까지만 가능합니다');
		obj.value = tmpChar;
		obj.focus();
	}

	target.innerHTML = '<span class="total2">' + this_length + '</span>/'+max+' bytes';

}

function introIframeResize(h){
	IframeResize('intro_iframe', h);
}

function menuIframeResize(h){
	IframeResize('menu_iframe', h);
}

function IframeResize(obj, h){
	document.getElementById(obj).height = h;
}

function allCheck(obj, target){
	var flag = ''
	if (obj.checked)
	{
		flag = true;
	}
	else
	{
		flag = false;
	}


	if (target)
	{

		if (isNaN(target.length))
		{
			if (!target.disabled)
			{
				target.checked = flag;
			}
		}
		else
		{
			for (var i = 0; i < target.length;i++ )
			{
				if (!target[i].disabled)
				{
					target[i].checked = flag;
				}
			}
		}
	}
}

function getUniqueKey( pLength ){
	var arrStringTable    = new Array ('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','1','2','3','4','5','6','7','8','9','0');
	var intTableLen       = arrStringTable.length;
	var strMakedString  = "";
	var intLoop             = 0;

	for (intLoop = 0; intLoop < pLength  ; intLoop++) {
		strMakedString += arrStringTable[ Math.round( ( intTableLen-1 ) *Math.random() ) ];
	}

	return strMakedString;
}

function nextFocus(obj, next_obj){
	if (parseInt($("#"+obj).val().length) == parseInt($("#"+obj).attr("maxlength")))
	{

		$("#"+next_obj).focus();
	}

}

function isValidJumin(el1, el2) {
    var pattern = /^([0-9]{6})-?([0-9]{7})$/;
	var num = el1.value + el2.value;
    if (!pattern.test(num)) return false;
    num = RegExp.$1 + RegExp.$2;

	var sum = 0;
	var last = num.charCodeAt(12) - 0x30;
	var bases = "234567892345";
	for (i=0; i<12; i++) {
		if (isNaN(num.substring(i,i+1))) return false;
		sum += (num.charCodeAt(i) - 0x30) * (bases.charCodeAt(i) - 0x30);
	}
	var mod = sum % 11;
	return ((11 - mod) % 10 == last) ? true : false;
}
