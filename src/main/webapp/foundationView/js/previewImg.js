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
     	        width: 300,
     	        height: 300,
//     	        type: 'circle'
     	    },
     	    boundary: {
     	        width: 400,
     	        height: 400
     	    }
     	});
      
});

//$(document).ready(function(){
//    $("#input_img2").change(function(){
//
//        readURL(this);
//      
//      });
//
//      function readURL(input){
//      
//        if(input.files && input.files[0]){
//      
//          var reader = new FileReader();
//      
//          reader.onload = function (e) {
//      
//            $("#preview_img2").attr('src', e.target.result);
//            $uploadCrop2.croppie('bind', {   
//                url: e.target.result  
//            });   
//         }
//     
//         reader2.readAsDataURL(input.files[0]);
//       }
//     
//     }
//     $uploadCrop2 = $("#preview_img2").croppie({
//         enableExif: true,
//         viewport: {
//             width: 200,
//             height: 200,
//   	        type: 'circle'
//         },
//         boundary: {
//             width: 280,
//             height: 250
//         }
//     });
//
//$("#crop_img").click(function(){
//    
//});
//$("#final_img").click(function(){
//    
//});
//});