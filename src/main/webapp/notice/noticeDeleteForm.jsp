<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판</title>
</head>
 <script>
        function popup(){
            var url = "popup.html";
            var name = "popup test";
            var option = "width = 500, height = 500, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
    </script>
<body>
<center><b>글삭제</b>
<br>
<form method="POST" name="delForm"  
   action="/EatsOrder/notice/noticeDeletePro.do?pageNum=${pageNum}&notice_number=${notice_number}&category=${article.category}" > 
   
 <table border="1" align="center" cellspacing="0" cellpadding="0" width="360">
  <tr height="30">
     <td align=center>
       <b>글을 삭제하시겠습니까?</b></td>
  </tr>
 <tr height="30">
    <td align=center>
      <input type="submit" value="삭제" >
      <input type="button" value="취소" 
       onclick="document.location.href='/EatsOrder/notice/noticeList.do?pageNum=${pageNum}&category=1'">     
   </td>
 </tr>  
</table> 
</form>
</body>
</html> 
