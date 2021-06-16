// 레벨팝업 element
function levelupPop(lv){
    var levelPop = "";
        levelPop += "<div class='lv_popup_wrap'>";
        levelPop += "   <div class='lv_popup_dim' onClick='lvupPopClose();'></div>";
        levelPop += "   <div class='lv_popup'>";
        levelPop += "       <div class='inner'>";
        levelPop += "           <div class='lvup_info'>";
        levelPop += "               <h3>LEVEL UP!</h3>";
        levelPop += "               <p class='lvup_detail'>";
        levelPop += "                   레벨업 <strong>"+ lv +"</strong><br>";
        levelPop += "                   <strong>서비스 레벨</strong>이 올랐습니다.";
        levelPop += "                </p>";
        levelPop += "            </div>";
        levelPop += "       </div>";
        levelPop += "       <div class='pop_footer'>";
        levelPop += "            <button class='lvup_close' onClick='lvupPopClose();'>확인</button>";
        levelPop += "       </div>";
        levelPop += "   </div>";
        levelPop += "</div>";

    // 팝업 생성
    $("body").append(levelPop).addClass("none_scroll");

    var lvPop = $(".lv_popup_wrap"); // 팝업
    lvPop.fadeIn(300); // 팝업 show
}

// 팝업 닫기
function lvupPopClose(){
    var lvPop = $(".lv_popup_wrap"); // 팝업

    lvPop.fadeOut(300, function(){
        lvPop.remove();
        $("body").removeClass("none_scroll")
    });
}