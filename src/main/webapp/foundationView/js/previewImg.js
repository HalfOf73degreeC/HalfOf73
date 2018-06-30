$(document).ready(function(){
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
       }
     
     }
     $uploadCrop = $("#preview_img").croppie({
         enableExif: true,
         viewport: {
             width: 200,
             height: 200,
   	        type: 'circle'
         },
         boundary: {
             width: 300,
             height: 250
         }
     });
});