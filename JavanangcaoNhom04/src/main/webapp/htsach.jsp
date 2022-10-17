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
<title>Nhà Sách Minh Khai</title>
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
<style>
a.bg-danger {
	pointer-events: none;
}

.navbar-nav {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100%;
}


.card {
	width: 400px;
	border-radius: 10px;
	background-color: #F8F9FA;
}

.stats {
	background: #f2f5f8 !important;
	color: #000 !important;
}

.articles {
	font-size: 10px;
	color: #a1aab9;
}

.number1 {
	font-weight: 500;
}

.image .rounded{
	min-height:200px;
}


</style>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="htsach.jsp"> <img
			src="minhkhai-logo.png" style="width: 130px;">
		</a>

		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto text-body">

				<li class="nav-item"><a class="nav-link text-danger" href="htsach_Controller">Trang
						chủ</a></li>
				<li class="nav-item"><a class="nav-link text-danger" href="htgio.jsp">Giỏ
						hàng</a></li>
				<li class="nav-item"><a class="nav-link text-danger" href="#">Thanh
						toán</a></li>
				<li class="nav-item"><a class="nav-link text-danger" href="#">Lịch sử
						mua hàng</a></li>
			</ul>

			<ul class="navbar-nav">
				<li class="nav-item"><div class="input-group ">
						<form class="form-inline" method="get" action="htsach_Controller">
							<input type="search" name="txttk" class="form-control"
								placeholder="Tìm Kiếm">
							<div class="input-group-append ">
								<button name="butt" class="btn btn-danger" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</form>
					</div></li>
				
				<li class="nav-item" >
					<a class="nav-link text-danger" href="logout.jsp"> <i
						class="fa-solid fa-right-to-bracket "></i> Logout
					</a>
					
				</li>
				<li class="nav-item">
					<%
					if (session.getAttribute("dn") == null) {
					%> <a class="nav-link text-danger" href="ktdn"> <i
						class="fa-solid fa-right-from-bracket"></i> Login
				</a> <%
 } else {
 %><a class="nav-link text-danger" href="Frmdangnhap.jsp"> Hi: <%=session.getAttribute("dn")%>
				</a> <%
 }
 %>
				</li>
			</ul>
		</div>
	</nav>
	<div class="row">
		<div class="col-2">
			<div class="table table-hover">
				<a
					class=" text-white text-center nav-link collapsed border-bottom bg-danger">
					<h3 class="font-weight-bold">SÁCH</h3>
				</a>
				<%
				ArrayList<loaibean> dsloai = (ArrayList<loaibean>)request.getAttribute("dsloai");
				if(dsloai != null){
				for (loaibean l : dsloai) {
				%>
				<a
					class="list-group-item list-group-item-action list-group-item-light p-3 text-danger"
					href="htsach_Controller?ml=<%=l.getMaloai()%>"> <%=l.getTenloai()%></a>
				<%
				}
				}
				%>
			</div>
		</div>

		<div class="col-8">
			<div class="row ">

				<%
				ArrayList<sachbean> dssach = (ArrayList<sachbean>)request.getAttribute("dssach");
				if(dssach != null){
				int n = dssach.size();
				for (int i = 0; i < n; i++) {
					sachbean s = dssach.get(i);
				%>
				<div class="col-6">
					<div class="container mt-5 d-flex justify-content-center">

						<div class="card p-3">

							<div class="d-flex align-items-center">

								<div class="image">
									<img src="<%=s.getAnh()%>" class="rounded" width="155" >
								</div>

								<div class="ml-3 w-100">

									<h4 class="mb-0 mt-0 "><%=s.getTensach()%></h4>
									<span>Tác giả: <%=s.getTacgia()%></span>

									<div
										class="p-2 mt-2 bg-primary d-flex justify-content-between rounded text-white stats">

										<div class="d-flex flex-column">

											<span class="articles"> Giá Bán</span> <span class="number1"><%=s.getGia() + " vnđ"%></span>

										</div>

									</div>
									<div class="button mt-2 d-flex flex-row align-items-center">
										<a
											href="giohang_Controller?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">
											<input class="btn btn-danger" name="butt" type="submit"
											value="Mua">
										</a>

									</div>
								</div>
							</div>

						</div>

					</div>
				</div>
				<%
				}
				}
				%>
			</div>
		</div>

	</div>
</body>
</html>
