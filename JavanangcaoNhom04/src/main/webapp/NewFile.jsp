<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
  <table width="1000" border="1" align="center">
     <tr>
     	<td colspan="3" bgcolor="blue"> Menu ngang </td>
     </tr>
     <tr>
     	<td valign="top" width="200"> 
     	    <a href="ht.jsp"> Trang chủ</a> <hr>
            <a href="http://docbao.vn"> Đọc báo</a><hr>
            <a href="bai giang.docx"> Tải bài giảng</a> <hr>
     	</td>
     	<td width="600">
     	    <img src="zunx.jpg" width="200">
     	    Noi dung <hr>Noi dung <hr>Noi dung <hr>Noi dung <hr>Noi dung <hr>Noi dung <hr> 
     	</td>
     	<td width="200">
     	<form action="ht.jsp" method="post">
     		Tên Đăng Nhập: <input name="txtun" type="text"> <br>
     		Mật Khẩu: <input name="txtun1" type="password"> <br>
     		Tải ảnh: <input name="txtun1" type="file"> <br>
     		<input name="but1" type="submit" value="Đăng Ký">
     		Comment<br>
     		<textarea rows = "6" cols = "10">
     			Noi Dung
     		</textarea> <br>
     		Chọn Quốc Gia:
     		<select name="s1">
     			<option selected="selected"> VN </option>
     		     <option > lAO </option>
     		      <option> TQ </option>	
     		</select>
     		
     		
     	</form>
     	 
     	 
     	 </td>
     </tr>
 	 <tr>
     	<td colspan="3"> Ban quyen: .....</td>
     </tr>
  </table>
</body>
</html>

