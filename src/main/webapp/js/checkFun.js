var funlist;

jQuery(function($) {

	var xhr = new XMLHttpRequest();
	xhr.open("Get", "/HalfOf73/foundation/getFunIdcardPage", true);
	xhr.send();
	xhr.onreadystatechange = function() {
		if (xhr.status == 200 && xhr.readyState == 4) {
			funlist = JSON.parse(xhr.responseText);
					
		}
	}
});


$("#funIdcard").blur(function(){
	$("div").remove("#errorInfoFunIdcard");
	var type;
	if($("#funRegister").attr("data-type")=="register"){
		for(var i = 0; i < funlist.length; i++){
			var funIdcardBean = funlist[i];
			if(funIdcardBean.funIdcard == ($("#funIdcard").val())){
				if(funIdcardBean.funType==0){
					type = 0;
					break;
				}else{
					type = 1;	
					break;		
				}
				
			}else{				
				type = -1;
			}
		}
	}
	if(type==0){
//		若符合，解鎖鎖submit
		$(':input[type="submit"]').prop('disabled', false);
	}else if(type==1){
		$("#funIdcard").parent().append('<div id="errorInfoFunIdcard" style="position:absolute; right:5%; top:30%; z-index:2; font-size:15px; color:red;">已經申請</div>');
	    $(':input[type="submit"]').prop('disabled', true);
	}else{
		$("#funIdcard").parent().append('<div id="errorInfoFunIdcard" style="position:absolute; right:5%; top:30%; z-index:2; font-size:15px; color:red;">號碼錯誤</div>');
		$(':input[type="submit"]').prop('disabled', true);
	}
	
});


$("#funName").blur(function(){
	$("div").remove("#errorInfoFunName");
	var type;
	if($("#funRegister").attr("data-type")=="register"){
		for(var i = 0; i < funlist.length; i++){
			var funIdcardBean = funlist[i];
			if(funIdcardBean.funName == ($("#funName").val())){
				if(funIdcardBean.funType==0){
					type = 0;
					break;
				}else{
					type = 1;	
					break;		
				}
				
			}else{				
				type = -1;
			}
		}
	}
	if(type==0){
		
		$(':input[type="submit"]').prop('disabled', false);
	}else if(type==1){
		$("#funName").parent().append('<div id="errorInfoFunName" style="position:absolute; right:5%; top:30%; z-index:2; font-size:15px; color:red;">已經申請</div>');
		$(':input[type="submit"]').prop('disabled', true);
	}else{
		$("#funName").parent().append('<div id="errorInfoFunName" style="position:absolute; right:5%; top:30%; z-index:2; font-size:15px; color:red;">名稱錯誤</div>');
		$(':input[type="submit"]').prop('disabled', true);
	}
	
});

