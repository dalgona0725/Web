//롤링 공지사항
$(document).ready(function(){
    var height =  $(".footer .notice").height();
    var num = $(".view-content li").length;
    var max = height * num;
    var move = 0;
    function noticeRolling(){
        move += height + 1;
        $(".view-content").animate({"top":-move},1000,function(){
            if( move >= max ){
                $(this).css("top",0);
                move = 0;
            };
        });
    };
    noticeRollingOff = setInterval(noticeRolling,2000);
    $(".view-content").append($(".view-content li").first().clone()); //clone을 통해 첫번째 li복사

    $('.view-content li').on('mouseenter',function(){
        clearInterval(noticeRollingOff);
    }).on('mouseleave',function(){
        noticeRollingOff = setInterval(noticeRolling,2000);
    });

    //메인 탭스크립트
    $('.main-list-tab li').click(function(){
        var tab_id = $(this).attr('data-tab');

        $('.main-list-tab li').removeClass('on');
        $(this).addClass('on');

        $('.tab-content').css("display","none");
        $("#"+tab_id).fadeIn();
    });

    //메인슬라이드
    var mainSlideType1 = $('.bxslider').bxSlider({
        auto: true,
        autoHover: true,
        touchEnabled: false,
        mode: 'fade',
        slideWidth: 740,
        controls:false,
        speed: 500,
        pause: 3000,
        infiniteLoop : true
    });
    $(document).on('mouseenter','.main-banner .bx-controls',function () {
        console.log('mouse over');
       mainSlideType1.stopAuto();
    });
    $(document).on('mouseleave','.main-banner .bx-controls',function () {
        console.log('mouse leave');
        mainSlideType1.startAuto();
    });

    //내정보 팝업
    $( '.gnb li.user' ).click(function() {
            $( '.popup-my-info' ).toggle();
        }
    );

    //서브페이지 탭 스크립트
    $('.tab-type01 li').click(function(){
        var tab_id = $(this).attr('data-tab');

        $('.tab-type01 li').removeClass('on');
        $(this).addClass('on');

        $('.list-content').css("display","none");
        $("#"+tab_id).css("display","block");
    });

    //셀렉트 박스 옵션선택
    var select = $("select.select-opt");
    select.change(function(){
        var select_name = $(this).children("option:selected").text();
        $(this).siblings("label").text(select_name);
    });

    //자주 묻는 질문
    $('.qna li').click(function(){
        if($(this).children('.answer').is(":visible")){
            $(this).children('.answer').slideUp();
        } else {
            $('.qna .answer').slideUp();
            $(this).children('.answer').slideDown();
        }
    });
});
