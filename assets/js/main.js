$(document).ready(function(){

	$('.mainBanner').flexslider({
		animation: "slide",
		controlsContainer: $(".custom-controls-container"),
		customDirectionNav: $(".custom-navigation a"),
		start: function(slider){
			$('body').removeClass('loading');
		}
	});	
	
	if(isBlockMember !== '' && isBlockReason !== ''){
		var option ="width=496,height="+popHeight+",toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,location=no,left=150,top=150";
		window.open('/popup_BlockMember.asp', '', option);		
	}

	//* btn_rollMcRank
	var $list = $('ul.bestMctop');
	var size = 450;
	var len = $list.children().length;
	var cnt = 0;

	//* btn_rollMcRank_pre
	$('#btn_rollMcRank_pre').bind('click', function(evt){
		evt.preventDefault();
		if (cnt === 0)
		{
			cnt = len-1;
			$list.css({'left': -(cnt*size)+'px'});
		}else{
			cnt--;
			$list.css({'left': -(cnt*size)+'px'});
		}
	});

	//* btn_rollMcRank_next
	$('#btn_rollMcRank_next').bind('click', function(evt){
		evt.preventDefault();
		if (cnt === len-1)
		{
			cnt=0;
			$list.css({'left': '0px'});
		}else{
			cnt++;
			$list.css({'left': -(cnt*size)+'px'});
		}
	});
	//* end
});
//* ready end