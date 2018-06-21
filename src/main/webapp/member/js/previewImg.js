			    			
	    
$("#preview_img").click(function(){
	var $label = $('<label for="input_img"  style="height:1px;">').appendTo("#changePic");
    	var $buttom = $('<buttom style="position:relative; top:370px; right:0px; color: #95e1d3; font-size: 18px;font-weight:bold;width: 200px; height:50px;z-index:2; cursor:pointer;" >').appendTo($label);
    		var $span = $('<span>更改大頭貼</span>').appendTo($buttom);
    	    var input = $('<input id="input_img" accept="image/gif, image/jpeg, image/png" type="file" name="file1" style="position:relative; top:-215px; right:-600px; z-index:-2; "/>').appendTo($buttom);
    $("#input_img").change(function(){
    	
        readURL(this);
      });

      function readURL(input){
      
        if(input.files && input.files[0]){
      
          var reader = new FileReader();
      
          reader.onload = function (e) {
      
             $("#preview_img").attr('src', e.target.result);
             $uploadCrop.croppie('bind', {   
                 url: e.target.result   
             });   
          }
      
          reader.readAsDataURL(input.files[0]);
          alert(reader);
        }
      
      }
      $uploadCrop = $("#preview_img").croppie({
    	    enableExif: true,
    	    viewport: {
    	        width: 300,
    	        height: 300,
    	        type: 'circle'
    	    },
    	    boundary: {
    	        width: 400,
    	        height: 400
    	    }
    	});
});