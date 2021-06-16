function newXMLHttpRequest(){
  try { return new ActiveXObject("Msxml2.XMLHTTP"); } catch (e) {}
  try { return new ActiveXObject("Microsoft.XMLHTTP"); } catch (e) {}
  try { return new XMLHttpRequest(); } catch(e) {}

  alert("XMLHttpRequest를 지원하지 않는 브라우저입니다.");

  return null;
}

function comList(pageNo, PageSize, PageBlock, ListURL){
	xmlRequest = newXMLHttpRequest();
	xmlRequest.open("POST", ListURL, true);
	xmlRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xmlRequest.onreadystatechange = processReqChange;
	xmlRequest.send("pageNo=" + pageNo + "&PageSize=" + PageSize + "&PageBlock=" + PageBlock);
}

function processReqChange(){
	if (xmlRequest.readyState == 4){
		if (xmlRequest.status == 200){
			setList();
		}
	}
}

function setList(){
	$("#commreceList").html("");
	$("#commreceList").html(xmlRequest.responseText);
}
