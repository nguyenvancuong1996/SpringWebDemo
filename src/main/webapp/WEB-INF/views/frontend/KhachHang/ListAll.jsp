<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thống Kê</title>

<c:set var="context" value="${pageContext.request.contextPath}" />

<!-- Custom fonts for this template-->

<link href="${context}/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
<link href="${context}/resources/resources/css/all.min.css"
	rel="stylesheet">
<script src="${context}/resources/js/fontawesome.js"></script>
<!-- Custom styles for this template-->
</head>
<body>

	<!-- Page Wrapper -->
	<div id="wrapper">
		<%@ include file="../../../views/templates/layouts/navbar.jsp"%>
		<%-- 	<jsp:include page="/WEB-INF/views/templates/layouts/navbar.jsp"/> --%>
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages --> <span
								class="badge badge-danger badge-counter">7</span>
						</a></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Nguyễn Văn Cường</span> <img class="img-profile rounded-circle"
								src="${context}/resources/img/undraw_profile.svg">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
					</div>
				</div>

				<div class="container">
					<div class="card">
						<div class="card-header">


							<!-- chu css  -->
							<span class="float-left"
								style="color: gray; display: table-cell; font-size: 26px; font-weight: 700; margin: 0; vertical-align: middle">
								Thống Kê </span>

							<form action="/Assigment_BackEnd/reports/ThongKeTheoThang/filter">
								<div class="float-right">
									<div class="field" style="margin-top: 25px">
										<span type="button" class="float-right btn  btn-sm"> <input
											type="submit" value="Tìm Kiếm" class="btn btn-primary" />

										</span>
									</div>
								</div>
								<div class=" float-right">
									<div class="field">
										<label>Chọn Năm:</label> <select class="custom-select"
											name="nam" id="nam">
											<option value="2015">2015</option>
											<option value="2016">2016</option>
											<option value="2017">2017</option>
											<option value="2018">2018</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
										</select>
									</div>
								</div>
								<div class=" float-right">
									<div class="field"  style="margin-right: 15px">
										<label>Chọn Tháng:</label> <select class="custom-select"
											name="thang" id="thang">
											<option value="1">Tháng 1</option>
											<option value="2">Tháng 2</option>
											<option value="3">Tháng 3</option>
											<option value="4">Tháng 4</option>
											<option value="5">Tháng 5</option>
											<option value="6">Tháng 6</option>
											<option value="7">Tháng 7</option>
											<option value="8">Tháng 8</option>
											<option value="9">Tháng 9</option>
											<option value="10">Tháng 10</option>
											<option value="11">Tháng 11</option>
											<option value="12">Tháng 12</option>
										</select>
									</div>
								</div>
							</form>




						</div>

						<table class="table table-bordered" style="margin-bottom: 0;">
							<thead class="text-center">
								<tr>
									<th>Mã Khách Hàng</th>
									<th>Tên Khách Hàng</th>

									<th>Mã Máy</th>
									<th>Vị Trí</th>
									<th>Trạng Thái</th>
									<th>Ngày BD SD Máy</th>
									<th>Giờ BD SD Máy</th>
									<th>Thời Gian SD Máy</th>

									<th>Mã Dịch Vụ</th>
									<th>Ngày SD DV</th>
									<th>Giờ SD DV</th>
									<th>Số Lượng</th>
									<th>Tổng Tiền</th>

								</tr>

							</thead>
							<tbody>
								<c:forEach var="item" items="${resultCustomer.getContent()}">
									<c:if test="${not empty item[1] || not empty item[2]}">
										<tr>
											<td>${item[0].maKH}</td>
											<td>${item[0].tenKH}</td>
											<c:if test="${empty item[2]}">
												<td style="color: red;">Chua Cap Nhap</td>
												<td style="color: red;">Chua Cap Nhap</td>
												<td style="color: red;">Chua Cap Nhap</td>
												<td style="color: red;">Chua Cap Nhap</td>
												<td style="color: red;">Chua Cap Nhap</td>
												<td style="color: red;">Chua Cap Nhap</td>
											</c:if>
											<c:if test="${not empty item[2]}">
												<td>${item[2].may.maMay}</td>
												<td>${item[2].may.viTri}</td>
												<td>${item[2].may.trangThai}</td>
												<td>${item[2].keySuDungMay.ngayBatDauSuDung}</td>
												<td>${item[2].keySuDungMay.gioBatDauSuDung}</td>
												<td>${item[2].thoigianSuDung}</td>
											</c:if>
											<c:if test="${empty item[1]}">
												<td style="color: red;">Chua Cap Nhap</td>
												<td style="color: red;">Chua Cap Nhap</td>
												<td style="color: red;">Chua Cap Nhap</td>
												<td style="color: red;">Chua Cap Nhap</td>
												<td style="color: red;">Chua Cap Nhap</td>
											</c:if>
											<c:if test="${not empty item[1]}">
												<td>${item[1].keySuDungDV.maDV}</td>
												<td>${item[1].keySuDungDV.ngaySuDung}</td>
												<td>${item[1].keySuDungDV.gioSuDung}</td>
												<td>${item[1].soLuong}</td>
												<td>${item[1].soLuong*item[1].dichVu.donGia}</td>
											</c:if>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>

						<div class="card-footer" style="text-align: center;">

							 <c:if test="${resultCustomer.totalPages >0}">
								<nav aria-label="Contacts Page Navigation">
									<ul class="pagination justify-content-center m-0">
										<li
											class='${(resultCustomer.number == 0 ? "disabled page-item" : "page-item")}'>
											<a class="page-link"
											href="/Assigment_BackEnd/reports/listResult?page=1">&laquo;</a>
										</li>
										<li
											class='${(resultCustomer.number == 0 ? "disabled page-item" : "page-item")}'><a
											class="page-link"
											href="/Assigment_BackEnd/reports/listResult?page=${resultCustomer.number}">&larr;</a></li>
										<c:forEach var="pageCur" begin="${pager.startPage}"
											end="${pager.endPage}" step="1" varStatus="loop">
											<li
												class='${resultCustomer.number == page - 1 ? "active page-item" : "page-item"}'>
												<a class="page-link"
												href="/Assigment_BackEnd/reports/listResult?page=${pageCur}">${loop.count}</a>
											</li>
										</c:forEach>
										<li
											class='${(resultCustomer.number + 1 == customers.totalPages ? "disabled page-item" : "page-item")}'>
											<a class="page-link"
											href="/Assigment_BackEnd/reports/listResult?page=${resultCustomer.number + 2}">&rarr;</a>
										</li>
										<li
											class='${(customers.number + 1 == customers.totalPages ? "disabled page-item" : "page-item")}'>

											<a class="page-link"
											href="/Assigment_BackEnd/reports/listResult?page=${resultCustomer.totalPages}">&raquo;</a>
										</li>

									</ul>
								</nav>
							</c:if> 
						</div>
					</div>
				</div>
			</div>

			<!-- End of Main Content -->
		</div>
	</div>
	<!-- End of Content Wrapper -->
	<%-- <%@ include file="/WEB-INF/views/templates/layouts/footer.jsp"%> --%>
	<jsp:include page="../../../views/templates/layouts/footer.jsp" />
	<!-- Bootstrap core JavaScript-->
	<script src="${context}/resources/js/jquery.min.js"></script>
	<script src="${context}/resources/js/bootstrap.min.js"></script>
	<script src="${context}/resources/js/sb-admin-2.min.js"></script>
	<script src="${context}/resources/js/script.js"></script>
</body>
</html>
