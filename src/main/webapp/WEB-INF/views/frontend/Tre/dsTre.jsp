<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SHow</title>

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

				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form:form action="/Assigment_BackEnd/services/find" method="post"
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input name="tenDV" type="text"
								class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2" />

							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form:form>

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
						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Ngoc
									Binh</span> <img class="img-profile rounded-circle"
								src="${context}/resources/img/undraw_profile.svg">
						</a></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

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
								Liệt Kê Thông tin trẻ</span>


							<form action="/Assigment_BackEnd/tre/timkiem/filter">
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
									<div class="field" style="margin-right: 15px">
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
									<th>Họ Tên trẻ</th>
									<th>Mã Lớp</th>
									<th>Tên Lớp</th>
									<th>Tên GV1</th>
									<th>Ngày Khai Giang</th>
									<th>Ngày Bế Giang</th>
									<th>Thao Tác</th>
								</tr>

							</thead>
							<tbody>
								<c:forEach var="item" items="${result}">
									<tr>
										<td>${item[0].maLop}</td>
										<td>${item[0].maLop}</td>
										<td>${item[0].tenLop}</td>
										<td>${item[0].tenGV1}</td>
										<td>${item[0].ngayKhaiGiang.monthValue}/${item[0].ngayKhaiGiang.year}</td>
										<td>${item[0].ngayBeGiang.monthValue}/${item[0].ngayBeGiang.year}</td>



										<td class="text-right py-0 align-middle">
											<div class="btn-group btn-group-sm">

												<a href="" class="btn btn-primary"><i
													class="fas fa-pencil-alt"></i></a>
												<button value="" id="delete" class="btn btn-danger">
													<i class="fas fa-trash"></i>
												</button>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="card-footer" style="text-align: center;"></div>

					</div>
				</div>
			</div>

			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website BinhTN1 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
	</div>
	<!-- End of Content Wrapper -->
	<%-- <%@ include file="/WEB-INF/views/templates/layouts/footer.jsp"%> --%>
	<jsp:include page="../../../views/templates/layouts/footer.jsp" />
	<!-- Bootstrap core JavaScript-->
	<script src="${context}/resources/js/jquery.min.js"></script>
	<script src="${context}/resources/js/bootstrap.min.js"></script>
	<script src="${context}/resources/js/sb-admin-2.min.js"></script>
	<script src="${context}/resources/js/sweetalert2@10.js"></script>
	<script src="${context}/resources/validate/validateService.js"></script>
</body>
</html>
