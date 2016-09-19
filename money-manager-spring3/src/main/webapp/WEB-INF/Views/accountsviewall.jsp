<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Money Manager | View Accounts</title>

<!-- Bootstrap -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/font-awesome.min.css">
<!-- NProgress -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/nprogress.css">

<!-- Custom Theme Style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/custom.min.css">

<style type="text/css">
.page-title .title_left h3 {
	font-size: 20px;
	font-weight: bold;
}

.tile-stats .icon {
	right: 45px;
	top: 10px;
}

.tile-stats .count {
	font-size: 17px;
}

.tile-stats h3 {
	font-size: 14px;
}
</style>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<!-- Side Navigation Panel (Available under /WEB-INF/Fragments) -->
			<jsp:include page="../Fragments/nav.jsp" />

			<!-- Header Panel (Available under /WEB-INF/Fragments) -->
			<jsp:include page="../Fragments/header.jsp" />

			<!-- Current Page Content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Accounts</h3>
						</div>
					</div>

					<div class="clearfix"></div>

					<div class="row top_tiles">
						<c:forEach items="${accountDtoMap.accountsLst}" var="account">
							<div
								class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="tile-stats">
									<div class="icon">
										<img
											src="<%=request.getContextPath()%>/Images/Accounts/${account.mmUserAccountIcon}"
											width="50px" height="50px" />
									</div>
									<div class="count">
										<c:out value="${account.mmUserAccountName}" />
									</div>
									<h3>
										<c:out value="${account.mmUserAccountNumber}" />
									</h3>
									<p>
										<i class="fa fa-inr"></i>
										<c:out value="${account.mmUserAccountBalance}" />
									</p>
								</div>
							</div>
						</c:forEach>
					</div>

					<div class="clearfix"></div>

					<div class="page-title">
						<div class="title_left">
							<h3>Cards</h3>
						</div>
					</div>

					<div class="clearfix"></div>

					<div class="row top_tiles">
						<c:forEach items="${accountDtoMap.cardsLst}" var="card">
							<div
								class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="tile-stats">
									<div class="icon">
										<img
											src="<%=request.getContextPath()%>/Images/Accounts/${card.mmUserAccountIcon}"
											width="50px" height="50px" />
									</div>
									<div class="count">
										<c:out value="${card.mmUserAccountName}" />
									</div>
									<h3>
										<c:out value="${card.mmUserAccountNumber}" />
									</h3>
									<p>
										<i class="fa fa-inr"></i>
										<c:out value="${card.mmUserAccountBalance}" />
									</p>
								</div>
							</div>
						</c:forEach>
					</div>

					<div class="clearfix"></div>

					<div class="page-title">
						<div class="title_left">
							<h3>Loans</h3>
						</div>
					</div>

					<div class="clearfix"></div>

					<div class="row top_tiles">
						<c:forEach items="${accountDtoMap.loansLst}" var="loan">
							<div
								class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
								<div class="tile-stats">
									<div class="icon">
										<img
											src="<%=request.getContextPath()%>/Images/Accounts/${loan.mmUserAccountIcon}"
											width="50px" height="50px" />
									</div>
									<div class="count">
										<c:out value="${loan.mmUserAccountName}" />
									</div>
									<h3>
										<c:out value="${loan.mmUserAccountNumber}" />
									</h3>
									<p>
										<i class="fa fa-inr"></i>
										<c:out value="${loan.mmUserAccountBalance}" />
									</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>

			<!-- Footer Panel (Available under /WEB-INF/Fragments) -->
			<jsp:include page="../Fragments/footer.jsp" />
		</div>
	</div>

	<!-- jQuery -->
	<script src="<%=request.getContextPath()%>/JS/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="<%=request.getContextPath()%>/JS/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="<%=request.getContextPath()%>/JS/fastclick.js"></script>
	<!-- NProgress -->
	<script src="<%=request.getContextPath()%>/JS/nprogress.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="<%=request.getContextPath()%>/JS/custom.min.js"></script>
</body>
</html>