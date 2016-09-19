<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Money Manager | Create Account</title>
		
		<!-- Bootstrap -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/font-awesome.min.css">
		<!-- NProgress -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/nprogress.css">
		
		<!-- Custom Theme Style -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/custom.min.css">
		
		<style type="text/css">
			#hideCreditLimitFieldDiv {
				display: none;
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
						<div class="row">
							<!-- filter criteria -->
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="x_panel">
									<div class="x_title">
										<h2>New Account <small></small></h2>
										
										<ul class="nav navbar-right panel_toolbox">
											<li><a class="collapse-link" id="viewTxnsCollapseLink"><i class="fa fa-chevron-up"></i></a></li>
											
											<li class="dropdown">
												<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
													<i class="fa fa-wrench"></i></a>
												
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Settings 1</a></li>
													<li><a href="#">Settings 2</a></li>
												</ul>
											</li>
											
											<li><a class="close-link"><i class="fa fa-close"></i></a></li>
										</ul>
										
										<div class="clearfix"></div>
									</div>
									
									<div class="x_content">
										<br/>
										
										<form:form action="accountsnew" method="post" modelAttribute="newAccountModel" 
													cssClass="form-horizontal form-label-left">
											<div class="form-group">
												<form:label path="mmUserAccountName" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Account Name
													<span class="required">*</span>
												</form:label>
												
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:input path="mmUserAccountName" cssClass="form-control col-md-7 col-xs-12" />
												</div>
											</div>
											
											<div class="form-group">
												<form:label path="mmUserAccountNumber" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Account No 
													<span class="required">*</span>
												</form:label>
												
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:input path="mmUserAccountNumber" cssClass="form-control col-md-7 col-xs-12" />
												</div>
											</div>
											
											<div class="form-group">
												<form:label path="mmUserAccountType" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Account Type 
													<span class="required">*</span>
												</form:label>
												
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="btn-group" data-toggle="buttons">
														<form:label path="mmUserAccountType" cssClass="btn btn-default"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default">
															<form:radiobutton path="mmUserAccountType" value="savings" />&nbsp;Savings &nbsp;
														</form:label>
														<form:label path="mmUserAccountType" cssClass="btn btn-default"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default">
															<form:radiobutton path="mmUserAccountType" value="credit" />&nbsp;Credit &nbsp;
														</form:label>
														<form:label path="mmUserAccountType" cssClass="btn btn-default"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default">
															<form:radiobutton path="mmUserAccountType" value="loan" />&nbsp;Loan &nbsp;
														</form:label>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<form:label path="mmUserAccountBalance" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Account Balance 
													<span class="required">*</span>
												</form:label>
												
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:input path="mmUserAccountBalance" class="form-control col-md-7 col-xs-12" />
												</div>
											</div>
											
											<div class="form-group">
												<form:label path="mmUserAccountLimit" cssClass="control-label col-md-3 col-sm-3 col-xs-12">Credit Limit 
													<span class="required">*</span>
												</form:label>
												
												<div class="col-md-6 col-sm-6 col-xs-12">
													<form:input path="mmUserAccountLimit" class="form-control col-md-7 col-xs-12" />
												</div>
											</div>
											
											<div class="ln_solid"></div>
											
											<div class="form-group">
												<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
													<a href="accounts/viewall" class="btn btn-primary">Cancel</a>
													<input type="submit" class="btn btn-success" value="Submit">
												</div>
											</div>
										</form:form>
									</div>
								</div>
							</div>
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
		
		<script>
			$(document).ready(function() {
				// 'Account Type' field CHANGE handler
				$("input[name='accountType']").change(function() {
					if ($("input[name='accountType']:checked").val() == 'Loans') {
						$("#hideCreditLimitFieldDiv").slideUp();
						$(".accountCreditLimitClass").val(0);
					} 
					else if ($("input[name='accountType']:checked").val() == 'Accounts') {
						$("#hideCreditLimitFieldDiv").slideUp();
						$(".accountCreditLimitClass").val(0);
					} 
					else if ($("input[name='accountType']:checked").val() == 'Cards') {
						$("#hideCreditLimitFieldDiv").slideDown();
						// $(".accountCreditLimitClass").val(" ");
					}
				});
				
				// 'SUBMIT' button CLICK handler (Validating ACCOUNT NAME FIELD)
				$("#submit").click(function() {
					var accName = $("#accountName").val();
					var num = new RegExp("[0-9]");
					
					if (accName == "" || accName == 0) {
						$("#accountNameValid").html("Account Name can't be blank");
						return false;
					} 
					else if (num.test(accName)) {
						$("#accountNameValid").html("Account Name can't be Number");
						return false;
					} 
					else {
						$("#accountNameValid").html(" ");
						return true;
					}
				});
				
				// 'SUBMIT' button CLICK handler (Validating ACCOUNT NO FIELD)
				$("#submit").click(function() {
					var accNo = $("#accountNo").val();
					var num1 = new RegExp("[a-zA-Z ]");
					
					if (accNo == "") {
						$("#accountNoValid").html("Account No can't be blank");
						return false;
					} 
					else if (accNo == 0) {
						$("#accountNoValid").html("Account No can't be Zero");
						return false;
					} 
					else if (num1.test(accNo)) {
						$("#accountNoValid").html("Account No can't be Alphabet");
						return false;
					} 
					else {
						$("#accountNoValid").html(" ");
						return true;
					}
				});
				
				//accountBalanceValid
				$("#submit").click(function() {
					var accountBalanceTest;
					var accBalance = $("#accountBalance").val();
					var num1 = new RegExp("[a-zA-Z ]");

					//accountBalanceValid
					if (accBalance == "") {
						accountBalanceTest = "Account Balance can't be blank";
						document.getElementById("accountBalanceValid").innerHTML = accountBalanceTest;
						return false;
					} else if (accBalance == 0) {
						accountBalanceTest = "Account Balance can't be zero";
						document.getElementById("accountBalanceValid").innerHTML = accountBalanceTest;
						return false;
					} else if (num1.test(accBalance)) {
						accountBalanceTest = "Account Balance can't be Alphabet";
						document.getElementById("accountBalanceValid").innerHTML = accountBalanceTest;
						return false;
					} else {
						document.getElementById("accountBalanceValid").innerHTML = " ";
						return true;
					}
				});

						//accountTypeValid
						//accountCreditLimitValid
						$("#submit")
								.click(
										function() {
											var accountTypeTest;
											var accType = $(
													"input[name='accountType']:checked")
													.val();
											if (accType == null) {
												accountTypeTest = "Account Type can't be blank";
												document
														.getElementById("accountTypeValid").innerHTML = accountTypeTest;
												return false;
											} else if (accType == "Cards") {
												var accountCreditLimitTest;
												var accCreditLimit = $(
														"#accountCreditLimit")
														.val();
												var num1 = new RegExp(
														"[a-zA-Z ]");
												if (accCreditLimit == " ") {
													//alert("accCreditLimit step 1")
													accountCreditLimitTest = "Credit Limit can't be blank";
													document
															.getElementById("accountCreditLimitValid").innerHTML = accountCreditLimitTest;
													return false;
												} else if (accCreditLimit == 0) {
													//alert("accCreditLimit step 2")
													accountCreditLimitTest = "Credit Limit can't be Zero";
													document
															.getElementById("accountCreditLimitValid").innerHTML = accountCreditLimitTest;
													return false;
												} else if (num1
														.test(accCreditLimit)) {
													accountCreditLimitTest = "Credit Limit   can't be Alphabet";
													document
															.getElementById("accountCreditLimitValid").innerHTML = accountCreditLimitTest;
													return false;
												} else {
													document
															.getElementById("accountCreditLimitValid").innerHTML = " ";
													return (true);
												}
											}

											else {
												document
														.getElementById("accountTypeValid").innerHTML = " ";
												return (true);

											}
										});

						/* //accountCreditLimitValid
						$("#submit").click(
						function(){
							var accountCreditLimitTest;
							var accCreditLimit = $("#accountCreditLimitClass").val();
							var num1 = new RegExp("[a-zA-Z ]");
							
							//accountCreditLimitValid
							if($("input[name='accountType']:checked").val() == 'Cards'){
								
								if( accCreditLimit == " " ) {
									accountCreditLimitTest = "Credit Limit can't be blank";
									document.getElementById("accountCreditLimitValid").innerHTML = accountCreditLimitTest;
									return false;
								}
								else if( accCreditLimit == 0 ) {
										accountCreditLimitTest = "Credit Limit can't be Zero";
										document.getElementById("accountCreditLimitValid").innerHTML = accountCreditLimitTest;
								return false;
								} else if( num1.test(accCreditLimit )) {
									accountCreditLimitTest = "Credit Limit   can't be Alphabet";
									document.getElementById("accountCreditLimitValid").innerHTML = accountCreditLimitTest;
									return false;
								}
						    }else{
								document.getElementById("accountCreditLimitValid").innerHTML = " ";
								return( true );
								}
						}); */

					});
</script>
	</body>
</html>