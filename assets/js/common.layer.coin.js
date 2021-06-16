var tmpGiftId='';
var tmpGiftPartner='';
var tmpGiftNickName='';
var regExp_coin = /^\d{1,5}/;

$(document).ready(function(){
    //* txt_giftCoin key
    $('#txt_giftCoin').bind('keydown keyup',function(evt){
        var keyCode = evt.which;
        var noKeyCode = ',9,13,16,17,18,19,20,27,32,33,34,35,36,37,38,39,40,45,46,144,145,';
        if(noKeyCode.indexOf(',' + keyCode + ',') > -1){
            evt.preventDefault();
        }
    });
});

function fuc_clearBoxData(){
    var tmpGiftId='';
    var tmpGiftPartner='';
    var tmpGiftNickName='';
    $('#giftNickName').text('');
    $('#txt_giftCoin').val('');
}

function fuc_clearCoinAlt(){
    $('#lbl_coinAlt').text('').hide();
}

function pop_giftCoinOn(giftId, giftPartner, giftNickName){
    tmpGiftId = giftId;
    tmpGiftPartner = giftPartner;
    tmpGiftNickName = giftNickName;
    $('#giftNickName').text(tmpGiftNickName);
    $('#box_giftCoin').bPopup({
        opacity:0.5,
        modalClose: false
    });
}
	
function pop_giftCoinOff(){
    fuc_clearBoxData();
    fuc_clearCoinAlt();
    $('#box_giftCoin').bPopup().close();
}

function btn_buyCoin(){
    pop_giftCoinOff();
	location.replace("/coin/coin_main.asp");
}


function btn_submitCoin(){
    fuc_clearCoinAlt();
    if( !regExp_coin.test($('#txt_giftCoin').val()) ){
        $('#lbl_coinAlt').text('선물갯수를 입력하세요.').show();
        $('#txt_giftCoin').focus();
    }else{
        giftCoin_exe();
    }
}

function giftCoin_exe(){
    var coinNm = $("#coinNm").val();
    $.ajax({
        type : 'POST',
        url : '/json/coin_use.asp',
        dataType : 'JSON',
        async : false,
        data : {
            useCoin : $('#txt_giftCoin').val(),
            giftId : $("#tmpGiftId").val(),
            giftPartner : $("#tmpGiftPartner").val()
        },
        success : function(result,textStatus){
            var objReturn = result;
            switch(objReturn.coin_use.rstCode){
                case "E" :
                    location.reload();
                    break;
                case "0" :
                    $('#txtHasCoin').text(objReturn.coin_use.hasCoin);
                    $('#lbl_coinAlt').text(objReturn.coin_use.rstMsg).show();
                    $('#btn_cancel').attr('href','javascript:location.reload();');
                    $.ajax({
                        type:'GET',
                        url:'/event/costume/coin_use.asp',
                        async: false,
                        data: {
                            useCoin:$('#txt_giftCoin').val(),
                            signId: tmpGiftId
                        }
                    });

                    break;
                default:
                    $('#lbl_coinAlt').text(objReturn.coin_use.rstMsg).show();
                    break;
            }
        },
        error : function(xhr, textStatus, errorThrown){
            $('#lbl_coinAlt').text(coinNm+'을 선물할수 없습니다.').show();
        }
    });

}