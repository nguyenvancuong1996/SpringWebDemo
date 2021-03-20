<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh Sách</title>

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
								Danh Sách Theo Dõi Vắng</span> <span class="float-right btn  btn-sm">
								<a type="submit" href="/Assigment_BackEnd/theodoivang/"
								class="btn btn-primary">New</a>
							</span>
						</div>

						<table class="table table-bordered" style="margin-bottom: 0;">
							<thead class="text-center">
								<tr>
									<th>Mã Trễ</th>
									<th>Ngày Nghĩ</th>
									<th>Thời gian Nghi</th>
									<th>Lý Do</th>
									<th>An Bán trú</th>
									<th>Thao Tác</th>
								</tr>

							</thead>
							<tbody>
								<c:forEach var="item" items="${listTheoDoi}">
									<tr>
										<td>${item.tre.maTre}</td>
										<td>${item.keyTheoDoiVang.ngayNghi}</td>
										<td>${item.thoiGianNghi}</td>
										<td>${item.lyDo}</td>
										<td>${item.anBanTru}</td>

										<td class="text-right py-0 align-middle">
											<div class="btn-group btn-group-sm">

												<a href="" class="btn btn-primary"><i
													class="fas fa-pencil-alt"></i></a> <a href=""
													class="btn btn-danger"><i class="fas fa-trash"></i></a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<div class="card-footer" style="text-align: center;">

							<c:if test="${not empty message}">
								<div class="alert alert-danger" role="alert">
									<p class="text-center">${success }</p>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>

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
