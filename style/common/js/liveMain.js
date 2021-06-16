
var arrTotalPage = [];
var arrStype = [];
var arrMsex = [];

arrTotalPage.unshift(totalPage);
arrStype.unshift(stype);
arrMsex.unshift(mSex);

function outer() {
   var x = 0;
   return function() {
      return ++x;
   }
}

var increaseF = outer();

function addMore(page, stype, mSex, category) {
  /*
    if(stype === 0){
        console.log('최신순');
    }else if(stype === 1){
        console.log('랭킹순');
    }else if(stype === 2){
        console.log('시청인원순');
    }
    if(mSex === 0){
        console.log('여성');
    }else if(mSex === 1){
        console.log('남성');
    }else if(mSex === 2){
        console.log('전체');
    }
  */
  var hname = document.location.hostname;
   $.ajax({
   type: 'POST',
   url: 'live_getlist.asp',
   dataType: 'HTML',
   data: {
      page: page,
      stype:stype,
      mSex:mSex,
      category:category
   },
   success: function(data) {
      //$('#list_rank2').append(data);
    
    let scrollPosition = $(window).scrollTop();
    $('#live_list').append(data);
    $(window).scrollTop(scrollPosition);
   },
   error: function(xhr, textStatus, errorThrown) {}
   });
}

$(document).on("click",".mv_box",function(){
    var hname = document.location.hostname;
    if ($(this).data("adultcert") == "0"){
      location.href="https://"+hname+"/mypage/namecert.asp";
      return;
    }
    var thisid = this.id;

    //var $this = $(this);
    //var castId = $this.data('castid')
    var castId = $(this).attr('data-castid');

     $.ajax({
       type: 'POST',
       url: 'live_check.asp',
       dataType: 'TEXT',
       data: {
          roomId: thisid,
          castId: castId
       },
       success: function(data) {
          var jsonData = JSON.parse(data)
          var realRoom = jsonData.room_info.rstCode;
          var uSignId = jsonData.room_info.rstSignId;
          var uPartnerCode = jsonData.room_info.rstPartnerCode;

          if(realRoom === '1'){
            alert("방정보가 일치하지 않습니다.");
          }else if(realRoom === '2'){
            alert("로그인 후 이용 가능합니다.");
            location.href= SSL_HTTP+"/style/common/sign/login.asp";
          }else if(realRoom === '3'){
            alert("방정보가 일치하지 않습니다.");
          }else if(realRoom === '4'){
            alert("미성년자 입장불가 입니다.");
          }else{
            location.href="/style/common/live/live_view.asp?castId="+uSignId+"&castPartnerCode="+uPartnerCode
          }

        },

     error: function(xhr, textStatus, errorThrown) {}
      });    

  });

$(document).ready(function() {

    $("#cat_code").val(Category);

	$('#order_rank').bind('click',function(evt){
		evt.preventDefault();
		$('#sType').val('1');
		$('#mSex').val('2');    
		$('#liveListForm').submit();
    });
    
	$('#order_timeDec').bind('click',function(evt){
		evt.preventDefault();
		$("#sType").val('0');
		$("#mSex").val('2');    
		$("#liveListForm").submit();
    });
   
	$('#order_viewCnt').bind('click',function(evt){
		evt.preventDefault();
		$("#sType").val('2');
		$("#mSex").val('2');    
		$("#liveListForm").submit();
    });
   
	$('#allMc').bind('click',function(evt){
		evt.preventDefault();
		$("#sType").val(stype);
		$("#mSex").val('2');    
		$("#liveListForm").submit();
    });
    
	$('#mcFemale').bind('click',function(evt){
		evt.preventDefault();
		$("#sType").val(stype);
		$("#mSex").val('0');  
		$("#liveListForm").submit();
    });
    
	$('#mcMale').bind('click',function(evt){
		evt.preventDefault();
		$("#sType").val(stype);
		$("#mSex").val('1');    
		$("#liveListForm").submit();
    });

	//var browser;
    //((/*@cc_on!@*/false) || (document.documentMode)) ? browser = true : browser = false;
	/*
    if (!browser){
      (!(document.documentMode) && window.StyleMedia) ? browser = true : browser = false;
    }
    var bUrl = '//rsc.adpies.com/js/adpie-min.js?mediaId=5874a9757174ea4ade7c79bb&slotId=587580757174ea4ade7c79c4&adType=banner&width=970&height=90';
    var loadScript = function (url, callback) {
      var script = document.createElement('script');
      script.type = "text/javascript";

      if (script.readyState) { //IE
        script.onreadystatechange = function () {
          if (script.readyState === 'loaded' || script.readystate === 'complete') {
            script.onreadystatechange = null;
            callback();
          }
        }
      } else {
        script.onload = function () {
        callback();
        }
      }
      
      script.src = url;
      document.querySelector('.js-live-middle-banner').appendChild(script);
    }
	
    
    if (browser) {
      var script = document.createElement('script');
      script.type = "text/javascript";
      script.src = bUrl;
      script.async = true;
      document.querySelector('.js-live-middle-banner').appendChild(script);
    } else {
      loadScript(bUrl, function () {});
    }
	*/

});

function goNext() {
   var arrMaxPage = arrTotalPage[0];
   var nowPage = increaseF();
   var nextPage = nowPage + 1;
   var maxPage = arrMaxPage;
   var arrStype_ = arrStype[0];
   var arrMsex_ = arrMsex[0];

   if (nextPage <= maxPage) {
        addMore(nextPage, arrStype_, arrMsex_, Category);        
   } else {
        alert('마지막 페이지 입니다.');
   }
}