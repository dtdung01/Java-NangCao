<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<%-- <body>
<% String un = request.getParameter("un");
	String pass = request.getParameter("pass");
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Navbar</a>

		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="htsach.jsp">Trang
						chủ</a></li>
				<li class="nav-item"><a class="nav-link" href="htgio.jsp">Giỏ
						hàng</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Thanh
						toán</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Lịch sử
						mua hàng</a></li>
			</ul>

			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#"> <i
						class="fa-solid fa-right-to-bracket"></i> Logout
				</a></li>
				<li class="nav-item">
					<%
					if (session.getAttribute("dn") == null) {
					%> <a class="nav-link" href="Frmdangnhap.jsp"> <i
						class="fa-solid fa-right-from-bracket"></i> Login
				</a> <%
 				} else {
 				%><a class="nav-link" href="Frmdangnhap.jsp">
 				 Hi: <%=session.getAttribute("dn")%>
				</a> 
				<%}%>
				</li>
			</ul>
		</div>
	</nav>
  
<table  align="center">
   <tr>
     
      <td  valign="top">
	      <form action="ktdn.jsp" method="post">
	       un <input name="txtun" type="text"> <br>
	       pass <input name="txtpass" type="password"> <br>
	      <input class="btn btn-primary " name="but1" type="submit" value="Login">
	      <%if(request.getParameter("kt")!=null){
	    	  out.print("Dang nhap sai");
	      }
    	  %>
       </form>
       </td>
      
   </tr>

</table>
</body> --%>
<body class="bg-info" style="background: url(bot.jpg);
							background-position: center;
							background-size: cover;">
	<div class="container align-center mt-5">
		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-4">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">

							<div class="col-lg-12">
								<div class="p-3">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
									</div>
									<form class="user" action="ktdn" method="post">
										<div class="form-group">
											<input type="text" class="form-control form-control-user"
												name="txtun" placeholder="Username">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												name="txtpass" placeholder="Password">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input"
													id="customCheck"> <label
													class="custom-control-label" for="customCheck">Remember
													Me</label>
											</div>
										</div>
										<button name="but1" type="submit"
											class="btn btn-primary btn-user btn-block">Login</button>
										<%
										if (request.getParameter("kt") != null) {
											out.print("Đăng Nhập Sai");
										}
										%>

									</form>

									<div class="text-center">
										<a class="small" href="forgot-password.html">Forgot
											Password?</a>
									</div>
									<div class="text-center">
										<a class="small" href="register.html">Create an Account!</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>
</body>
</html>



