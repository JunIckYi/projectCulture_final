function chkData(item, msg){
	if($(item).val().replace(/\s/g,"")==""){
			alert(msg+" 입력");
			$(item).val("");
			$(item).focus();
			return false;
	} else { return true;}
}

function formCheck (item, id_val ,msg){
		if($(item).val().replace(/\s/g,"")==""){
			$(id_val).html(msg+" 입력바랍니다.");
			$(item).val("");
			$(item).focus();
			return false;
	} else { return true;}
	
	
}