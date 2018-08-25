<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
$(".fileDrop").on("dragenter dragover", function(event) {
    event.preventDefault();
});
$(".fileDrop").on("drop", function(event) {
    event.preventDefault();
    
    var files = event.originalEvent.dataTransfer.files;
    
    var file = files[0];
    
    //console.log(file);
    var formData = new FormData();
    
    formData.append("file", file);
    // 파일전송시 processData: false, contentType: false를 반드시 해줘야함
    $.ajax({
          url: 'uploadAjax.do',
          data: formData,
          dataType: 'text',
          processData: false,
          contentType: false,
          type: 'POST',
          success: function(data){
               
               var str = "";
               
               console.log(data);
               console.log(checkImageType(data));
               
               if(checkImageType(data)){
                    str ="<div>"
                          + "<a href='displayFile?fileName="+getImageLink(data)+"'><img src='displayFile?fileName="+data+"'/>"
                          + getImageLink(data) + "</a><small data-src="+data+">X</small></div>"
               }else{
                    str = "<div><a href='displayFile?fileName="+ data +"'>"
                          + getOriginalName(data)+ "</a><small data-src="+data+">X</small></div>";
               }
               
               $(".uploadedList").append(str);
          }
    });

});
});
</script>
</head>
<body>
cp_token : ${temp.cp_token}<br/>
cp_username : ${temp.cp_username}<br/>
cp_userpass : ${temp.cp_userpass}<br/>
cp_userid :  ${temp.cp_userid}<br/>

<div class="form-group">
	<label for="exampleInputEmail1">드래그앤 드랍해주세요. <br /></label>
	<div class="fileDrop" style="background: blue; width: 500px; height: 500px;"></div>
</div>
</body>
</html>