<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
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
	src="https://code.iconify.design/iconify-icon/1.0.0/iconify-icon.min.js"></script>
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

.icon_refund {
	font-size: 18px;
}

.continute_purchase a:hover {
	color: white;
	text-decoration: none;
}

.continute_purchase_text {
	color: #FFC107;
}

.soluong {
	width: 45px;
}
</style>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="htsach.jsp"> <img
			src="minhkhai-logo.png" style="width: 130px;">
		</a>

		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto text-body">

				<li class="nav-item"><a class="nav-link text-danger"
					href="htsach_Controller">Trang chủ</a></li>
				<li class="nav-item"><a class="nav-link text-danger"
					href="htgio.jsp">Giỏ hàng</a></li>
				<li class="nav-item"><a class="nav-link text-danger" href="#">Thanh
						toán</a></li>
				<li class="nav-item"><a class="nav-link text-danger" href="#">Lịch
						sử mua hàng</a></li>
			</ul>

			<ul class="navbar-nav">
				<li class="nav-item"><div class="input-group ">
						<form class="form-inline ">
							<input type="search" name="txttk" class="form-control"
								placeholder="Tìm Kiếm">
							<div class="input-group-append ">
								<button name="butt" class="btn btn-danger" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</form>
					</div></li>

				<li class="nav-item"><a class="nav-link text-danger"
					href="logout.jsp"> <i class="fa-solid fa-right-to-bracket "></i>
						Logout
				</a></li>
				<li class="nav-item">
					<%
					if (session.getAttribute("dn") == null) {
					%> <a class="nav-link text-danger" href="Frmdangnhap.jsp"> <i
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
	<div class=" d-flex flex-column-reverse justify-content-center w-full p-3">

		<table class="table  table-striped mt-2">
			<thead>
				<tr class="bg-danger text-white text-center">
					<th class="col-md-1"></th>
					<th class="col-md-1">Mã sách</th>
					<th class="col-md-3">Tên sách</th>
					<th class="col-md-1">Giá</th>
					<th class="col-md-2">Số lượng</th>
					<th class="col-md-2	">Thành Tiền</th>
					<th class="col-md-2"></th>
				</tr>
			</thead>
			<form action="updateQuantity.jsp" method="post">
				<%
				giohangbo gh = (giohangbo) session.getAttribute("gio");
				if (gh != null) {
					for (giohangbean s : gh.ds) {
				%>
			
			<tbody>
				<tr>
					<td class="text-center"><input type="checkbox" name="check"
						value="<%=s.getMasach()%>" class="form-check-input"
						id="exampleCheck1"></td>
					<td class="text-center"><%=s.getMasach()%></td>
					<td class="text-center"><%=s.getTensach()%></td>
					<td class="text-center"><%=s.getGia()%></td>

					<td class="text-center">
						<div class="buttons_added">

							<!-- <input class="minus is-form" type="button" value="-"> -->
							<input aria-label="quantity" class=" mr-3 soluong input-qty"
								min="0" name="t<%=s.getMasach()%>" type="number"
								value="<%=s.getSoluong()%>">

							<!-- <input class="plus is-form" type="button" value="+"> -->

							<button name="btnsl" value="<%=s.getMasach()%>" type="submit"
								class="btn btn-outline-info">Cập Nhật</button>


						</div>
					</td>

					<td class="text-center"><%=s.getThanhtien()%></td>
					<td>
						<button value="<%=s.getMasach()%>" name="btnxoa" type="submit"
							class="btn btn-outline-danger ">
							<i class="fa-solid fa-trash pr-2"></i> Delete
						</button>

					</td>

				</tr>

			<%
			}
			}
			%>
			<tr class="bg-danger text-white text-left">
				<th></th>
				<th scope="col"></th>
				<th scope="col"></th>
				<th scope="col"></th>
				<th scope="col"></th>
				<th class="text-center" scope="col">Tổng Tiền: <%=gh.Tongtien()%></th>
				<th></th>
			</tr>
			</tbody>
			<div class="d-flex p-2 justify-content-center">
				<button name="btnxoaChon" type="submit"
					class="btn btn-outline-info mr-3 ">
					Xóa Đã Chọn
				</button>
			
				<button name="btnxoaAll" type="submit"
					class="btn btn-outline-danger mr-3 ">
					<iconify-icon class="icon_refund" icon="gridicons:refund"></iconify-icon>
					Hoàn Trả Tất Cả
				</button>

				<button type="button"
					class="btn btn-outline-warning continute_purchase ">
					<a class="continute_purchase_text" href="htsach_Controller"> <i
						class="fa-solid fa-backward"></i> Tiếp Tục Mua Hàng
					</a>
				</button>
			</div>
			</form>
		</table>
	</div>
</body>
</html>
