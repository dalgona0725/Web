function reloadToHttp(){
	if (window.location.protocol != "http:") {
	    location.href = location.href.replace(/^https:/, 'http:');
	}
}
function reloadToHttps(){
	if (window.location.protocol != "https:") {
	    location.href = location.href.replace(/^http:/, 'https:');
	}
}
function linkHttpToHttps(){
	if (window.location.protocol == "http:") {
		$("a[href!='']").each(function(){
			if(this.href != '#' && this.href && !$(this).data("http"))
				this.href = this.href.replace(/^http:/, 'https:');
		});
	}
}