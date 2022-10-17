<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="test.jsp" method="post">
 		 <input name="txttk" type="text"> <br>
  		 <input name="butt" type="submit" value="Tong">
	</form>
	<%
		String nn = request.getParameter("txttk");
		//neu chua tap bien session
		if(session.getAttribute("ss") ==null)
			session.setAttribute("ss", (int) 0);
		if(nn!=null){
			int n = Integer.parseInt(nn);
		//b1: gan bien session cho bien
			int s =(int)session.getAttribute("ss");
		//b2: thay doi bien
			s=n;
		//b3: luu bien ao session
			session.setAttribute("ss", s);
			//out.print("Tong: "+s);
		}
	%>
</body>
</html>